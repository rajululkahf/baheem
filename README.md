**Warning: terribly broken cipher**

----

[Alyal](https://codeberg.org/rajululkahf/alyal) is a file encryption and
decryption tool based on [Băhēm](https://codeberg.org/rajululkahf/baheem).

## Overview

This paper proposes Băhēm;  a symmetric cipher that, when given a
random-looking key k, a true random number generator (TRNG) and a cleartext
message m to encrypt, no cryptanalysis can degrade its security below
min[H(m), H(k)] bits of entropy, even under Grover's algorithm or even if
it turned out that P = NP.

Aside from the cost of memory access and input/output processing, Băhēm
requires only one addition per-session, and two additions and one XOR
operation per-block, in order to encrypt or decrypt, and is also highly
parallelise-able.

Despite Băhēm's 128 + 2|m| bits overhead per |m| bits cleartext, its early
prototype, Alyal, achieved similar run-time speeds to OpenSSL's ChaCha20;
slightly faster decryption, while slightly slower encryption when the TRNG
was prepared in a file in advance.  This demonstrates that Băhēm is also
practicality usable for many real-world applications.

Later implementations, with better TRNG optimisations and parallelism, must
allow the prototype an even faster run-time for both, encryption and
decryption.
