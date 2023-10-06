import 'package:actual_flutter/common/component/custom_text_form_field.dart';
import 'package:actual_flutter/common/view/splash_screen.dart';
import 'package:actual_flutter/user/view/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}