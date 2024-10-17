import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:MonitoraTags/paineis/paineis.dart';
import 'package:MonitoraTags/paginas/listavigencias.dart';
import 'package:MonitoraTags/componentes/barinferiorpesquisa.dart';
import 'package:MonitoraTags/componentes/menupopup.dart';

class InicioPagina extends StatefulWidget {
  const InicioPagina({super.key});

  @override
  State<InicioPagina> createState() => _InicioPagina();
}

class _InicioPagina extends State<InicioPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // BOAS-VINDAS
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'BOAS-VINDAS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            DateFormat.yMMMMEEEEd('pt_BR')
                                .format(DateTime.now()),
                            style: TextStyle(
                                fontSize: 10, color: Colors.blueGrey[100]),
                          )
                        ],
                      ),
                      // LOOUT
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                            tooltip: 'Sair',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Text(
                            'Sair',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  //
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Painel de Vigências',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      //Icon(Icons.more_horiz, color: Colors.white)
                    ],
                  ),
                  //
                  const SizedBox(
                    height: 25,
                  ),
                  // PAINEIS DE VIGENCIAS
                  const Paineis()
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[300],
                child: const Center(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Lista',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          IconButton(
                            //Icons.arrow_drop_down_circle,
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                            onPressed: MenuFiltro.new, // ERVER COMO CHAMAR
                            // corrigir a chamada.
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 15,
                      ),
                      // LISTVIEW OF VIGENCIA
                      Expanded(
                        child: Listavigencias(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //APPBarBottom
      bottomNavigationBar: const AppBarBottomPesq(
        fabLocation: FloatingActionButtonLocation.endDocked,
        // ignore: dead_code
        shape: true ? CircularNotchedRectangle() : null,
      ),
    );
  }
}
