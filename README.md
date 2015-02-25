# marchandd/term_ssh_user_firefox

marchandd/term_ssh_user_firefox [Docker:copyright:](https://docs.docker.com/ "Docker") image

## Description

A sandbox container with last version of Mozilla Firefox ready to use from Linux or Windows host.

### Goal

Easy method to produce a light GUI containers to access to Firefox into sandbox from secured host to remote client with SSH.

### Image size

Around 500 Mb.

### References

[Marchand D. Maintainer](https://github.com/marchandd/ "Maintainer")

[Details source](https://github.com/marchandd/term_ssh_user_firefox/ "Details")

[Part of project studies](https://github.com/marchandd/docker_index/ "References")

## Build image

### Command line

:computer: `docker pull marchandd/term_ssh_user_firefox > build.log`

### Command line explanation

Search password value into build.log file to access later to container.

### Firewall

:warning: If your Firewall is enabled on the host, with default outgoing policy turned to 
deny, 
you will have to disable 22 port filtering:  
- Make a new rule for OpenSSH (22/TCP) to enable outgoing policy.

## Build container

### Command line

:computer: `docker run -d -p XXX.XXX.XXX.XXX:YYYYY:22 marchandd/term_ssh_user_firefox`

Where XXX.XXX.XXX.XXX is your IP v4 address.  
Where YYYYY is your Private port, if you doesn't know free port, try from 49200...

### Command line explanation

- Run in detached mode.
- Export port 22.

## Container usage

### SSH access

Open terminal with docker account.

:computer: `ssh -X docker@XXX.XXX.XXX.XXX -p YYYYY`

### Alias

When you are into SSH access.

:computer: `firefox`

## Explanations

### Dockerfile

- Make docker user creation and dynamic password is display into logs.
- Change config for SSH daemon.
- Give Supervisor management for OpenSSH server.
- Expose SSH port.

### Display

Make sure to have installed OpenSSH client or GUI SSH client (Putty).

### Risks

A password is used and not a certificate that could be more secure.
