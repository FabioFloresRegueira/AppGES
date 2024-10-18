import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InforItensPagina extends StatelessWidget {
  final Map<String, dynamic> data;

  const InforItensPagina({super.key, this.data = const {}});

  @override
  Widget build(BuildContext context) {
    // Usando coalescência nula para fornecer valores padrão
    final String pDescricao =
        data['descricao']?.toString() ?? 'Descrição não disponivel';
    final String pCategoria =
        data['categoria']?.toString() ?? 'Categoria não disponivel';
    final String pvigencia =
        DateFormat.yMMMMEEEEd('pt_BR').format(DateTime.parse(data['vigencia']));

    final int pDiasvigencia = data['Diasvigencia'];
    final String pInfor =
        data['infor']?.toString() ?? 'Informação não disponível';
    final int pStatus = data['status'];

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
                  'Informações',
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
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              pDescricao,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              pCategoria,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            /*
            Text(
              (pStatus > 0)
                  ? (pDiasvigencia >= 90)
                      ? 'O serviço $pCategoria EXPIRARÁ EM $pDiasvigencia DIAS, precisamente em $pvigencia.'
                      : (pDiasvigencia >= 60)
                          ? 'O serviço $pCategoria EXPIRARÁ EM $pDiasvigencia DIAS, precisamente em $pvigencia.'
                          : (pDiasvigencia >= 30)
                              ? 'O serviço $pCategoria EXPIRARÁ EM $pDiasvigencia DIAS, precisamente em $pvigencia. Verifique as informações.'
                              : 'O serviço $pCategoria EXPIRARÁ EM $pDiasvigencia DIAS, precisamente em $pvigencia. Verifique as informações e inicie o processo de renovação caso necessário.'
                  : 'O serviço $pCategoria está bloqueado para renovações.',
              style: const TextStyle(fontSize: 18),
            ),
            */
            Text(
              pDiasvigencia > 0
                  ? 'O serviço $pCategoria Expirará em $pDiasvigencia dias, no dia $pvigencia.'
                  : pDiasvigencia == 0
                      ? 'O serviço $pCategoria expirou Hoje, dia $pvigencia.'
                      : 'O serviço $pCategoria expirou a $pDiasvigencia dias, em $pvigencia.',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Observações:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              pInfor,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 40),
            Text(
              pStatus == 1
                  ? 'Não sendo mais necessário, favor solicitar o bloqueio.'
                  : 'Serviço bloqueado para renovações.',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40),
            TextButton(
              child: const Text('Sair'),
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
