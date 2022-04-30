import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:developer' show log;

import 'package:real_version/const/routes.dart';
import 'package:real_version/utilities/show_error_dialog.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({ Key? key }) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  
  String? dropdownValue = 'patient';
  @override
  Widget build(BuildContext context) {

    List<String> items = ['patient', 'docteur'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              hintText: 'Enter your password',
            ),
          ),
          DropdownButton(
            value: dropdownValue,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),                                                
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            ),
          TextButton(onPressed: () async {
            final email = _email.text;
            final password = _password.text;
            try{
              final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password,
              );
              final userid = userCredential.user?.uid;
              FirebaseFirestore.instance.collection('users').doc(userid).set({'role' : dropdownValue});
            } on FirebaseAuthException catch(e) {
              if (e.code == 'weak-password'){
                await showErrorDialog(context, 'Weak password');
              } else if (e.code == 'email-already-in-use'){
                await showErrorDialog(context, 'Email already in use');
              } else if(e.code == 'invalid-email'){
                await showErrorDialog(context, 'Invalid email');
              }else{
                await showErrorDialog(context, 'Error: ${e.code}');
              }
            }catch (e){
              await showErrorDialog(context, e.toString());
            }
          },
          child: const Text('Register'),
          ),
          TextButton(
            onPressed: ()async{
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                loginRoute, 
                (_) => false
              );              
            }, 
            child: const Text('logout'),
          ),
        ],
      ),
    );
  }
}