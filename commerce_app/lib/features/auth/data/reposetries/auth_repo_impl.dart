import 'package:commerce_app/features/auth/domain/repostries/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';



class AuthRepoImpl extends AuthRepo
{
  @override
  Future completeInformation({String? name, String? phoneNumber, String? address}) {
   
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> loginWithFacebook() async{
   
  
  final LoginResult loginResult = await FacebookAuth.instance.login();


  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);


  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future<Either<Exception,UserCredential>> loginWithGoogle()async {
   
     
  try{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

 
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

 
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  
  return Right(await FirebaseAuth.instance.signInWithCredential(credential));

  }catch(e){
   return left(Exception('some thing went wrong'));
  }
  }
  
}