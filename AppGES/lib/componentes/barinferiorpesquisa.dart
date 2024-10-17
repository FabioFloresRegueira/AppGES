import 'package:flutter/material.dart';

class AppBarBottomPesq extends StatelessWidget {
  const AppBarBottomPesq({
    super.key,
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.blueGrey,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'Menu Lateral',
              icon: const Icon(Icons.search),
              onPressed: () {
                _configPesquisaModalBottomSheet(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

/* ********************************************* */
// Bottom Modal Sheet
/* ********************************************* */
void _configPesquisaModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return const Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Painel de Pesquisa'),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Pesquisa',
                    hintText: 'Busca por palavra-chave',
                    helperText: 'Informe o texto a ser pesquisado',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: null, // Adicione a função desejada aqui
                  child: Text('Pesquisar'),
                ),
              ],
            ),
          ),
        );
      });
}
