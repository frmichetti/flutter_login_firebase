import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProviderPageController extends InheritedWidget {
  final PageController controller;
  final Widget child;
  final FirebaseAuth firebaseAuth;

  ProviderPageController({this.firebaseAuth, this.controller, this.child}): super(child: child);

  static ProviderPageController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProviderPageController>() as ProviderPageController;
  }

  void toPage(int page){
    controller.animateToPage(page, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != this;
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    var accessToken = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final FacebookAuthCredential facebookAuthCredential =
    FacebookAuthProvider.credential(accessToken.token);

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
