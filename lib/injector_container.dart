import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ucode_mobile/core/app_bloc/app_bloc.dart';
import 'package:ucode_mobile/core/local_source/local_source.dart';
import 'package:ucode_mobile/core/platform/network_info.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:path_provider/path_provider.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  //External
  await initHive();
  sl.registerLazySingleton(
    () => Dio()
      ..interceptors.add(
        LogInterceptor(
          request: true,
          responseBody: true,
          error: true,
          requestBody: true,
        ),
      ),
  );
  sl.registerLazySingleton(() => InternetConnectionCheckerPlus());
  //Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerSingleton<LocalSource>(LocalSource(_box));
  sl.registerSingleton<AppBloc>(AppBloc());
  // Features
  // authFeature();
  // adviceFeature();
}

void adviceFeature() {
  // ///Presentation
  // sl.registerFactory(() => CategoryListBloc(getCategoryList: sl()));
  // sl.registerFactory(() => GuidBloc(sl()));
  // sl.registerFactory(() => ArticleBloc(sl()));
  //
  // ///Usecases
  // sl.registerLazySingleton<GetCategoryList>(() => GetCategoryList(sl()));
  // sl.registerLazySingleton<GetGuidList>(() => GetGuidList(sl()));
  // sl.registerLazySingleton<GetArticle>(() => GetArticle(sl()));
  //
  // ///Repositories
  // sl.registerLazySingleton<AdvicesRepository>(
  //   () => AdviceRepositoryImpl(
  //     adviceRemoteDataSource: sl(),
  //     adviceLocalDataSource: sl(),
  //     networkInfo: sl(),
  //   ),
  // );

  ///Data and Network
  // sl.registerLazySingleton<AdviceRemoteDataSource>(
  //     () => AdviceRemoteDataSourceImpl(sl()));
  // sl.registerLazySingleton<AdviceLocalDataSource>(
  //     () => AdviceLocalDataSourceImpl(_box));
}

// void authFeature() {
//   ///Presentation
//   sl.registerFactory(() => LoginBloc(signIn: sl()));
//   sl.registerFactory(() => RegisterBloc(signUp: sl()));
//
//   ///Usecases
//   sl.registerLazySingleton<SignIn>(() => SignIn(sl()));
//   sl.registerLazySingleton<SignUp>(() => SignUp(sl()));
//
//   ///Repositories
//   sl.registerLazySingleton<AuthRepository>(
//     () => AuthRepositoryImpl(
//       authRemoteDataSource: sl(),
//       authLocalDataSource: sl(),
//       networkInfo: sl(),
//     ),
//   );
//
//   ///Data and Network
//   sl.registerLazySingleton<AuthRemoteDataSource>(
//     () => AuthRemoteDataSourceImpl(
//       sl(),
//     ),
//   );
//
//   sl.registerLazySingleton<AuthLocalDataSource>(
//     () => AuthLocalDataSourceImpl(
//       _box,
//     ),
//   );
// }

Future<void> initHive() async {
  const boxName = 'ucode_mobile_box';
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}

class LogBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print(change);
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print("$bloc closed");
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print("$bloc created");
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print('${bloc.runtimeType} $event');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      print('${bloc.runtimeType} $error');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print(transition.toString());
    }
  }
}
