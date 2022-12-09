---
title: "VPNs"
date: 2021-12-10T19:56:13-05:00
draft: false
---

# VPNs 

Windows: OpenVPN, WireGuard®

macOS: OpenVPN, IKEv2, and WireGuard

Both TCP and UDP are built on top of the Internet Protocol (IP),



TCP

-  is more concerned about accuracy
- TCP may allow you to use your VPN even if you are in a country that blocks VPNs.

UDP

- OpenVPN’s default is to use UDP simply because it is faster.

- OpenVPN traffic looks identical to traffic with HTTPS encryption, making it hard to detect

# What is a VPN?

Using OpenVPN in TLS mode can be highly effective at hiding VPN traffic  as regular HTTPS traffic, but it can be detected by the advanced deep  packet inspection (DPI) techniques used by some governments.







## How does a VPN work?

DNS is similar to a big telephone directory that maps URLs like “protonvpn.com” to their corresponding IP addresses.

every ISP in the world logs the DNS queries they process

Even if your ISP doesn’t perform the DNS lookup (for example, if you  manually typed in the IP address or used a third-party DNS service), it  can still see the DNS request because these usually are not encrypted.

your ISP can see which website you visit anyway, thanks to the fact that even if the DNS query is encrypted, the IP destination information  required to correctly route your data isn’t.

HTTPS is an encryption protocol that secures the connection between a website and your device.



Without HTTPS, your ISP can see everything you do on a website.



And what your ISP can see, so can your government.

Your ISP can see that you are connected to an IP address belonging to a  server. It won’t automatically know this is a VPN server, but it  wouldn’t take Sherlock Holmes to figure it out, since it is the only IP  address you appear to be connecting to.

because all data traveling between your device and the VPN server is encrypted. 

Our apps offer **DNS leak protection** to ensure DNS lookups are handled exclusively by Proton. **IPv6 leak protection** ensures no data is ever routed outside the VPN tunnel.

***\*What is AES-256?\****

AES is a symmetric key encryption cipher used to secure large chunks of  data at rest. AES-256 is AES implemented with a 256-bit key size, which  is its strongest setting. 

AES is approved by NIST, and the US government secures its top secret data with AES-256.

AES-256 is, indeed, very secure, but it is only one of the components required to ensure a VPN connection is secure.

A VPN protocol is the set of instructions used to establish a secure  connection between two computers (your device and the VPN server).

**OpenVPN** – A battle-tested VPN protocol that is still widely regarded as the last word when it comes to VPN security.

**IKEv2** – A more modern VPN protocol that is fast while also considered by experts to be very secure.

**WireGuard** – A very new VPN protocol that, while fast  and secure (at least in theory), is still experimental. ProtonVPN is  watching the development of WireGuard (now out of beta phase on Linux)  with great interest and has helped to fund its development.

Many VPN apps from other VPN services are also IPv4 only, and thus only  route IPv4 connections through the VPN tunnel. When an IPv6 connection  is established, the VPN app is not aware of it, and the connection is  thus routed by your OS outside the VPN tunnel.The website you have connected to can therefore see your real IPv6  address, even though you are using a VPN. This is an IPv6 leak.

ProtonVPN applications block all IPv6 traffic by default to ensure this  does not happen. This has no effect on our internet experience. 

DNS leak protection solves the problem by using firewall rules to ensure no traffic can leave your device outside the VPN tunnel.

# Which VPN protocol is the best?

A VPN protocol is usually made up of two channels: a data channel and a control channel.

The control channel is responsible for the key exchange, authentication, and parameter exchanges (like providing an IP or routes and DNS  servers).

However, for your data to pass through this secure tunnel, it must be encapsulated.

Encapsulation is when a VPN protocol takes bits of data, known as data  packets, from your Internet traffic and places them inside another  packet.

When a VPN discusses the strengths and weaknesses of its performance or  talks about a “secure VPN tunnel,” it is talking about its data channel. Once the VPN tunnel has been established, the control channel is then  tasked with maintaining the connection’s stability.

## OpenVPN

## WireGuard

## IKEv2

## PPTP

one of the older VPN protocols

developed with support from Microsoft thus, all versions of Windows and most other operating systems have native support for PPTP

It relies on PPP

**Encryption:** Microsoft’s Point-to-Point Encryption protocol ([MPPE](http://en.wikipedia.org/wiki/Microsoft_Point-to-Point_Encryption)), which uses the RSA RC4 algorithm. MPPE’s maximum strength is 128-bit keys. 

**Speed:** Because its encryption protocols do not require  much computing power (RC4 and only 128-bit keys), PPTP maintains fast  connection speeds.

## L2TP/IPSec

Layer two tunneling protocol (L2TP) was meant to replace PPTP.

can handle authentication on its own and performs UDP encapsulation

IPSec is a flexible framework that can be applied to VPNs as well as routing and application-level security.

IPSec negotiates the shared keys and authenticates the connection of a  secure control channel between your device and the server. 

IPSec then encapsulates the data. When IPSec performs this  encapsulation, it applies an authentication header and uses the  Encapsulation Security Payload (ESP).These special headers add a digital signature to each packet so  attackers cannot tamper with your data without alerting the VPN server.ESP encrypts the encapsulated data packets so that no attacker can read  them (and, depending on the settings of the VPN, also authenticates the  data packet). Once IPSec has encapsulated the data, L2TP encapsulates  that data again using UDP so that it can pass through the data channel.

IKEv2, use IPSec encryption.While generally secure, IPSec is very complex, which can lead to poor implementation.



**Encryption:** L2TP/IPSec can use either 3DES or AES encryption, although given that 3DES is now considered a weak cipher, it is rarely used.



**Speed:** L2TP/IPSec is generally slower than OpenVPN when using the same encryption strength.



**Stability:** L2TP/IPSec is not as stable as some of the more advanced VPN protocols. Its complexity can lead to frequent network drops. 



## IKEv2/IPSec

Internet key exchange version two (IKEv2) is a relatively new tunneling  protocol that is actually part of the IPSec suite itself.

there are now many open source iterations

IKEv2 sets up a control channel by authenticating a secure communication channel between your device and the VPN server using the [Diffie–Hellman key exchange](https://en.wikipedia.org/wiki/Diffie–Hellman_key_exchange) algorithm.



**Speed:** IKEv2/IPSec is faster than most VPN protocols currently available, especially ones that offer comparable security.

**Known vulnerabilities:** IKEv2**/**IPSec has no known weaknesses, and almost all IT security experts consider it to  be safe when properly implemented with Perfect Forward Secrecy. 

**Firewall ports:** UDP port 500 is used for the initial  key exchange and UDP port 4500 for NAT traversal. Because it always uses these ports, IKEv2/IPSec is easier to block than some other protocols.



**Stability:** IKEv2 / IPSec supports the Mobility and  Multihoming protocol, making it more reliable than most other VPN  protocols, especially for users that are often switching between  different WiFi networks.

**Conclusion:** Given its strong security, high speeds, and increased stability, IKEv2/IPSec is one of the best VPN protocols currently in use. 

## OpenVPN

OpenVPN uses SSL/TLS to handle its key exchange and set up its control channel,  and a unique OpenVPN protocol to handle encapsulation and the data channel.This means that both its data channel and control channel are encrypted, which makes it somewhat unique compared to other VPN protocols.



**Encryption:** OpenVPN can use any of the different cryptographic algorithms contained in the [OpenSSL](http://en.wikipedia.org/wiki/OpenSSL) library to encrypt its data, including AES, RC5, and Blowfish. OpenVPN supports 256-bit encryption.



**Speed:** When using UDP, OpenVPN maintains fast connections, although IKEv2/IPSec is generally accepted to be slightly quicker.

**Known vulnerabilities:** OpenVPN has no known  vulnerabilities as long as it is implemented with a sufficiently strong  encryption algorithm and Perfect Forward Secrecy. It is the industry  standard for VPNs concerned about data security. 

**Firewall ports:** OpenVPN can be configured to run on any UDP or TCP port, including port TCP port 443 that handles all HTTPS  traffic, making it very hard to block. 

**Stability:** OpenVPN is very stable in general and has a  TCP mode for weak or unreliable WiFi networks for extra reliability.  This extra stability comes at the price of diminished speed because of  the possibility of a TCP meltdown.

**Conclusion:** OpenVPN is one of the best VPN protocols currently in use, especially for users concerned primarily about data  security. It is secure, reliable, and open source. The only category  where it is not the best option is speed, where IKEv2/IPSec is generally slightly faster.

### WireGuard®

[WireGuard®](https://www.wireguard.com/) is an open source VPN protocol that is currently under development. Its goal is to make a much simpler and more streamlined tunneling protocol, which should lead to a faster, more efficient, more secure, and  easier-to-use VPN.

**Encryption:** WireGuard uses ChaCha20 for symmetric encryption ([RFC7539](https://tools.ietf.org/html/rfc7539)), Curve25519 for anonymous key exchange, Poly1305 for data authentication, and BLAKE2s for hashing ([RFC7693](https://tools.ietf.org/html/rfc7693)). It automatically supports Perfect Forward Secrecy.

**Speed:** WireGuard uses new, high-speed cryptographic  algorithms. This means that ChaCha20 is much simpler than AES ciphers of equal strength and nearly as fast, even though most devices now come  with instructions for AES built into their hardware. While it is  impossible to be sure until the final version is ready, WireGuard  promises to have fast connection speeds and low CPU requirements. 

**Known vulnerabilities:** WireGuard is still under  development and should be considered as an experimental protocol. It has not been subjected to the same security assessments as other VPN  protocols, so there still may be undiscovered vulnerabilities. It should only be used for tests or in situations where data security is not  critical.

**Firewall ports:** WireGuard uses UDP and can be configured to use any port. However, it does not currently support the use of TCP.

**Stability:** WireGuard is a very stable VPN protocol,  and introduces new features that other tunneling protocols do not have,  such as being able to maintain a VPN connection while changing VPN  servers or changing WiFi networks. 

**Conclusion:** While we are closely following the  development of WireGuard, it is not yet ready for implementation. Once  it has undergone a thorough security audit and there is a stable  release, WireGuard’s strong encryption, high speeds, and simplicity will make it a very competitive VPN protocol. 

OpenVPN and IKEv2/IPSec are the two protocols that the vast majority of IT security experts agree are secure.



# What is HMAC SHA-384? VPN authentication explained

**h**ashed **m**essage **a**uthentication **c**ode **s**ecure **h**ash **a**lgorithm 384 bit

Establishing that your connection is with your intended website and  protecting this connection from being tampered with are essential to  using the Internet.



A message authentication code, or MAC

The MAC is produced by a secret key and a MAC signing algorithm. A key  is just a parameter that determines the output of an algorithm.

### SHA-384

Hashing is a process that transforms a message of any size into a pseudorandom string of characters that is a fixed length.

SHA-384 (or secure hash algorithm) is one cryptographic hash function in the [SHA-2 hash family](https://en.wikipedia.org/wiki/SHA-2).

384 bits (or 48 bytes).

Here is how an HMAC works, in its simplest form. First, both the  server and the client agree to use the same cryptographic hash function  (SHA-384) and establish a shared secret key. Then, the sender combines  that shared secret key with the data being sent and creates a hash out  the combination of the two. The same shared secret key and the first  hash are then *hashed again* to get a second hash (this helps prevent certain kinds of attacks). The data and the final hash are then passed to the server.

When the client receives the hash and the message, it runs the same  combination of the message and its own version of the shared secret key  through the same HMAC algorithm. If the hashes match, that proves that  the server had the same secret key, “authenticating” the data. This also demonstrates that the message was not altered in any way by a third  party. Once the client verifies that the two hashes match, it knows the  data can be trusted.

It is important to note here that HMAC does not encrypt the data, it  simply authenticates the data’s origin and integrity. ProtonVPN uses  AES-256 to encrypt your data, keeping it private, which is then sent  alongside the HMAC. 

While there are other message authentication alternatives, and even  other MACs, like UMAC and OMAC, HMAC is one of the safest ways to  authenticate a message’s sender. Moreover, it has become almost  ubiquitous. It is used in TLS and IPSec protocols. 





