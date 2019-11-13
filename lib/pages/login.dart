import 'package:flutter/material.dart';

const _PATH = "assets/images";
const _PIC01 = "$_PATH/google_logo.png";
const _PIC02 = "$_PATH/logoLogin.jpg";

class LoginPage extends StatelessWidget {
  final TextEditingController idController = new TextEditingController();
  final TextEditingController pswController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Image.asset(_PIC02),
            Container(
              padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 40.0),
              child: new TextField(
                controller: idController,
                decoration: new InputDecoration(
                  labelText: "Inserisci la tua mail",
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.mail_outline),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(40.0),
                    borderSide: new BorderSide(),
                  ),
                ),
                style: new TextStyle(fontSize:18.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"),
              ),
            ),

            SizedBox(height: 50,),

            Container(
              padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 40.0),
              child: new TextField(
                controller: pswController,
                obscureText: true,
                decoration: new InputDecoration(
                    labelText: "Inserisci la Password",
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.vpn_key),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(40.0),
                      borderSide: new BorderSide(),
                    )
                ),
                style: new TextStyle(fontSize:18.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"),
              ),
            ),

            SizedBox(height: 50,),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(key:null,
                      padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 12.0),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0),
                          side: BorderSide(color: Colors.blue)),
                      onPressed: (){

                      },
                      child:
                      new Text(
                        "Accedi",
                        style: new TextStyle(fontSize:30.0,
                            color: Color(0xFF2196f3),
                            fontWeight: FontWeight.w100,
                            fontFamily: "Roboto"
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 12.0)),
                  new FlatButton(key:null,
                      padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 12.0),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0),
                          side: BorderSide(color: Colors.blue)),
                      onPressed: () {

                      },
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            _PIC01,
                            height: 30.0,
                          ),
                          new Container(
                              padding: EdgeInsets.only(left: 10.0),
                              child: new Text("Sign in with Google",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                          ),
                        ],
                      )
                  )
                ]
            )
          ]
      ),
    );
  }
}
