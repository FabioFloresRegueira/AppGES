import 'package:flutter/material.dart';
import 'package:MonitoraTags/paginas/iniciopagina.dart';
import 'package:intl/date_symbol_data_local.dart';

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
      home: const InicioPagina(), //const MyHomePage(title: 'Boas Vindas'),
    );
  }
}

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




/* ********************************************* */
// TAGs DE SERVIÇOS
/* ********************************************* */
/*
class Futuresync extends StatelessWidget {
  const Futuresync({super.key, required this.xfiltro});

  final String xfiltro;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: asyncdb(xfiltro),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Erro: ${snapshot.error}");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          leading: IconButton(
                            //Icons.arrow_drop_down_circle,
                            icon: const Icon(Icons.info_outline_rounded),
                            onPressed: () {
                              showAlertDialog1(
                                  context,
                                  snapshot.data![index]['infor'].toString(),
                                  snapshot.data![index]['vigencia'].toString());
                            },
                            color: (snapshot.data![index]['status'] != null &&
                                    snapshot.data![index]['status'] > 0)
                                ? (snapshot.data![index]['Diasvigencia']) >= 90
                                    ? Colors.blue
                                    : (snapshot.data![index]['Diasvigencia']) >=
                                            60
                                        ? Colors.green
                                        : (snapshot.data![index]
                                                    ['Diasvigencia']) >=
                                                30
                                            ? Colors.yellow
                                            : Colors.red
                                : Colors.black54,
                          ),
                          title: Text(
                              snapshot.data![index]['descricao'].toString(),
                              style: const TextStyle(
                                  //color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          subtitle: Text(
                            snapshot.data![index]['categoria'].toString(),
                            //style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          trailing: SizedBox(
                            width: 70,
                            height: 50,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    snapshot.data![index]['Diasvigencia']
                                        .toString(),
                                    style: const TextStyle(
                                      color: Colors
                                          .black, // Muda a cor do texto para vermelho
                                      fontSize:
                                          20, // Muda o tamanho do texto para 20
                                    ),
                                  ),
                                  const Text(
                                    'Dias',
                                    style: TextStyle(
                                      color: Colors
                                          .black, // Muda a cor do texto para vermelho
                                      fontSize:
                                          10, // Muda o tamanho do texto para 20
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        /*
                        
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Vigencia: ${snapshot.data![index]['vigencia'].toString()}',
                            //style: TextStyle(color: Colors.black.withOpacity(0.6)),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            snapshot.data![index]['infor'].toString(),
                            //style:TextStyle(color: Colors.black.withOpacity(0.6)),
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        
                        */

                        /*
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 50.0),
                          child: Divider(
                            color: (snapshot.data![index]['status'] != null &&
                                    snapshot.data![index]['status'] > 0)
                                ? (snapshot.data![index]['Diasvigencia']) >= 90
                                    ? Colors.blue
                                    : (snapshot.data![index]['Diasvigencia']) >=
                                            60
                                        ? Colors.green
                                        : (snapshot.data![index]
                                                    ['Diasvigencia']) >=
                                                30
                                            ? Colors.yellow
                                            : Colors.red
                                : Colors.black54,
                          ),
                        ),
                        */

                        //Image.asset('assets/card-sample-image.jpg'),
                        //Image.asset('assets/card-sample-image-2.jpg'),
                      ],
                    ),
                  ),
                );
              });
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
*/