# Cloudflare Tunnel (Cloudflared)

From your local docker devbox folder, run the following command to start the tunnel:

```sh
bin/run_cloudflared.sh <ip_or_dns_service:port_service>
```

Where `<ip_service>` is the ip or name of the service you want to expose. For example, to expose the `web` service, run:

```sh
bin/run_cloudflared.sh 172.16.250.10:80
```

See `IP_WEB_SERVER` to get the ip of the web server.

**Remember!**

If you want to expose a service running in your computer instead of a container, use the ip of your computer.
The container do not read "localhost" because is running in a different network (in a container)

Example: 
```
bin/run_cloudflared.sh 172.16.250.1:4321
```

See `IP_LOCAL_COMPUTER` to get the ip of the computer