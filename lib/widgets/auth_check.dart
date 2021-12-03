import 'package:biblioteca/pages/Initial_page.dart';
import 'package:biblioteca/pages/Login_page.dart';
import 'package:biblioteca/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading) {
      return loading();
    } else if (auth.usuario == null) {
      return Loginpage();
    } else {
      return Initial_page();
    }
  }

  loading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
