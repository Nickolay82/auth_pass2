import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class GoogleFontsDemoScreen extends StatelessWidget {
  const GoogleFontsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Google Fonts Demo'),),
        body: Center(child: Column(
          children: [
            Text(
              'This is Google Fonts',
              style: GoogleFonts.getFont('Lato'),
            ),
            Text('This is Google Fonts',
              style: GoogleFonts.allison(),),
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
              ),
            ),
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(textStyle: Theme.of(context).textTheme.headline4),
            ),
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
          ),
        ),
      ),
     );
  }
}
