import 'package:daily_digest/core/utils/api_service.dart';
import 'package:daily_digest/features/categories/data/repos/category_repo_impl.dart';
import 'package:daily_digest/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<CategoryRepoImpl>(
    CategoryRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
