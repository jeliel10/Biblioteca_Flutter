import 'dart:io';
import 'dart:js';

import 'package:biblioteca/pages/Cadastro_page.dart';
import 'package:biblioteca/pages/Carrinho_page.dart';
import 'package:biblioteca/pages/Finalizar_page.dart';
import 'package:biblioteca/pages/Initial_page.dart';
import 'package:biblioteca/pages/Login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {
      'login': (context) => Loginpage(),
      'initial': (context) => Initial_page(),
      'cadastro': (context) => CadastroPage(),
      'finalizar': (context) => FinalizarPage(),
      'carrinho': (context) => CarrinhoPage(),
    },
  ));
}
