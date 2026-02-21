---
layout: post
title: "SOAP vs REST"
date: 2026-02-22 10:00:00 +0000
---

# SOAP vs REST

## SOAP

- Performace: Lower. 
    - It only supports XML. XML is verbose. 
    - When transist, it consume more bandwidth. 
    - When parsing, it requires more CPU and memory. 
    - Lack of HTTP native cache (via Cache-control). 
    - Can be statefull. It adds more complexity in manage and scale horizontally across multiple servers. REST is stateless.

- Security: More secure (at message level - data is secured even if the transport is not). 

    - Confidentialy: message is encrypted (partially)
    - Integrity: digital signature ensure message is not tampered during transit
    - Flexible authentication: support various type of credentials: X.509 Certificates, SAML Assertions, Kerberos Tickets, Username & credential
    - Replay protection: using timestamp & nonce within the security headers

- Development & maintenance challenge:
    - Tight coupling: relie on tools, code generator to handle XML
    - Learning curve: developer need to understand complex standards: WSDL, WS*-specifications, XML schema