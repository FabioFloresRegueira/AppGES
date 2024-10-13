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
          //
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
                Text(
                  '33',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'ativos',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),

          //
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  color: Colors.black,
                  tooltip: 'Exibe ativos',
                  onPressed: () {
                    setState(() {
                      //_volume += 10;
                    });
                  },
                ),
                const Text(
                  'ativos',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  color: Colors.black,
                  tooltip: 'Exibe até 30 dias',
                  onPressed: () {
                    setState(() {
                      //_volume += 10;
                    });
                  },
                ),
                const Text(
                  'até 30 dias',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  color: Colors.black,
                  tooltip: 'Exibe de 31 até 60 dias',
                  onPressed: () {
                    setState(() {
                      //_volume += 10;
                    });
                  },
                ),
                const Text(
                  '31 até 60 dias',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  color: Colors.black,
                  tooltip: 'Exibe de 61 até 90 dias',
                  onPressed: () {
                    setState(() {
                      //_volume += 10;
                    });
                  },
                ),
                const Text(
                  '61 até 90 dias',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  color: Colors.black,
                  tooltip: 'Exibe maior que 90 dias',
                  onPressed: () {
                    setState(() {
                      //_volume += 10;
                    });
                  },
                ),
                const Text(
                  'maior que 90 dias',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  color: Colors.black,
                  tooltip: 'Exibe inativos',
                  onPressed: () {
                    setState(() {
                      //_volume += 10;
                    });
                  },
                ),
                const Text(
                  'inativos',
                  style: TextStyle(color: Colors.black),
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