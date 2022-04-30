import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real_version/const/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({ Key? key }) : super(key: key);

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
          children: [
            const Text('we have sent you an email verification. please open it in order to verify your account'),
            const Text("if you haven't recieved a verification email yet, press the button below"),
            TextButton(
              onPressed: () async {
                final user = FirebaseAuth.instance.currentUser;
                await user?.sendEmailVerification(); 
                Navigator.of(context).pushNamedAndRemoveUntil(
                loginRoute, 
                (_) => false
              );
              },
              child: const Text('Send Email Verification'),
          ),
          const Text('if you have opened the link in the email verifivation please press restart'),
          TextButton(onPressed: ()async{
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false);
          }, 
          child: const Text('Restart')
          ),
        ],
      ),
    );
  }
}