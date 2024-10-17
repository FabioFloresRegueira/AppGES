import 'package:MonitoraTags/paginas/loginpagina.dart';
import 'package:flutter/material.dart';
import 'package:MonitoraTags/paginas/iniciopagina.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:MonitoraTags/paginas/configpagina.dart';
import 'package:MonitoraTags/paginas/criacontapagina.dart';

void main() {
  initializeDateFormatting('pt_BR', null).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Monitorar Vigencias',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),

        //home: const InicioPagina(), //const MyHomePage(title: 'Boas Vindas'),

        // O initialRoute é a primeira rota que é aberta no app
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPagina(),
          '/InicioPagina': (context) => const InicioPagina(),
          '/ConfigPagina': (context) => const ConfigPagina(),
          '/CriaContaPagina': (context) => const CriaContaPagina(),
        });
  }
}


/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/
