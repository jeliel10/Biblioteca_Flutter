import 'package:flutter/material.dart';

class CompraRealizadaPage extends StatefulWidget {
  const CompraRealizadaPage({Key? key}) : super(key: key);

  @override
  _CompraRealizadaPageState createState() => _CompraRealizadaPageState();
}

class _CompraRealizadaPageState extends State<CompraRealizadaPage> {
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
              Container(height: 50),
              Column(
                children: [
                  Text(
                    "Compra Finalizada!!!",
                    style:
                        TextStyle(color: Colors.green.shade900, fontSize: 80),
                  ),
                  Text(
                    "Obrigado pela preferência!!!",
                    style:
                        TextStyle(color: Colors.green.shade900, fontSize: 80),
                  ),
                  Text(
                    "Volte sempre!!!",
                    style:
                        TextStyle(color: Colors.green.shade900, fontSize: 80),
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
