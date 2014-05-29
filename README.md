# gpm-link

gpm-link is a plugin for [gpm](https://github.com/pote/gpm), the Go Package Manager.
It goal is to encapsulate any project dependency within the `.godeps` folder.
Even the current project.

It allows removing all the local import paths but mantaining control of the
`$GOPATH` and having everything encapsulated in the `.godeps` folder.

Requires [gpm v1.1.1](https://github.com/pote/gpm/releases/tag/v1.1.1) which introduces gpm plugins.

## Installation

### Manual on *nix
```bash
$ git clone git@github.com:elcuervo/gpm-link.git && cd gpm-link
$ ./configure
$ make install
```
## Usage

Once installed, gpm-link adds the following commands to gpm:

```bash
$ gpm link add alias_name [path] # This will make a symbolic link in the .godeps
                                 # folder with the given alias name to a given
                                 # path being "." the default one.
                                 # Eg: gpm link add github.com/elcuervo/minimalweather .
$ gpm link del alias_name        # Removes a current link
$ gpm link version               # Current gpm link version
$ gpm link help                  # Help message and usage
```
