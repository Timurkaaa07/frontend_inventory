
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../di/init_di.dart';
import '../domain/app_builder.dart';
import '../domain/app_runner.dart';

class MainAppRunner implements AppRunner {
  final String env;

  const MainAppRunner(this.env);


  @override
  Future<void> preloadData() async {
    initDi(env);
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    final storage = await HydratedStorage.build(storageDirectory: await getApplicationCacheDirectory());
    HydratedBlocOverrides.runZoned(
          () async {
            runApp(appBuilder.buildApp());
            await preloadData();
          },
      storage: storage,
    );
  }
}