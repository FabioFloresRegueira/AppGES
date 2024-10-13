import 'package:flutter/material.dart';

class MNULateral extends StatelessWidget {
  const MNULateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset('assets/taglogo.jpg'),
          ),
          accountName: const Text('Tags de Serviços'),
          accountEmail: const Text('monitoramento@tags.com.br'),

          /*
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/lista-de-servicos.appspot.com/o/img-LstServi%C3%A7os.png?alt=media&token=bc36509e-7354-494c-9d80-7c41ad7b07f0'),
            ),
          ),
          */
        ),
        ListTile(
            leading: const Icon(
              Icons.engineering,
              size: 20,
            ),
            title: const Text('Parametrizar HostName'),
            //subtitle: Text('Finalizar Seção'),
            onTap: () {}),
        const Divider(),
        ListTile(
            leading: const Icon(
              Icons.help_outline,
              size: 20,
            ),
            title: const Text('Ajuda'),
            //subtitle: Text('Finalizar Seção'),
            onTap: () {}),
        ListTile(
          leading: const Icon(
            Icons.exit_to_app,
            size: 20,
          ),

          title: const Text('Sair'),
          //subtitle: Text('Finalizar Seção'),
          onTap: () => {},
        ),
      ],
    ));
  }
}
