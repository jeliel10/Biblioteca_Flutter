import 'package:biblioteca/bloc/cart_bloc.dart';
import 'package:biblioteca/models/product_model.dart';
import 'package:biblioteca/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({Key? key}) : super(key: key);

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
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
              BlocBuilder<CartBloc, List<Product>>(
                builder: (context, state) {
                  num total = 0;
                  if (state.isNotEmpty) {
                    total = BlocProvider.of<CartBloc>(context)
                        .getAll()
                        .map((e) => e.price)
                        .reduce((value, element) => value + element);
                  }
                  return Container(
                    width: 1500,
                    height: 50,
                    color: Colors.green.shade900,
                    child: ListTile(
                      trailing: Text(
                        'Total: \$$total',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<CartBloc, List<Product>>(
                builder: (context, state) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        ...state.map((product) => ProductTile(
                              product: product,
                              onTap: () {
                                BlocProvider.of<CartBloc>(context)
                                    .removeProduct(product);
                              },
                            ))
                      ],
                    ),
                  );
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
                            Navigator.of(context).pushNamed('finalizar');
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          child: Text('Finalizar compra')),
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
