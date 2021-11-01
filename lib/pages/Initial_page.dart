import 'package:flutter/material.dart';

class Initial_page extends StatefulWidget {
  const Initial_page({Key? key}) : super(key: key);

  @override
  _Initial_pageState createState() => _Initial_pageState();
}

class _Initial_pageState extends State<Initial_page> {
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
                                    fontSize: 30,
                                    color: Colors.orange.shade800),
                              ),
                              Text(
                                "Verbum Caro",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                              Text(
                                "Factum Est",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
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
              Container(
                height: 25,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.blue,
                ),
                title: Text(
                  "A Inveja dos Anjos - C. Stephen Jaeger",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  'N-Paginas: 600',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Text(
                  'R\$80,00',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.indigo.shade900,
                ),
                title: Text(
                  "Didascalicon - Hugo de São Vitor",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  'N-Paginas: 287',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Text(
                  'R\$56,00',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.brown.shade900,
                ),
                title: Text(
                  "As Três Idades da Vida Interior - R. Garrigou-Lagrange",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  'N-Paginas: 1800',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Text(
                  'R\$238,00',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.blue,
                ),
                title: Text(
                  "Historia da Literatura Ocidental - Otto Maria Carpeux",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  'N-Paginas: 2288',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Text(
                  'R\$267,00',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('carrinho');
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          child: Text('Ir para Carrinho')),
                    ),
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
