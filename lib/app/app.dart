import 'package:flutter/material.dart';
import 'package:flutter_web_google_sigin/Ui/home.dart';
import 'package:flutter_web_google_sigin/Ui/sign_in_view.dart';
import 'package:provider/provider.dart';

import 'models/users.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Consumer<Users>(
        builder: (_, user, __) {
          if (user == null) {
            return const SignInView();
          } else {
            return const HomeView();
          }
        },
      ),
    );
  }
}
