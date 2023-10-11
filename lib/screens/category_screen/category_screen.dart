import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_session/screens/results_screen/results_screen.dart';

import '../../shared/cubits/app_cubit/app_cubit.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: categoryCard(
                            context: context,
                            cubit: cubit,
                            icon: Icons.biotech_outlined,
                            text: 'Technology',
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: categoryCard(
                            context: context,
                            cubit: cubit,
                            icon: Icons.person_4_outlined,
                            text: 'Business',
                          ),
                        ),
                      ],

                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: categoryCard(
                            context: context,
                            cubit: cubit,
                            icon: Icons.sports_baseball_outlined,
                            text: 'Sport',
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: categoryCard(
                            context: context,
                            cubit: cubit,
                            icon: Icons.health_and_safety_outlined,
                            text: 'Health',
                          ),
                        ),
                      ],

                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: categoryCard(
                            context: context,
                            cubit: cubit,
                            icon: Icons.science_outlined,
                            text: 'Science',
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: categoryCard(
                            context: context,
                            cubit: cubit,
                            icon: Icons.airplay_sharp,
                            text: 'Entertainment',
                          ),
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget categoryCard({
    required BuildContext context,
    required AppCubit cubit,
    required IconData icon,
    required String text,
  }) =>
      InkWell(
        onTap: () {
          cubit.getSpecificNews(
            isFromCategory: true,
            querySearch: text.toLowerCase(),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ResultsScreen(
                title: text,
              ),
            ),
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 84.0,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
