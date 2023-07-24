import'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("Build Again");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter app demo',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Modern Academy',
              style: TextStyle(
                // lsbb la y3lmo ella allah,
                fontSize: 32,
                color: Colors.blue
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 48.0
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (){
                      counter =10;
                      counter +=10;
                        setState(() {

                        });
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 32.0,
                      ),
                    ),
                ),
                TextButton(
                  onPressed: (){
                    counter--;
                    setState(() {});
                  },
                  child: Text(
                      '-',
                    style: TextStyle(
                      fontSize: 32.0,
                    ),
                  ),
                ),

              ],
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}
