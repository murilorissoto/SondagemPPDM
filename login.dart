import 'package:flutter/material.dart';
import 'main.dart';
import 'menu.dart';
import 'cadastro.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.green,
        ),
        body: LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();//criando a variavel de acesso as TextField
  TextEditingController _passwordController = TextEditingController();//criando a variavel de acesso as TextField
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.greenAccent, // Fundo azul
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Login',
              prefixIcon: Icon(Icons.person),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Senha',
              prefixIcon: Icon(Icons.lock),
              filled: true,
              fillColor: Colors.white,
            ),
            obscureText: true,
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed:(){
              Navigator.push( // Navega para a Tela2
                context,
                MaterialPageRoute(builder: (context) => menu()),
              );
            },
            child: const Text('Entrar'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                textStyle: TextStyle(color:Colors.white, fontSize: 14),
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical:20),
                minimumSize: Size(180,50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed:(){
              Navigator.push( // Navega para a Tela2
                context,
                MaterialPageRoute(builder: (context) => Cadastro()),
              );
            },
            child: const Text('Sou novo aqui'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                textStyle: TextStyle(color:Colors.white, fontSize: 14),
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical:20),
                minimumSize: Size(180,50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),
        ],
      ),
    );
  }
}