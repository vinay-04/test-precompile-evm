// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IEdDSA {
  struct G1Point {
    uint256 x;
    uint256 y;
  }

  struct G2Point {
    uint256 x;
    uint256 y;
  }

  struct Signature {
    G1Point R;
    uint256 S;
  }

  struct PublicKey {
    G2Point A;
  }

  function verify(
    PublicKey memory publicKey,
    uint256 message,
    Signature memory signature
  ) external view returns (bool result);
}
