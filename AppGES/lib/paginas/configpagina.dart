import 'package:flutter/material.dart';
import 'package:MonitoraTags/servicos/compartilhamentopreferencias.dart';
import 'package:flutter/scheduler.dart';

class ConfigPagina extends StatefulWidget {
  const ConfigPagina({super.key});

  @override
  State<ConfigPagina> createState() => _ConfigPaginaState();
}

class _ConfigPaginaState extends State<ConfigPagina> {
  var counter = '';

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      _recoveryData();
    });
  }

  void _recoveryData() async {
    //Recuperando valor do SharedPreferences
    String value = await SharedService.getString('parmEndPoint') ?? '';

    setState(() {
      counter = value;
    });

    //Armazenando o valor no Shared Preferences
    await SharedService.saveString('parmEndPoint', counter);
  }

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
                  'Configurações',
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
              'Ambiente',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.abc),
                suffixIcon: Icon(Icons.clear),
                labelText: 'Identificação',
                hintText: 'nome do ambiente',
                helperText: 'informe um nome para a identificação',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.http),
                suffixIcon: Icon(Icons.clear),
                labelText: 'URL',
                hintText: 'endereço do servidor',
                helperText: 'informe o endereço do servidor.',
                border: OutlineInputBorder(),
              ),
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


/*
Container(
      alignment: Alignment.center,
      child: TextButton(
        child: const Text('Conectar...'),
        onPressed: () {
          //Navigator.pop(context);
          Navigator.pushNamed(context, '/LoginPagina');
        },
      ),
    );
*/