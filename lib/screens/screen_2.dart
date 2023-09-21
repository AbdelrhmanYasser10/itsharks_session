import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tfGVufDB8fDB8fHww&w=1000&q=80',
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'title',
                  ),
                  Text(
                    'subtitle',
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    '48',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.contacts,
                    color: Colors.blue,
                  ),
                  Text(
                    'subtitle',
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.contacts,
                    color: Colors.blue,
                  ),
                  Text(
                    'subtitle',
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.contacts,
                    color: Colors.blue,
                  ),
                  Text(
                    'subtitle',
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Text(
                'any words blablablaba' * 20
            ),
          ),
        ],
      ),
    );
  }
}
