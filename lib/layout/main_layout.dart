import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_session/screens/home_screen/home_screen.dart';
import 'package:news_app_session/screens/search_screen/search_screen.dart';
import 'package:news_app_session/shared/cubits/app_cubit/app_cubit.dart';

import '../screens/category_screen/category_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {

  int _currentIdx = 0;
  List<Widget> screens = const [
    HomeScreen(),
    CategoryScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIdx,
            type: BottomNavigationBarType.shifting,
            elevation: 0.0,
            unselectedItemColor: Colors.blueGrey,
            selectedItemColor: Colors.black,
            onTap: (index) {
              setState(() {
                _currentIdx = index;
              });
              if (index == 0) {
                cubit.getBreakingNews();
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                ),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search',
              ),
            ],
          ),
          body: screens[_currentIdx],
        );
      },
    );
  }
}
