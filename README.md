[Alyal](https://codeberg.org/rajululkahf/alyal) is a file encryption and
decryption tool based on [Băhēm](https://codeberg.org/rajululkahf/baheem).

## Overview

This paper proposes Băhēm;  a symmetric cipher that, when given a
random-looking key k, a true random number generator (TRNG) and a cleartext
message m to encrypt, no cryptanalysis can degrade its security below
min[H(m), H(k)] bits of entropy, even under Grover's algorithm or even if
it turned out that P = NP.

Aside from the cost of memory access and input/output processing, Băhēm is
also is highly parallelise-able, and requires only three additions and one
bit-wise XOR operation in order to encrypt or decrypt.

Its early prototype, Alyal, achieved similar run-time speeds to OpenSSL's
ChaCha20; slightly faster decryption, while slightly slower encryption when
the TRNG was prepared in a file in advance.  Future versions, with better
TRNG optimisations, should be able to enable the prototype to have faster
run-time for both, encryption and decryption, alike.  Either way, Alyal is
highly practical, specially when considering its strong security guarantee.
Further speed gain is possible when Alyal utilises Băhēm's high
parallelism.
