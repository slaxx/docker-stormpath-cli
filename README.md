# docker-stormpath-cli
Dockerized stompath-cli interface

# Dependencies
* docker
* stormpath account key and secret (in ./apiKey.properties file). Sign up here. https://api.stormpath.com

# How to use it
* pull this repo
* download/copy your stormpath apiKey to the directory containing the Dockerfile you are building.. (this one here)
* build it. `docker build -t nameit_whatever_is_easy .`
* use it. `docker run whatever_you_named_it --help`

```
slax@slackbox:$ docker run stormpath-cli --help
Usage: stormpath [<action>] [<resource>] [options] [<attributes>...]

A command-line client for the Stormpath REST API (https://stormpath.com).

Actions:
    list     List/search resources on Stormpath
    create   Create a resource on Stormpath
    update   Update a resource on Stormpath
    delete   Remove a resource from Stormpath
    set      Set context for user/group actions
    context  Show currently used context for user/group actions
    setup    Set up credentials for accessing the Stormpath API
    unset    Deletes the current context

Resources:
    application  Application Resource
    directory    Directory Resource
    group        Group Resource
    account      Account Resource

Options:
    -h, --help                              Lists help
    -v, --verbose                           Show debugging info

    -a <key:secret>, --apikey <key:secret>  Authenticate with provided key and secret
    -k <file>, --apikeyfile <file>          Use credentials from <file>
    -L, --show-links                        Show links to related resources

List/search/create options:
    -n <name>, --name <name>                Resource name. Valid for applications, directories, grops.
    -d <desc>, --description <desc>         Resource description. Valid for applications, directories and groups.
    -q <query>, --query <query>             Custom query resource collection. Valid for all resources.
    -S <status>, --status <status>          Resource status. Enum: ENABLED, DISABLED, UNVERIFIED. Valid for accounts.
    -s <name>, --surname <name>             Surname. Valid for accounts.
    -g <name>, --given-name <name>          Given name. Valid for accounts.
    -m <name>, --middle-name <name>         Middle name. Valid for accounts.
    -e <email>, --email <email>             Email address. Valid for accounts.
    -u <username>, --username <username>    Username. Valid for accounts.
    -p <password>, --password <password>    Password. Valid for accounts.
    -G <group>..., --groups <group>...      Groups to which to add a resource. Valid for accounts.
    -R, --create-directory                  When creating an application create the directory. Valid for applications.


Specific search options are only available for resources that have matching
attributes. Option '--query' matches on substrings, but all of the other search
options require an exact match.

Deletion flags:
    -F, --force                             Don't ask confirmation before deleting the resource. Valid for all resources.

Specifying the application or directory context (for accounts and groups):
    -A <app>, --in-application <app>        Set context to application <app>
    -D <dir>, --in-directory <dir>          Set context to directory <dir>

Use json input:
    -j <json>, --json <json>                Overrides the flags and uses json for input. Valid for all resources.
    --output-json                           Overrides the default human readable output to json. Valid for all resources

For -A and -D options, the application and directory can be specified by their
name or URL.
```
