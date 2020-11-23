
import 'package:flutter/material.dart';
import 'package:prova_flutter/Cadastro.dart';
import 'package:prova_flutter/Home.dart';
import 'package:prova_flutter/Login.dart';
import 'package:prova_flutter/Mensagens.dart';
import 'package:prova_flutter/SplashScreen.dart';
import 'package:prova_flutter/telas/recuperasenha.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Login());
      case "/login":
        return MaterialPageRoute(builder: (_) => Login());
      case "/cadastro":
        return MaterialPageRoute(builder: (_) => Cadastro());
      case "/home":
        return MaterialPageRoute(builder: (_) => Home());
      case "/splash":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case "/recuperasenha":
        return MaterialPageRoute(builder: (_) => RecuperaSenha());
      case "/mensagens":
        return MaterialPageRoute(builder: (_) => Mensagens(args));
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada"),
        ),
        body: Center(
          child: Text("Tela não encontrada"),
        ),
      );
    });
  }
}
