import 'package:flutter/material.dart';

class FinalizarPage extends StatefulWidget {
  const FinalizarPage({Key? key}) : super(key: key);

  @override
  _FinalizarPageState createState() => _FinalizarPageState();
}

class _FinalizarPageState extends State<FinalizarPage> {
  String? estado;
  String? cidade;
  String? cep;
  String? rua;
  String? bairro;
  String? numero;

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
              Column(
                children: [
                  Text(
                    'Endereço',
                    style: TextStyle(fontSize: 30),
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'ESTADO'),
                      onChanged: (text) {
                        estado = text;
                      }),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'CIDADE'),
                      onChanged: (text) {
                        cidade = text;
                      }),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'CEP'),
                      onChanged: (text) {
                        cep = text;
                      }),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'RUA'),
                      onChanged: (text) {
                        rua = text;
                      }),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'BAIRRO'),
                      onChanged: (text) {
                        bairro = text;
                      }),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'NUMERO'),
                      onChanged: (text) {
                        numero = text;
                      }),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('compra');
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green),
                              child: Text('Fechar Pedido')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
