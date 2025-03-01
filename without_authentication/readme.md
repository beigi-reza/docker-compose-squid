# Run Squid Proxy as Docker without authentication 

Running Squid Proxy on the internet without authentication can pose serious security and privacy risks. Here are some of the most significant dangers:


### 1. Abuse by Hackers and Attackers
Without authentication, anyone on the internet can use your proxy. This allows attackers to perform **port scans, DDoS attacks, website intrusions, and spam distribution** through your server.

### 2. Legal Liability
If someone uses your proxy for illegal activities such as phishing, illegal transactions, or hacking, your IP address may be logged, and you could face legal consequences.

### 3. Bandwidth Consumption and Server Resource Overuse
Anonymous users may generate high traffic volumes, leading to **excessive bandwidth usage, reduced server performance, and additional costs**.

### 4. Man-in-the-Middle (MITM) Attacks
If your proxy is not properly secured, attackers can use it to eavesdrop on and modify user data, especially if users are not using HTTPS.

### 5. Cache Poisoning Attacks#
Attackers can store malicious data in the proxy cache, causing subsequent users to receive altered or infected pages.

### 6. Being Blacklisted by Security Services
Internet service providers (ISPs) and security platforms identify open proxies and blacklist them, which can lead to your IP being blocked on many websites and online services.


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

in `with_authentication ` Directory Run `docker-compos.yml` Compose File


```bash
cd without_authentication
docker compose -d
```


## Test

```bash
curl -x localhost:3128 http://example.com
```


## Run As ssh tunnels
**If you really need a proxy without any authentication, I highly recommend publishing the Squid port in the 127.0.0.1 and [using ssh tunnels to connect](../useTunnle.md).**
