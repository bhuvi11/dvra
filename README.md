Vulnerabilities:

[![Git](https://app.soluble.cloud/api/v1/public/badges/59b010de-cafb-45a5-9c32-ea17583406e6.svg?orgId=560723739106)](https://app.soluble.cloud/repos/details/github.com/bhuvi11/dvra?orgId=560723739106)  
 
0. Sensitive info saved unencrypted

1. Parameters tampering
 - Body params tampering
 - Cookie tampering 

2. SQL Injection
    curl --data "email=a' OR '1'='1&password=a' OR '1'='1" http://localhost:3000/sessions.json

3. Coercive Parsing
 - Recursive Payloads
    curl --data @recursive.txt http://localhost:3000/sessions.json
 - Oversized Payloads
    curl --data @oversized.txt http://localhost:3000/sessions.json

4. Session Hijacking

