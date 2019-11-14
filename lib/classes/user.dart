import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'root_status.dart';

class User with ChangeNotifier {
  FirebaseAuth _auth;
  FirebaseUser _user;
  GoogleSignIn _googleSignIn = GoogleSignIn();
  RootStatus _rootStatus = RootStatus.Loading;

  RootStatus get rootStatus => _rootStatus;
  FirebaseUser get user => _user;

  User.instance() : _auth = FirebaseAuth.instance {
    _auth.onAuthStateChanged.listen(_onAuthStateChanged);
  }

  Future _onAuthStateChanged(FirebaseUser user) async {
    if (user == null) {
      _rootStatus = RootStatus.Unauthenticated;
    } else {
      _user = user;
      debugPrint('User UID: ${user.uid}');
      _rootStatus = RootStatus.Authenticated;
    }
    notifyListeners();
  }

  Future<bool> signIn() async {
    try {
      _rootStatus = RootStatus.Loading;
      notifyListeners();
      final GoogleSignInAccount googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      await _auth.signInWithCredential(credential);
      _rootStatus = RootStatus.Authenticated;
      notifyListeners();
      return true;
    } catch (e) {
      _rootStatus = RootStatus.Unauthenticated;
      notifyListeners();
      return false;
    }
  }

  Future<bool> signOut() async {
    _rootStatus = RootStatus.Loading;
    notifyListeners();
    await _auth.signOut();
    await _googleSignIn.signOut();
    _rootStatus = RootStatus.Unauthenticated;
    notifyListeners();
    return true;
  }
}
