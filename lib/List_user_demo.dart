import 'package:flutter/material.dart';

class User {
  String _name; // целевая переменна
  String _numPhone; // целевая переменная
  User(this._name, this._numPhone); // конструктор
  // краткий синтаксис методов
  String get name => _name; // геттер
  set name(String val) => _name = val; // сеттер
  // расширенный синтаксис
  String get numPhone {
    return _numPhone;
  } // геттер

  set numPhone(String val) {
    _numPhone = val;
  } // сеттер
}

class UserListView extends StatefulWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  _UserListViewState createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  int _selectedIndex = 0;
  var users = [
    User('Igor ', '89171254411'),
    User('Petr ', '89171254422'),
    User('Mark ', '89371288411'),
    User('Semen ', '89171254411'),
    User('Viktor ', '89171254422'),
    User('Sonya ', '89371288411'),
    User('Masha ', '89171254411'),
    User('Fedya ', '89171254422'),
    User('Mark ', '89371288411'),
    User('Tolya ', '89171254411'),
    User('Pitr ', '89171254422'),
    User('Slava ', '89371288411'),
    User('Galya ', '89171254411'),
    User('Filus ', '89171254422'),
    User('Vera ', '89371288411'),
    User('Pavel ', '89171254411'),
    User('Viktor ', '89171254422'),
    User('Klava ', '89371288411'),
    User('Anna ', '89171254422'),
    User('Ksenya ', '89371288411'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 19,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(' ${users[index].name} ${users[index].numPhone} ',
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
