import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scholar_chat/pages/chat_page.dart';
import 'package:scholar_chat/widgets/constants.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../helper/show_snack_bar.dart';
import '../widgets/costum_button.dart';
import '../widgets/costum_textfield.dart';

class RegisterPage extends StatefulWidget {
   RegisterPage({Key? key}) : super(key: key);
   static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   String? email;

   String? password;

   bool isLoading = false;

   GlobalKey<FormState> formkey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall:isLoading ,
      child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Form(
              key: formkey,
              child: ListView(
                children: [
                   SizedBox(height: 75,),
                  Image.asset('assets/images/scholar.png',height: 100,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                    'Scholar Chat',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'pacifico',
                    ),
                  ),
                    ],
                 ),
                  SizedBox(height: 75,),
                  Row(
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomFormTextField(
                    onChanged:(data){
                      email = data;
                    },
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomFormTextField(
                    onChanged: (data){
                      password=data;
                    },
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButon(
                    onTap: (() async{
                     if (formkey.currentState!.validate()) {
                       isLoading=true;
                       setState(() {
                         
                       });
      try{
       
       await registerUser();
       Navigator.pushNamed(context, ChatPage.id);
      }on FirebaseAuthException catch (ex) {
           if (ex.code == 'weak-password') {
             showSnackBar(context,'week password'); 
           } else if (ex.code == 'email-already-in-use') {
             showSnackBar(context,'email-already-in-use' );
           }
      }catch(ex){
      showSnackBar(context, 'there was an error');
      }
      isLoading =false;
      setState(() {
        
      });
        
    }else{}
                    }),
                    text: 'Register'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'already have an account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.pop(context);
                        }),
                        child: Text(
                          '  Login',
                          style: TextStyle(color: Color(0xffC7EDE6)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  

  Future<void> registerUser() async {
    
     UserCredential user  = await FirebaseAuth.instance
     .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
