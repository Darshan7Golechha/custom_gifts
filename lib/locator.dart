import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/auth/auth_bloc.dart';
import 'package:flutter_application_1/application/chat/chat_bloc.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/application/login/login_bloc.dart';
import 'package:flutter_application_1/application/logout/logout_bloc.dart';
import 'package:flutter_application_1/application/message/message_bloc.dart';
import 'package:flutter_application_1/application/setting/setting_bloc.dart';
import 'package:flutter_application_1/application/user/user_bloc.dart';
import 'package:flutter_application_1/config.dart';
import 'package:flutter_application_1/infrastructure/auth/datasource/auth_remote.dart';
import 'package:flutter_application_1/infrastructure/auth/repository/auth_repository.dart';
import 'package:flutter_application_1/infrastructure/chat/datasource/chat_remote.dart';
import 'package:flutter_application_1/infrastructure/chat/repository/chat_repository.dart';
import 'package:flutter_application_1/infrastructure/core/datasource/storage_remote.dart';
import 'package:flutter_application_1/infrastructure/core/services/mailing_service.dart';
import 'package:flutter_application_1/infrastructure/item/datasource/item_remote.dart';
import 'package:flutter_application_1/infrastructure/item/repository/item_repository.dart';
import 'package:flutter_application_1/infrastructure/message/datasource/message_remote.dart';
import 'package:flutter_application_1/infrastructure/message/repository/message_repository.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';
import 'package:flutter_application_1/infrastructure/user/repository/user_repository.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupDependencyInjection() {
  locator.registerLazySingleton(() => AppRouter());

  //CONFIG
  locator.registerLazySingleton(() => Config());
  // locator.registerLazySingleton(() => CustomTheme());

  // //BLOC
  locator.registerLazySingleton(
    () => UserBloc(
      userRepository: locator<UserRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => LogoutBloc(
      authRepository: locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => SettingBloc(
      userRepository: locator<UserRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => MessageBloc(
      messageRepository: locator<MessageRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => ChatBloc(
      chatRepository: locator<ChatRepository>(),
    ),
  );

  locator.registerLazySingleton(
    () => ItemBloc(
      itemRepository: locator<ItemRepository>(),
    ),
  );
  locator.registerLazySingleton(() => AuthBloc(
        userRepository: locator<UserRepository>(),
      ));
  locator.registerLazySingleton(
      () => LoginBloc(authRepository: locator<AuthRepository>()));
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
      storageRemoteDataSource: locator<StorageRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => MessageRepository(
      messageRemoteDataSource: locator<MessageRemoteDataSource>(),
      userRemoteDataSource: locator<UserRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => ChatRepository(
      chatRemoteDataSource: locator<ChatRemoteDataSource>(),
      userRemoteDataSource: locator<UserRemoteDataSource>(),
      storageRemoteDataSource: locator<StorageRemoteDataSource>(),
      messageRemoteDataSource: locator<MessageRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => ItemRepository(
      itemRemoteDataSource: locator<ItemRemoteDataSource>(),
      userRemoteDataSource: locator<UserRemoteDataSource>(),
      storageRemoteDataSource: locator<StorageRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthRepository(
      authRemoteDataSource: locator<AuthRemoteDataSource>(),
      userRemoteDataSource: locator<UserRemoteDataSource>(),
      mailingService: locator<MailingService>(),
    ),
  );

  locator.registerLazySingleton(() => MailingService());

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
  locator.registerLazySingleton(() => ItemRemoteDataSource());
  locator.registerLazySingleton(() => StorageRemoteDataSource());
  locator.registerLazySingleton(() => AuthRemoteDataSource());
  locator.registerLazySingleton(() => MessageRemoteDataSource());
  locator.registerLazySingleton(() => ChatRemoteDataSource());

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
