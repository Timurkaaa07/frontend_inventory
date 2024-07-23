
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/auth/domain/auth_state/auth_cubit.dart';
import '../../feature/goods/domain/post_repo.dart';
import '../../feature/goods/domain/state/cubit/goods_cubit.dart';
import '../di/init_di.dart';
import '../domain/app_builder.dart';
import 'root_screen.dart';

class MainAppBuilder implements AppBuilder
{
  @override
  Widget buildApp(){
    return const _GlobalProviders(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
        home: RootScreen()
      ),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => locator.get<AuthCubit>()
    ),
      BlocProvider(
      create: (context) => GoodsCubit(
          locator.get<PostRepo>(),
          locator.get<AuthCubit>())..fetchIL(),
      )
    ], child: child);
  }
}
