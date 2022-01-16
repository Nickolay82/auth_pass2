import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Элемент списка $index',
                  style: Theme.of(context).textTheme.headline5),
              selected: index == _selectedIndex,
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
            );
         },
      ),
      ),
    );
  }
}
