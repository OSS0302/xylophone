import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('실로폰'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(34),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 72.0),
                child: gunban('도', Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0),
                child: gunban('레', Colors.deepOrange),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 56.0),
                child: gunban('미', Colors.yellow),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 48.0),
                child: gunban('파', Colors.green),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: gunban('솔', Colors.blue),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: gunban('리', Colors.deepPurple),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: gunban('시', Colors.brown),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: gunban('도', Colors.grey),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget gunban(String text, Color color) {
  return Container(
    width: 50,
    height: double.infinity,
    color: color,
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
