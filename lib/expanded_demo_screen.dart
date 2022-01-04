import 'package:flutter/material.dart';

class ExpandedDemoScreen extends StatelessWidget {
  const ExpandedDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                          child: Text(
                              "Короткий Короткий Короткий Короткий Короткий Короткий Короткий Короткий Короткий текст")),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            height: 100,
                            color: Colors.red,
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            color: Colors.brown,
                          )),
                      Expanded(
                          flex: 7,
                          child: Container(
                            height: 100,
                            color: Colors.green,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.accessibility_new_rounded),
                          ),
                        ),
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('нажми'))),
                    ],
                  ),
                ],
              ),
            )));
  }
}
