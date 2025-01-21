// lib/core/di/injection_container.dart
import 'package:get_it/get_it.dart';
import 'package:yozil_business/data/data.dart';
import 'package:yozil_business/domain/domain.dart';
import 'package:yozil_business/presentation/bloc/auth/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Data Sources
  sl.registerLazySingleton<AuthRemoteSource>(
    () => AuthRemoteSourceImpl(),
  );

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sl<AuthRemoteSource>(),
    ),
  );

  // Use Cases
  sl.registerLazySingleton(
    () => LoginUsecase(sl()),
  );

  sl.registerLazySingleton(
    () => RegisterUsecase(sl()),
  );

  sl.registerLazySingleton(
    () => LogoutUsecase(sl()),
  );

  sl.registerLazySingleton(
    () => GetCurrentUserUsecase(sl()),
  );

  sl.registerLazySingleton(
    () => IsLoggedInUsecase(sl()),
  );

  // Blocs
  sl.registerFactory(
    () => AuthBloc(
      loginUsecase: sl(),
      registerUsecase: sl(),
      logoutUsecase: sl(),
      getCurrentUserUsecase: sl(),
      isLoggedInUsecase: sl(),
    ),
  );
}
