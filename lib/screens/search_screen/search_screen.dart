import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_session/screens/results_screen/results_screen.dart';
import 'package:news_app_session/shared/cubits/app_cubit/app_cubit.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New\'s App',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0
                          ),
                        ),
                        Text(
                          'search for a specific topic',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: 'Query',
                        labelStyle: const TextStyle(
                            color: Colors.black
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black,
                                style: BorderStyle.solid
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.black,
                                style: BorderStyle.solid
                            )
                        ),
                      ),
                      cursorColor: Colors.black,
                    ),
                    InkWell(
                      onTap: () {
                        cubit.getSpecificNews(
                            isFromCategory: false,
                            querySearch: _controller.text,
                        );
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_)=>  const ResultsScreen(
                                  title: 'Search',
                                ),
                            ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
