import 'package:flutter/material.dart';

class CriaContaPagina extends StatefulWidget {
  const CriaContaPagina({super.key});

  @override
  State<CriaContaPagina> createState() => _CriaContaPagina();
}

class _CriaContaPagina extends State<CriaContaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Nova Conta',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Perfil',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text('Salvar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )),
    );
  }
}
