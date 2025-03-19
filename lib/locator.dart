import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/config.dart';
import 'package:flutter_application_1/infrastructure/core/http_service.dart';
import 'package:flutter_application_1/infrastructure/item/datasource/item_remote.dart';
import 'package:flutter_application_1/infrastructure/item/repository/item_repository.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';
import 'package:flutter_application_1/infrastructure/user/repository/user_repository.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupDependencyInjection() {
  locator.registerLazySingleton(() => AppRouter());

  //CONFIG
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => CustomTheme());

  // //BLOC
  locator.registerLazySingleton(
    () => UserBloc(
      userRepository: locator<UserRepository>(),
    ),
  );

  locator.registerLazySingleton(
    () => ItemBloc(
      itemRepository: locator<ItemRepository>(),
    ),
  );
  // locator.registerLazySingleton(
  //   () => HoroscopeBloc(
  //     horoscopeRepository: locator<HoroscopeRepository>(),
  //   ),
  // );
  // locator.registerLazySingleton(
  //   () => CompatibilityBloc(
  //     compatibilityRepository: locator<CompatibilityRepository>(),
  //   ),
  // );

  // //REPOSITORY
  locator.registerLazySingleton(
    () => UserRepository(
      userRemoteDataSource: locator<UserRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => ItemRepository(
      itemRemoteDataSource: locator<ItemRemoteDataSource>(),
      userRemoteDataSource: locator<UserRemoteDataSource>(),
    ),
  );
  // locator.registerLazySingleton(
  //   () => HoroscopeRepository(
  //     horoscopeDataSource: locator<HoroscopeDataSource>(),
  //   ),
  // );
  // locator.registerLazySingleton(
  //   () => CompatibilityRepository(
  //     compatibilityDataSource: locator<CompatibilityDataSource>(),
  //   ),
  // );

  // //DATASOURCE

  locator.registerLazySingleton(() => UserRemoteDataSource());
  locator.registerLazySingleton(
      () => ItemRemoteDataSource(httpService: HttpService()));

  // locator.registerLazySingleton(
  //   () => PalmistryDataSource(
  //     palmistryData: locator<PalmistryData>(),
  //   ),
  // );
  // locator.registerLazySingleton(
  //   () => HoroscopeDataSource(
  //     horoscopeData: locator<HoroscopeData>(),
  //   ),
  // );
  // locator.registerLazySingleton(
  //   () => CompatibilityDataSource(
  //     compatibilityData: locator<CompatibilityData>(),
  //   ),
  // );
}
