import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'listMenu.dart';

class loginPage extends StatefulWidget {
  @override
  loginFlutterPage createState() => loginFlutterPage();
}

class loginFlutterPage extends State<loginPage> {
  String email = "";
  String password = "";

  Widget txtEmail(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          email = value;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email_rounded),
          hintText: 'Email',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          password = value;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key_rounded),
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget txtForgotPassword(){
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          String msg = "Ini untuk Lupa Password";

          SnackBar snackBar = SnackBar(
            content: Text(msg),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Forgot Password?',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget btnLogin(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: (){
          String text = "";
          if (email == "raditha123@gmail.com" && password == "ditha123"){
            text = "Login Berhasil";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => listMenu())
            );
          } else {
            text = "Email/Password Anda Salah!";
          }

          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Log In',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Login Kasir"),
        ),
        body: Column(
            children: [
              SizedBox(height: 30),
              Text('Welcome to Burjo diHati',
                style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              SizedBox(height: 30),
              txtEmail(),
              txtPassword(),
              btnLogin(),
              txtForgotPassword(),
            ]
        ),
      ),
    );
  }
}