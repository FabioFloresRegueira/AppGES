import 'package:flutter/material.dart';

class MenuFiltro extends StatefulWidget {
  const MenuFiltro({super.key});

  @override
  State<MenuFiltro> createState() => _MenuFiltro();
}

class _MenuFiltro extends State<MenuFiltro> {
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Filtros');

  @override
  void dispose() {
    _buttonFocusNode.dispose();
    super.dispose();
  }

  // Logica para abir e fecha o menu, encapsulamento na função.
  void toggleSubMenu(MenuController controller) {
    if (controller.isOpen) {
      controller.close();
    } else {
      controller.open();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      childFocusNode: _buttonFocusNode,
      menuChildren: <Widget>[
        MenuItemButton(
          onPressed: () {},
          child: const Text('até 30 dias'),
        ),
        MenuItemButton(
          onPressed: () {},
          child: const Text('30 até 60 dias'),
        ),
        MenuItemButton(
          onPressed: () {},
          child: const Text('60 até 90 dias'),
        ),
        MenuItemButton(
          onPressed: () {},
          child: const Text('maior que 90 dias'),
        ),
        MenuItemButton(
          onPressed: () {},
          child: const Text('somente inativos'),
        ),
        const Divider(),
        MenuItemButton(
          onPressed: () {},
          child: const Text('limpa filtro'),
        ),
      ],
      builder: (_, MenuController controller, Widget? child) {
        return IconButton(
          focusNode: _buttonFocusNode,
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: const Icon(Icons.more_vert),
        );
      },
    );
  }
}
