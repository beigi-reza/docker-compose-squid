# Run Squid Proxy localy and Use with Tunnel

To increase security, I recommend opening the port **locally and accessing it through a tunnel**.



## Expose Port on `127.0.0.1`

to docker-compose.yml file change this line

```yml
    ports:
      - "3128:3128"
```

to This:

```yml
    ports:
      - "127.0.0.1:3128:3128"
```

Stop & Start Squid
```bash
docker-compose down
docker-compose up -d
```


## Use 
You can use the `HTTP` proxies on your local devices using **port forwarding**. The following SSH command makes the HTTP proxy available to the local device and the private network it uses.




### in Windows (Replace IP)
  1. run in cmd `ssh -vNL 3128:0.0.0.0:3128 root@<IP>`
  2. Go to “Settings” > “Network & internet” > “Proxy.”
  3. Under “Manual proxy setup,” toggle the “On” button.
  4. Fill in Server : `127.0.0.1` and port : `3128`
  5. clik Save
  
### in Linux (Replace IP)

  1. run in terminal `ssh -vNL 3128:0.0.0.0:3128 root@<IP>`
  2.  Set `http/s_proxy` variable
   
    ```bash
    export {http,https}_proxy="http://127.0.0.1:3128"
    export {HTTP,HTTPS}_PROXY="http://127.0.0.1:3128"
    ```



Unset in linux 

```bash
unset {http,https}_proxy
unset {HTTP,HTTPS}_PROXY
```
