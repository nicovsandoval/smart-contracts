// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract VerificationRegistry {
  event Verified(bytes32 indexed hash, address by, uint256 date, uint256 expDate);
  event Revoked(bytes32 indexed hash, address by, uint256 date);

  struct Verification {
    // Verification date (0 means "not verified")
    uint iat;
    // Verification expiration date (0 means "never expires")
    uint exp;
  }

  // hash => attester => Verification
  mapping (bytes32 => mapping (address => Verification)) public verifications;

  function verify(bytes32 hash, uint validDays) public {
    uint exp = validDays > 0 ? block.timestamp + validDays * 1 days : 0;
    verifications[hash][msg.sender] = Verification(block.timestamp, exp);
    emit Verified(hash, msg.sender, block.timestamp, exp);
  }

  function revoke(bytes32 hash) public {
    verifications[hash][msg.sender] = Verification(0, block.timestamp);
    emit Revoked(hash, msg.sender, block.timestamp);
  }
}