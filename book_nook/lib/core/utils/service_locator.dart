import 'package:book_nook/core/utils/api_service.dart';
import 'package:book_nook/features/home/data/repos/home_repo.dart';
import 'package:book_nook/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.instance;

void setupServiceLocator() {
  // register dio
  getItInstance.registerLazySingleton(() => Dio());

  // register api service instance
  getItInstance.registerLazySingleton<ApiServiceClient>(
      () => ApiServiceClient(getItInstance()));

  // register home repo instance
  getItInstance
      .registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getItInstance()));
}
