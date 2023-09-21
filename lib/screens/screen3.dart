
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Stack(
            children: [
              Positioned(
                top: 40,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.greenAccent,
                  child: const Center(
                    child: Text(
                      'Successfully',
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 100,
                left: 90,
                child: CircleAvatar(
                  radius: 24.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.safety_check,
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}





