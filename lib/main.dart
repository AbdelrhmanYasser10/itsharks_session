import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_session/layout/main_layout.dart';
import 'package:news_app_session/shared/cubits/app_cubit/app_cubit.dart';
import 'package:news_app_session/shared/network/dio_helper/dio_helper.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()
        ..getBreakingNews(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.black
        ),
        home: const MainLayout(),
      ),
    );
  }
}
