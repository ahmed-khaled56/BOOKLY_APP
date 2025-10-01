import 'package:bookly_app/core/utlis/api_servisce.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServisce>(ApiServisce(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(getIt.get<ApiServisce>()),
  );
}
