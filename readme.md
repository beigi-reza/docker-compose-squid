# Run Squid Proxy in Docker (docker-compose)

## Install Docker & docker-compose

Install Docker
```cmd
curl -sS https://get.docker.com/ | sh

```

Install docker-compose

```cmd
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version
```

## Run Squid Proxy

1. Clone this project 
    ```cmd
    git clone https://github.com/beigi-reza/squid-docker-compse.git
    ```
2. Run compse file
   ```
   docker-compse -f 
   ```


## Use 

You can use the HTTP/HTTPS, ...  proxies on your local devices using **port forwarding**. The following SSH command makes the HTTP proxy available to the local device and the private network it uses.

### On Windows 
  1. Run in cmd `ssh -vNL 3128:0.0.0.0:3128 root@<IP>`
  2. Go to "Settings" > "Network & internet" > "Proxy."
  3. Under "Manual proxy setup" toggle the "On" button.
  4. Fill in Server: `127.0.0.1` and port: `3128`
  5. Click Save
  
### On Linux

  1. Run in terminal `ssh -vNL 3128:0.0.0.0:3128 root@<IP>`
  2. Set `http/s_proxy` variable
   
    ```cmd
    export {http,https}_proxy="http://127.0.0.1:3128"
    export {HTTP,HTTPS}_PROXY="http://127.0.0.1:3128"
    ```



Unset on Linux 
```cmd
unset {http,https}_proxy
unset {HTTP,HTTPS}_PROXY
```
