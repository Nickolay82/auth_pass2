import 'package:flutter/material.dart';

import 'Theme/Global_theme.dart';

class ThemesDemoApp extends StatelessWidget {
  const ThemesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: ThemesDemoScreen(),
    );
  }
}

class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);
  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {
    @override
  Widget build(BuildContext context) {
      const borderStyle = OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: const Color(0xffbdbdbd), width: 1));
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 140.0),
              child: Column(
                children: [
                   SizedBox( height: 80, ),
                  Row(
                    children:  [
                      SizedBox(width: 50),
                      Icon(
                        Icons.person_add,
                        size: 30,
                        color: Colors.black54,
                      ),
                      Text(' Регистрация',style: Theme.of(context).textTheme.headline5 ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 2.0, color: Colors.black12),
                      ),
                    ),
                    child:  Text(
                        ' Чтобы зарегистироваться, введите свой номер телефона и почту',
                        textAlign: TextAlign.center,
                        style:  Theme.of(context).textTheme.bodyText1
                  ),
                  ),
                  const SizedBox(height: 20),
                   Text(
                      ' Телефон',
                      style: Theme.of(context).textTheme.bodyText1
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 40,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFe0e0e0),
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                        labelText: '+7',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                   Text(
                      ' Почта',
                      style: Theme.of(context).textTheme.bodyText1
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFe0e0e0),
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                   Text(
                      'Вам придет четырех значный код, который будет вашим паролем',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2
                  ),
                  const SizedBox(height: 10),
                   Text(
                      'Изменить пароль можно будет в личном кабинете после регистрации',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 154,
                      height: 48,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Отправить код'),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF0079D0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              )))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    //home: Text('Регистрация',style: TextStyle(fontSize: 25,color: Color.fromRGBO( 75, 75, 75, 1.0));
  }
}
