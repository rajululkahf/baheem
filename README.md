[Alyal](https://codeberg.org/rajululkahf/alyal) is a file encryption and
decryption tool based on [Băhēm](https://codeberg.org/rajululkahf/baheem).

## Overview

This paper proposes Băhēm;  a symmetric cipher that, when used with a
pre-shared secret key k, no cryptanalysis can degrade its security below
H(k) bits of entropy, even under Grover's algorithm or even if it turned
out that P = NP.

Băhēm's security is very similar to that of the one-time pad (OTP), except
that it does not require the communicating parties the inconvenient
constraint of generating a large random pad in advance of their
communication. Instead, Băhēm allows the parties to agree on a small
pre-shared secret key, such as |k| = 128 bits, and then generate their
random pads in the future as they go.

For any operation, be it encryption or decryption, Băhēm performs only 4
exclusive-or operations (XORs) per cleartext bit including its 2 overhead
bits.  If it takes a CPU 1 cycle to perform an XOR between a pair of 64 bit
variables, then a Băhēm operation takes 4 / 8 = 0.5 cycles per byte.
Further, all Băhēm's operations are independent, therefore a system with n
many CPU cores can perform 0.5 / n cpu cycles per byte per wall-clock time.

While Băhēm has an overhead of 2 extra bits per every encrypted cleartext
bit, its early single-threaded prototype implementation achieves a faster
/decryption/ than OpenSSL's ChaCha20's, despite the fact that Băhēm's
ciphertext is 3 times larger than ChaCha20's.  This supports that the 2 bit
overhead is practically negligible for most applications.

Băhēm's early prototype has a slower /encryption/ time than OpenSSL's
ChaCha20 due to its use of a true random number generator (TRNG).  However,
this can be trivially optimised by gathering the true random bits in
advance, so Băhēm gets the entropy conveniently when it runs.

Aside from Băhēm's usage as a provably-secure general-purpose symmetric
cipher, it can also be used, in some applications such as password
verification, to enhance existing hashing functions to become provably
one-way, by using Băhēm to encrypt a predefined string using the hash as
the key.  A password is then verified if its hash decrypts the Băhēm
ciphertext to retrieve the predefined string.
