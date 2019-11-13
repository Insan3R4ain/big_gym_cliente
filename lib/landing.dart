import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      if (user.rootStatus == RootStatus.Unauthenticated) {
            return LoginPage();
          }
          if (user.rootStatus == RootStatus.Signined) {
            return MainLayout();
          }
    );
  }
}