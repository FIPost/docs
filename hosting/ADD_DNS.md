# DNS
How to add a DNS to Linux Ubuntu 20.04 server.

# Step 1
Login to your server.
```zsh
ssh ubuntu@123.456.78.90
```

#### Note
IP address is an example. Use your own IP addresss!

# Step 1
Change the file `hostname` to use your DNS.


```zsh
# /etc/hostname
ubuntu
```
->

```zsh
# /etc/hostname
fipost.nl
```

Then run:
```zsh
sudo hostname $(cat /etc/hostname)
``` 

Source:
- https://unix.stackexchange.com/questions/322883/how-to-correctly-set-hostname-and-domain-name

# Step 2

Change the resolver.
```zsh
vim /etc/systemd/resolved.config
```

Add `domain fipost.nl`

Result:
```zsh
#
#  systemd is free software; you can redistribute it and/or modify it
#  under the terms of the GNU Lesser General Public License as published by
#  the Free Software Foundation; either version 2.1 of the License, or
#  (at your option) any later version.
#
# Entries in this file show the compile time defaults.
# You can change settings by editing this file.
# Defaults can be restored by simply deleting this file.
#
# See resolved.conf(5) for details

[Resolve]
domain fipost.nl
#DNS=
#FallbackDNS=
#Domains=
#LLMNR=no
#MulticastDNS=no
#DNSSEC=no
#DNSOverTLS=no
#Cache=yes
#DNSStubListener=yes
...                     
```

# Step 2
127.0.0.1   hostname.domain.com hostname localhost

```zsh
# /etc/hosts
127.0.0.1 localhost
127.0.1.1 ubuntu
```

To 

```zsh
# /etc/hosts
127.0.0.1 localhost
127.0.1.1 ubuntu
```