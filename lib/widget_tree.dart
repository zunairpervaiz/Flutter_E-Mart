import 'package:emart_app/pages/auth_screen/auth.dart';
import 'package:emart_app/pages/auth_screen/login_screen.dart';

import 'package:flutter/material.dart';

import 'pages/home_screen/nav_bar.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChange,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const NavBarScreen();
          } else {
            return const LoginScreen();
          }
        });
  }
}
