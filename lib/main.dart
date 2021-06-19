import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:supermercado1/pages/IncluiListaCompras.dart';
import 'package:supermercado1/pages/IncluiProdutoNovo.dart';

import 'Loading.dart';
import 'SomethingWentWrong.dart';
import 'home.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        print('++++++++++++ERRO+++++++++++++++++++++');
        _error = true;
      });
    }
  }

  _authuser() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: "walter@wop.com.br", password: "1234567");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      print('++++++++++++USUARIO OK+++++++++++++++++++++');
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      return SomethingWentWrong();
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return Loading();
    }
    _authuser();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        routes: {
          //   return MaterialApp(home: GeraCadastroProduto(), routes: {
          '/incluiCompras': (context) => IncluiListaCompras(),
          '/incluiProdutos': (context) => IncluiProdutoNovo(),
        });
  }
}
