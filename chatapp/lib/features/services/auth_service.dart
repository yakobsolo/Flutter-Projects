import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  signInwithGoogle() async {
    //begin interactive sign in process

    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain auth detaild from request

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create a new credential for user
    print("=========================");

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    // finally sign in

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

        
    _firestore.collection('Users').doc(userCredential.user!.uid).set({
      "uid": userCredential.user!.uid,
      'email': userCredential.user!.email,
    });

    return;
  }
}
