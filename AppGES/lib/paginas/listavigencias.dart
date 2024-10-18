import 'package:MonitoraTags/paginas/inforitenspagina.dart';
import 'package:flutter/material.dart';
import 'package:MonitoraTags/asyncdb.dart';
import 'package:MonitoraTags/componentes/caixadedialogo.dart';

class Listavigencias extends StatefulWidget {
  const Listavigencias({super.key});

  @override
  State<Listavigencias> createState() => _ListavigenciasState();
}

class _ListavigenciasState extends State<Listavigencias> {
  // ATUALIZA AS INFORMAÇÕES DO ENDPONT EM TEMPOS.
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: asyncdb('todos'),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Erro: ${snapshot.error}");
        }
        //
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == null || snapshot.data!.isEmpty) {
            return const Text("Nenhum dado encontrado.");
          }
          //
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                //
                return Container(
                  margin: const EdgeInsets.all(5),

                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  //
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          color: (snapshot.data![index]['status'] != null &&
                                  snapshot.data![index]['status'] > 0)
                              ? (snapshot.data![index]['Diasvigencia']) >= 90
                                  ? Colors.white30
                                  : (snapshot.data![index]['Diasvigencia']) >=
                                          60
                                      ? Colors.green[200]
                                      : (snapshot.data![index]
                                                  ['Diasvigencia']) >=
                                              30
                                          ? Colors.yellow[600]
                                          : Colors.red[200]
                              : Colors.black26,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                          child: Text(
                            snapshot.data![index]['Diasvigencia'].toString(),
                            style: (snapshot.data![index]['status'] != null &&
                                    snapshot.data![index]['status'] > 0)
                                ? const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)
                                : const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InforItensPagina(
                                  data: snapshot.data?[index],
                                ),
                              ),
                            );
                            /*
                            showAlertDialog1(
                                context,
                                snapshot.data![index]['infor'].toString(),
                                snapshot.data![index]['vigencia'].toString());
                            */
                          }),
                    ),
                    //
                    title: Text(
                      snapshot.data![index]['descricao'].toString(),
                      style: (snapshot.data![index]['status'] != null &&
                              snapshot.data![index]['status'] > 0)
                          ? const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)
                          : const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                            ),
                    ),

                    //
                    subtitle: Text(
                      snapshot.data![index]['categoria'].toString(),
                      style: (snapshot.data![index]['status'] != null &&
                              snapshot.data![index]['status'] > 0)
                          ? const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)
                          : const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                            ),
                    ),
                  ),
                );
              });
          //
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}



/*
FutureBuilder<List<dynamic>>(
      future: asyncdb('todos'),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Erro: ${snapshot.error}");
        }
        //
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == null || snapshot.data!.isEmpty) {
            return const Text("Nenhum dado encontrado.");
          }
          //
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                //
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  //
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(16),
                      child: TextButton(
                        child: Text(
                          snapshot.data![index]['Diasvigencia'].toString(),
                          style: const TextStyle(fontSize: 8),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    //
                    title: Text(snapshot.data![index]['descricao'].toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    //
                    subtitle: Text(
                      snapshot.data![index]['categoria'].toString(),
                    ),
                  ),
                );
              });
          //
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
*/