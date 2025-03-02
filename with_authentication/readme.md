# Squid Proxy run as docker With Basic Authentication


## Requirement

Install Docker

```bash
curl -sS https://get.docker.com/ | sh
```

Clone Project
```bash
git clone https://github.com/beigi-reza/squid-docker-compse.git
```

## Run

1 - Create a password file 

change Directory to `with_authentication` and run `create-user.sh` 

```bash
cd with_authentication
./create-user.sh <User> #Replace <User>
```

2 -  Run `docker-compose.yml` Compose File

```bash
docker compose up -d
```


## Use 

You can use the `HTTP` proxies on your local devices.


### in Windows 
  2. Go to “Settings” > “Network & internet” > “Proxy.”
  3. Under “Manual proxy setup,” toggle the “On” button.
  4. Fill in Server : `<SERVER_IP>` and port : `3128`
  5. clik Save
  
### in Linux

Set `http_proxy` variable
   
```cmd
export {http,https}_proxy="http://<IP>:3128"
export {HTTP,HTTPS}_PROXY="http://<IP>:3128"
```



Unset in linux 
```cmd
unset {http,https}_proxy
unset {HTTP,HTTPS}_PROXY
```

Using Squid Proxy in internet with Weak Password is very dangerous and can lead to legal, security, and resource consumption issues, I recommend [using ssh tunnels to connect](../useTunnle.md).
