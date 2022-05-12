import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_version/admin/doctor_informations.dart';
import 'package:real_version/admin/first_page.dart';
import 'package:real_version/const/routes.dart';
import 'package:real_version/docteur/screens/search.dart';
import 'package:real_version/patient/screens/login_page.dart';
import 'package:real_version/patient/screens/profile_page.dart';
import 'admin/patient_informations.dart';
import 'firebase_options.dart';
import 'utilities/get_role.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Homepage(),
      routes: {
        profilRoute : (context) => const ProfilPage1(),
        searchRoute :(context) => const SearchPatient(),
        registerRoute :(context) => const FirstPage(),
        loginRoute : (context) => const LoginScreen(),
        patientinfo :(context) => const PatientInformations(),
        docteurinfo :(context) => const DocInformations(),
      },
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState){
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null){
                return FutureBuilder(
                  future: getRole(user.uid),
                  builder: (context, snapshot){
                    switch(snapshot.data){
                      case 'admin' : return const FirstPage();
                      case 'patient' : return const ProfilPage1();
                      case 'docteur' : return const SearchPatient();
                      default: return const Scaffold(
                        body: Center(child: CircularProgressIndicator())
                      );
                    }
                  }
                );
            }else {
              return const LoginScreen();
            }
          default: 
            return const Scaffold(
              body: Center(child: CircularProgressIndicator())
            );
        }
      }
    );
  }
}
