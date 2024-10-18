import 'package:flutter/material.dart';

showAlertDialog1(BuildContext context, String infor, String vigencia) {
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  AlertDialog alerta = AlertDialog(
    backgroundColor: Colors.white,
    //
    title: Text(
        'Atenção, para a data final de renovação ${vigencia.substring(0, 10)}.'),
    titleTextStyle: const TextStyle(fontSize: 20, color: Colors.redAccent),
    //
    content: Text(infor),
    contentTextStyle: const TextStyle(fontSize: 15, color: Colors.black),
    //
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
