// import 'package:biblioteca/bloc/cart_bloc.dart';
import 'package:biblioteca/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final void Function()? onTap;
  const ProductTile({Key? key, required this.product, this.onTap})
      : super(key: key);

  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap?.call();
      },
      leading: Container(
          width: 80,
          height: 80,
          child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/' + product.imageName,
                fit: BoxFit.cover,
              ))),
      title: Text(product.title),
      subtitle: Text(product.pages),
      trailing: Text('R\$${product.price}'),
    );
  }
}
