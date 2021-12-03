import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:biblioteca/services/auth_service.dart';
import 'package:provider/src/provider.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String email = ' ';
  String senha = ' ';
  bool showPassword = false;
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 1500,
                color: Colors.green.shade800,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 550,
                        ),
                        Text(
                          "(19) 3249-0580",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          width: 100,
                          height: 23,
                          color: Colors.amber.shade800,
                          child: Text(
                            'ME AJUDE',
                            style: TextStyle(color: Colors.white),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Livraria",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.orange.shade800),
                              ),
                              Text(
                                "Verbum Caro",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              ),
                              Text(
                                "Factum Est",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 1500,
                height: 50,
                color: Colors.green.shade900,
              ),
              Padding(
                padding: const EdgeInsets.all(90.0),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 30),
                    ),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'E-mail'),
                        onChanged: (text) {
                          email = text;
                        }),
                    TextFormField(
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                            labelText: 'Senha',
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                icon: Icon(showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off))),
                        onChanged: (text) {
                          senha = text;
                        }),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: ElevatedButton(
                              onPressed:
                                  isLogin || email.isEmpty || senha.isEmpty
                                      ? null
                                      : () async {
                                          await FirebaseAuth.instance
                                              .signInWithEmailAndPassword(
                                                  email: email,
                                                  password: senha);
                                          Navigator.of(context)
                                              .pushNamed('initial');
                                        },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green),
                              child: Text('Entrar'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Não tem cadastro?',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('cadastro');
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                child: Text('Cadastre-se')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
