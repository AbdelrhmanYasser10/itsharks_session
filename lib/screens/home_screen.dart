import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_session/shared/cubits/app_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: BlocConsumer<AppCubit, AppState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = AppCubit.get(context);
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Stack(
                        children: [
                          Image.network(
                            'https://static.wikia.nocookie.net/breakingbad/images/d/db/Group-Shot-1fcsxzgrdfg.jpg/revision/latest?cb=20130418203802',
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: 300,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.black12,
                                  ],

                                )
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  'Quotes',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        cubit.getQoutes();
                      },
                      child: const Text(
                          'Get New Quote'
                      ),
                    ),
                    state is GetDataLoading ? const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(

                          ),
                        ),
                    ):Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context,index)=>Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\"${cubit.quotes[index].quote}\"",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      "___${cubit.quotes[index].author}",
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          separatorBuilder: (context,index)=>const SizedBox(height: 20.0,),
                          itemCount: cubit.quotes.length,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
    );
  }
}
