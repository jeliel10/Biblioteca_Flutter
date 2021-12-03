import 'package:biblioteca/bloc/cart_bloc.dart';
import 'package:biblioteca/models/product_model.dart';
import 'package:biblioteca/services/product_service.dart';
import 'package:biblioteca/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              FutureBuilder<List<Product>>(
                  future: ProductService.getProducts(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return Column(
                        children: [
                          ...snapshot.data!.map((product) {
                            return ProductTile(
                              product: product,
                              onTap: () {
                                BlocProvider.of<CartBloc>(context)
                                    .addProduct(product);
                              },
                            );
                          })
                        ],
                      );
                    }
                  }),
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
