// NonceManager handle independent non-blocking UserOp transactions
class NonceManager {
  BigInt _nonceKey = BigInt.from(-1);

  NonceManager();

  void increment() {
    _nonceKey += BigInt.from(1);
  }

  BigInt retrieve() {
    return _nonceKey;
  }
}
