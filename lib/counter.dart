import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _count = 0;

  void _increament() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_count",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 45, 109, 218)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: InkWell(
                child: Text("click here"),
                onTap: () => _increament(),
                splashColor: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
