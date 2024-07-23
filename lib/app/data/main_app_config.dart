import 'package:injectable/injectable.dart';

import '../domain/app_config.dart';



@Singleton(as: AppConfig)
@prod
class ProdAppConfig implements AppConfig
{
  @override
  // TODO: implement baseUrl
  String get baseUrl => "http://62.109.24.61";

  @override
  // TODO: implement host
  String get host => Environment.prod;

}

@Singleton(as: AppConfig)
@dev
class DevAppConfig implements AppConfig
{
  @override
  // TODO: implement baseUrl
  String get baseUrl => "localhost";

  @override
  // TODO: implement host
  String get host => Environment.dev;

}

@Singleton(as: AppConfig)
@test
class TestAppConfig implements AppConfig
{
  @override
  // TODO: implement baseUrl
  String get baseUrl => "_";

  @override
  // TODO: implement host
  String get host => Environment.test;

}
