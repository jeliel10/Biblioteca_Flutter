import 'dart:io';
import 'dart:js';

import 'package:biblioteca/bloc/cart_bloc.dart';
import 'package:biblioteca/pages/Cadastro_page.dart';
import 'package:biblioteca/pages/Carrinho_page.dart';
import 'package:biblioteca/pages/CompraRealizada_page.dart';
import 'package:biblioteca/pages/Finalizar_page.dart';
import 'package:biblioteca/pages/Initial_page.dart';
import 'package:biblioteca/pages/Login_page.dart';
import 'package:biblioteca/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => CartBloc(),
      ),
    ],
    child: MaterialApp(
      initialRoute: 'login',
      routes: {
        'login': (context) => Loginpage(),
        'initial': (context) => Initial_page(),
        'cadastro': (context) => CadastroPage(),
        'finalizar': (context) => FinalizarPage(),
        'carrinho': (context) => CarrinhoPage(),
        'compra': (context) => CompraRealizadaPage(),
      },
    ),
  ));
}
