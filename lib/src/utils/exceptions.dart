class WalletAlreadyExistsException implements Exception {
  final String message;

  const WalletAlreadyExistsException(this.message);
}
