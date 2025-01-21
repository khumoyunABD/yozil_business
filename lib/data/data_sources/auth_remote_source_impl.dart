import 'package:yozil_business/data/data.dart';

class AuthRemoteSourceImpl implements AuthRemoteSource {
  AuthRemoteSourceImpl();

  @override
  Stream<User?> authStateChanges() {
    // TODO(Khumoyun): implement authStateChanges
    throw UnimplementedError();
  }

  @override
  Future<User?> getCurrentUser() {
    // TODO(Khumoyun): implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) {
    // TODO(Khumoyun): implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO(Khumoyun): implement logout
    throw UnimplementedError();
  }

  @override
  Future<User> register(String email, String password, String name) {
    // TODO(Khumoyun): implement register
    throw UnimplementedError();
  }
}
