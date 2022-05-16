import 'package:flutter/material.dart';
import '../widgets/vaccin_card.dart';
import 'navBar.dart';
import 'package:real_version/patient/screens/notifications_screen.dart';

// ignore: must_be_immutable
class VaccinScreen extends StatefulWidget {
  String id;
  VaccinScreen({required this.id,Key? key}) : super(key: key);

  @override
  State<VaccinScreen> createState() => _VaccinScreenState();
}

class _VaccinScreenState extends State<VaccinScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.04),
      drawer:  NavBar(id: widget.id),
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.00),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
        centerTitle: true,
        title: const Text(
          'Vaccins',
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
      body: Column(
        children: [
          Container(
            color: Colors.blue.withOpacity(0.04),
            height: size.height,
            width: size.width,
            //  color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: ListView(
                //  mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "En Attente",
                    style: TextStyle(
                      color: Color(0xff0dbed8),
                      fontSize: 18,
                      fontFamily: "Regular",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: 339,
                      height: 2,
                      color: const Color(0xff0dbed8),
                    ),
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 1',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date3: '07/07/2022',
                    date2: '10/12/2021',
                    boolD1: true,
                    boolD2: true,
                    boolD3: false,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 2',
                    nombredevac: 2,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: false,
                    boolD3: false,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 3',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: false,
                    boolD2: false,
                    boolD3: false,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Deja fait",
                    style: TextStyle(
                      color: Color(0xff0dbed8),
                      fontSize: 18,
                      fontFamily: "Regular",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: 339,
                      height: 2,
                      color: const Color(0xff0dbed8),
                    ),
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 1',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date3: '07/07/2022',
                    date2: '10/12/2021',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 2',
                    nombredevac: 2,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                    date3: '07/10/2022',
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 3',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 4',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                  const CardVaccin(
                    nomdevac: 'nom de vaccin 5',
                    nombredevac: 3,
                    date1: '17/07/2010',
                    date2: '07/07/2022',
                    date3: '17/05/2025',
                    boolD1: true,
                    boolD2: true,
                    boolD3: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
