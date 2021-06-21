import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginFacebook extends StatefulWidget {
  const LoginFacebook({Key? key}) : super(key: key);

  @override
  _LoginFacebookState createState() => _LoginFacebookState();
}

class _LoginFacebookState extends State<LoginFacebook> {
  bool _isLogin = false;

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final AccessToken result =
        (await FacebookAuth.instance.login()) as AccessToken;

    // Create a credential from the access token
    final facebookAuthCredential =
        FacebookAuthProvider.credential(result.token);

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final credential = await GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final widhtSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: heightSize * 0.6),
          SignInButton(Buttons.FacebookNew, onPressed: () {
            signInWithFacebook();
            print(
                "Facebook email = ${FirebaseAuth.instance.currentUser!.email}");
          }),
          SizedBox(height: 10),
          SignInButton(Buttons.Google, onPressed: () {}),
          SizedBox(height: 10),
          SignInButton(Buttons.GitHub, onPressed: () {}),
          SizedBox(height: 10),
          SignInButton(Buttons.Email, onPressed: () {}),
        ],
      ),
    ));
  }
}
