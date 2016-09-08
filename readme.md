# Couchbase server 
This is a docker image that installs the couchbase server 4.0.0.

More details about what's installed and how can be obtained from the Dockerfile.

## Major differences
The major differences to the official image are:

- deinstalls "curl" from the base image, because it uses the version shipping with the couchbase server


## Features

The major feature I was working on for a while is that the container has a default user and a default bucket set, so one can just start without having to do lots of configuration.

The defaults username is ```desmond```. (I just recently finished watching LOST for the second time and I like him a lot).

The default password is ```secret_password``` (Must be changed).

The default bucket is called ```sync_gateway``` .

## Bugs and notices

When the container is building there are some messages popping up. Like the following:

- "Disable huge transparent pages"
- "ulimit operation not allowed" (I am not quite sure about that one at the time)
- TERM something something, I suppose it has to do with the base image, that sets TERM to dumb

Anyways the container is working!
