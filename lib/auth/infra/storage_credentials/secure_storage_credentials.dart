import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:github_client/auth/infra/storage_credentials/storage_credentials.dart';
import 'package:oauth2/oauth2.dart';

class SecureStorageCredentials implements StorageCredentials {
  final FlutterSecureStorage _storage;

  SecureStorageCredentials(this._storage);

  static const _key = 'key/credentials';
  Credentials? _cachedCredentials;

  @override
  Future<Credentials?> read() async {
    if (_cachedCredentials != null) {
      return _cachedCredentials;
    }
    final json = await _storage.read(key: _key);
    if (json == null) {
      return null;
    }
    try {
      return _cachedCredentials = Credentials.fromJson(json);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(Credentials credentials) {
    _cachedCredentials = credentials;
    return _storage.write(key: _key, value: credentials.toJson());
  }

  @override
  Future<void> clear() {
    _cachedCredentials = null;
    return _storage.delete(key: _key);
  }
}
