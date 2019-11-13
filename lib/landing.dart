import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'classes/root_status.dart';
import 'classes/user.dart';
import 'pages/home.dart';
import 'pages/login.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => User.instance(),
      child: Consumer(
        builder: (context, User user, _) {
          if (user.rootStatus == RootStatus.Unauthenticated) {
            return LoginPage();
          }
          if (user.rootStatus == RootStatus.Authenticated) {
            return HomePage();
          }
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}
