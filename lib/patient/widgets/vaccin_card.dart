// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class CardVaccin extends StatefulWidget {
  final String nomdevac;
  final int nombredevac;
  final String date1;
  final String date2;
  final String date3;
  final bool boolD1;
  final bool boolD2;
  final bool boolD3;

  const CardVaccin(
      {Key? key,
      required this.nomdevac,
      required this.nombredevac,
      required this.date1,
      required this.date2,
      required this.date3,
      required this.boolD1,
      required this.boolD2,
      required this.boolD3})
      : super(key: key);
  @override
  _CardVaccinState createState() => _CardVaccinState();
}

class _CardVaccinState extends State<CardVaccin> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  Widget returnedos(int num) {
    switch (num) {
      case 1:
        return Row(
          children: [
            LesDose(
              numdose: '1',
              dateofsoe: widget.date1,
              ouinn: widget.boolD1,
            ),
          ],
        );
      case 2:
        return Row(
          children: [
            LesDose(
              numdose: '1',
              dateofsoe: widget.date1,
              ouinn: widget.boolD1,
            ),
            LesDose(
              numdose: '2',
              dateofsoe: widget.date2,
              ouinn: widget.boolD2,
            ),
          ],
        );
      case 3:
        return Row(
          children: [
            LesDose(
              numdose: '1',
              dateofsoe: widget.date1,
              ouinn: widget.boolD1,
            ),
            LesDose(
              numdose: '2',
              dateofsoe: widget.date2,
              ouinn: widget.boolD2,
            ),
            LesDose(
              numdose: '3',
              dateofsoe: widget.date3,
              ouinn: widget.boolD3,
            )
          ],
        );
      default:
        return widget;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 8.0, right: 5),
      child: ExpansionTileCard(
        baseColor: Colors.white,
        expandedColor: Colors.white,
        key: cardA,
        //     leading: CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
        title: Text(
          widget.nomdevac,
          style: const TextStyle(
              color: Color.fromARGB(156, 6, 37, 70),
              fontSize: 19,
              fontWeight: FontWeight.w600),
        ),
        // subtitle: Text("FLUTTER DEVELOPMENT COMPANY"),
        children: <Widget>[
          returnedos(widget.nombredevac),
        ],
      ),
    );
  }
}

class LesDose extends StatelessWidget {
  const LesDose(
      {Key? key,
      required this.numdose,
      required this.dateofsoe,
      required this.ouinn})
      : super(key: key);
  final String numdose;
  final String dateofsoe;
  final bool ouinn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 54,
          width: 110,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(1, 4), // changes position of shadow
                ),
              ],
              //border: Border.all(width: 0.01),
              color: ouinn == false
                  ? const Color.fromARGB(255, 193, 255, 254)
                  : const Color.fromARGB(255, 25, 207, 204),
              borderRadius: const BorderRadius.all(const Radius.circular(10))),
          child: Row(
            children: [
              Container(
                //color: Colors.red,
                width: 80,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4, top: 4.0),
                        child: Text(
                          'Dose $numdose',
                          style: TextStyle(
                              fontSize: 16,
                              color: ouinn == false
                                  ? const Color.fromARGB(255, 1, 128, 125)
                                  : Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 0),
                      child: Text(
                        dateofsoe,
                        style: TextStyle(
                            fontSize: 14,
                            color: ouinn == false
                                ? const Color.fromARGB(255, 1, 128, 125)
                                : Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 30,
                // color: Colors.amber,
                child: Icon(ouinn == false ? Icons.close : Icons.check,
                    color: ouinn == false
                        ? const Color.fromARGB(255, 1, 128, 125)
                        : Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
