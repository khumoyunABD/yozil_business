import 'package:yozil_business/data/data.dart';

class AuthRemoteSourceImpl implements AuthRemoteSource {
  AuthRemoteSourceImpl();

  @override
  Stream<User?> authStateChanges() {
    // TODO(): implement authStateChanges
    throw UnimplementedError();
  }

  @override
  Future<User?> getCurrentUser() {
    // TODO(): implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) {
    // TODO(): implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO(): implement logout
    throw UnimplementedError();
  }

  @override
  Future<User> register(String email, String password, String name) {
    // TODO(): implement register
    throw UnimplementedError();
  }
}
