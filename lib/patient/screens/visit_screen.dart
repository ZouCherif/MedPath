import 'package:flutter/material.dart';
import 'package:real_version/patient/widgets/app_data.dart';
import 'package:real_version/patient/widgets/visit_card.dart';
import 'navBar.dart';
import 'package:real_version/patient/screens/notifications_screen.dart';

class VisitScreen extends StatelessWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
          centerTitle: true,
          title: const Text(
            'Visites Medicals',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Poppins',
              color: Color.fromARGB(156, 6, 37, 70),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NotificationsPage()));
                  },
                  child: const Icon(
                    Icons.notifications,
                  ),
                ))
          ],
          actionsIconTheme:
              const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          color: Colors.blue.withOpacity(0.04),
          height: size.height,
          width: size.width,
          child: InkWell(
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: size.height,
                  childAspectRatio: 7 / 8,
                  mainAxisExtent: 225),
              children: cards_data
                  .map((cards_data) => VisitCard(
                      cards_data.fullName,
                      cards_data.specialite,
                      cards_data.imageUrl,
                      cards_data.rapport,
                      cards_data.datee,
                      cards_data.localisation))
                  .toList(),
            ),
          ),
        ));
  }
}
