// lib/core/errors/failures.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server([String? message]) = ServerFailure;
  const factory Failure.cache([String? message]) = CacheFailure;
  const factory Failure.network([String? message]) = NetworkFailure;
  const factory Failure.invalidCredentials([String? message]) =
      InvalidCredentialsFailure;
  const factory Failure.unexpected([String? message]) = UnexpectedFailure;
  const factory Failure.emailAlreadyInUse([String? message]) =
      EmailAlreadyInUseFailure;
  const factory Failure.unauthenticated([String? message]) =
      UnauthenticatedFailure;
}
