import 'package:flutter/material.dart';

class Paineis extends StatefulWidget {
  const Paineis({super.key});

  @override
  State<Paineis> createState() => _MyPanelsState();
}

class _MyPanelsState extends State<Paineis> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // Ativos
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.grey,
                  Colors.white,
                ]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            width: 150,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '33',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Ativos',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          // INATIVOS
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.grey,
                  Colors.white,
                ]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            width: 150,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '2',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Inativos',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          // ATÉ 30 DIAS
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.grey,
                  Colors.white,
                ]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            width: 150,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '5',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Até 30 Dias',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          // 31 até 60 dias
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.grey,
                  Colors.white,
                ]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            width: 150,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '31 até 60 dias',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          // 61 até 90 dias
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.grey,
                  Colors.white,
                ]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            width: 150,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '7',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '61 até 90 dias',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          // Maior que 90 dias
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.grey,
                  Colors.white,
                ]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            width: 150,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '18',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Maior que 90 dias',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




/*
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey[600],
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  color: Colors.white,
                  tooltip: 'Increase volume by 10',
                  onPressed: () {
                    setState(() {
                      //_volume += 10;
                    });
                  },
                ),
                const Text(
                  'até 30 dias',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),




          Container(

              margin: const EdgeInsets.all(15),
              width: 200,
              //height: 150,
              
              color: Colors.white,
              alignment: Alignment.center,
              child: const Text(
                '1',
                style: TextStyle(fontSize: 80),
              )),



*/