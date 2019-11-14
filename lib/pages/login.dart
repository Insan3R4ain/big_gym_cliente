import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:big_gym_clinte/classes/user.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/images/logoLogin.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              onPressed: () async {
                if (!await user.signIn()) {
//Show error
                }
              },
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5.0, left: 20, right: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/images/google_logo.png'),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Sign in with Google",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(),
          )
        ],
      ),
    );
  }
}
