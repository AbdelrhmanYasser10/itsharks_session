import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_session/screens/home_screen.dart';
import 'package:online_session/shared/cubits/app_cubit.dart';
import 'package:online_session/shared/network/remote/dio_helper.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
