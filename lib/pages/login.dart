import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/homepage.dart';

class Login extends StatelessWidget {
  final loginController = TextEditingController();
  final senhaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(left: 60, right: 60, top: 180, bottom: 100),
                child: Image.asset("assets/images/instagram.png"),
              ),
              buildText(tipo: "Login", controller: loginController),
              SizedBox(height: 30),
              buildText(
                  tipo: "Senha", senha: true, controller: senhaController),
              SizedBox(height: 80),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    color: Colors.purpleAccent[100],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Sing In", style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      loginController.text = "";
                      senhaController.text = "";
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>
                                  BottomNavigationBarInst()));
                    }),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Forgot the password?",
                style: TextStyle(color: Colors.white60),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Don't have an acount? Sign Up",
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
        ));
  }
}

Widget buildText(
    {TextEditingController controller, String tipo, bool senha = false}) {
  return Container(
    alignment: Alignment.center,
    height: 55,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: TextField(
      controller: controller,
      obscureText: senha,
      decoration: InputDecoration(
          hintText: tipo,
          contentPadding: EdgeInsets.all(10),
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          border: InputBorder.none),
    ),
  );
}
