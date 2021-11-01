import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  String? email;
  String? password;
  String? cpf;
  String? telefone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
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
                                  fontSize: 30, color: Colors.orange.shade800),
                            ),
                            Text(
                              "Verbum Caro",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              "Factum Est",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
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
            Column(
              children: [
                Text(
                  'Cadastre-se',
                  style: TextStyle(fontSize: 30),
                ),
                TextFormField(
                    decoration: InputDecoration(labelText: 'E-mail'),
                    onChanged: (text) {
                      email = text;
                    }),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Senha'),
                    onChanged: (text) {
                      password = text;
                    }),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Telefone'),
                  onChanged: (text) {
                    telefone = text;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'CPF'),
                  onChanged: (text) {
                    cpf = text;
                  },
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('login');
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          child: Text('Concluir Cadastro'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
