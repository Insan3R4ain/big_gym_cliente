import 'package:flutter/material.dart';

const _PATH = "assets/images";
const _PIC01 = "$_PATH/imgScheda.jpg";
const _PIC02 = "$_PATH/imgChat.png";
const _PIC03 = "$_PATH/imgError.jpg";
const _PIC04 = "$_PATH/userLogo.png";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            new Container(
              child: new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: new ClipRRect(
                  borderRadius: new BorderRadius.circular(20.0),
                  child: new Image.asset(
                    _PIC01,
                    fit: BoxFit.cover,
                    width: 375,
                    height: 220,
                  ),
                ),
              ),
            ),



            new Container(
              child: new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: Stack( children: <Widget>[

                  new Center(
                    heightFactor: 2,
                    widthFactor: 3.75,
                    child:
                    new ClipRRect(
                      borderRadius: new BorderRadius.circular(20.0),
                      child: new Icon(
                        Icons.chat,
                        size: 100,
                      ),
                    ),
                  )
                ]
                ),
              ),
            ),

            new Container(
              child: new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: Stack( children: <Widget>[
                  new ClipRRect(
                    borderRadius: new BorderRadius.circular(20.0),
                    child: new Image.asset(
                      _PIC03,
                      fit: BoxFit.cover,
                      width: 375,
                      height: 220,
                    ),
                  ),
                  new Center(
                    heightFactor: 2,
                    widthFactor: 4.7,
                    child:
                    new Text("Report a bug"),
                  )
                ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
