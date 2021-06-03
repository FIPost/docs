# Getting started with Microk8s on ubuntu 20.04

## 1 | Aliases
MicroK8s uses a namespaced kubectl command to prevent conflicts with any existing installs of kubectl. If you don’t have an existing install, it is easier to add an alias (append to ~/.bash_aliases) like this:

```sh
alias kubectl='microk8s kubectl'
```

```sh
source ~/.bash_aliases
```

## 2 | Enable DNS
```sh
microk8s enable dns
```

## 2 | Enable ingress
```sh
microk8s enable ingress
```

## 3 | Add .yml
Use your own ip address instead of `12.34.56.78`.

Copy the files from this directory to the server.

```sh
scp -r mydir/ipost ubuntu@12.34.56.78:/home/ubuntu/kube_config
```

## 4 | Certbot
Install Cerbot
`https://certbot.eff.org/lets-encrypt/ubuntufocal-nginx`

#### 4.4 Create cert.
Change `*.fipost.nl` with your domain.

```sh
certbot -d *.fipost.nl --manual --preferred-challenges dns certonly
```

Follow the instructions provided in the terminal. This will give you a key and tell you to add this in your DNS settings. For the domain `fipost.nl` we use <b>Transip</b>.

|Name |TTL|Type|Value|
|-----|---|----|-----|
|_acme-challenge_ |1 min.|TXT|{yourvalue}|

When it is finished you will get something like this.

```sh
IMPORTANT NOTES:
 - Congratulations! Your certificate and chain have been saved at:
   /etc/letsencrypt/live/fipost.nl/fullchain.pem
   Your key file has been saved at:
   /etc/letsencrypt/live/fipost.nl/privkey.pem
   Your certificate will expire on 2021-08-19. To obtain a new or
   tweaked version of this certificate in the future, simply run
   certbot again. To non-interactively renew *all* of your
   certificates, run "certbot renew"
 - If you like Certbot, please consider supporting our work by:
```

### 4.6 Go to dir and copy to kube_config
Create a directory named after your domain in `/home/ubuntu/kube_config/`.

```sh
mkdir fipost.nl && cd fipost.nl
```

Copy the files to the new directory for easy access.
```
sudo cp /etc/letsencrypt/live/fipost.nl/cert.pem .
```

```
sudo cp /etc/letsencrypt/live/fipost.nl/privkey.pem .
```

### Set right to read
```sh
sudo chmod a+r privkey.pem
```

### 4.7 Create Kubernetes Secret
```sh
kubectl create secret tls fipost2 \
  --cert=cert.pem \
  --key=privkey.pem
```

## 5 | Finished
Run the final command to start the service.
```sh
kubectl apply -f .
```

