import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding:const EdgeInsets.all(20.0) ,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child: const Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: CircleAvatar(
                      radius: 42.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tfGVufDB8fDB8fHww&w=1000&q=80'
                      ),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color:Colors.white,
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              'username',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color:Colors.white,
                            ),
                            Text(
                              'username',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color:Colors.white,
                            ),
                            Text(
                              'username',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color:Colors.white,
                            ),
                            Text(
                              'username',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}