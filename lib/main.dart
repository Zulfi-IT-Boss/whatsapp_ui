import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xff075e55)
        ),
        bottomSheetTheme:BottomSheetThemeData(
          backgroundColor: Colors.blue.withOpacity(0)
        )
      ),
      routes: {
        "/":(context) => HomePage(),
      },
    );
  }
}
