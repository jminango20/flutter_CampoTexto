import 'package:flutter/material.dart';


class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _estaSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Comida Brasilena"),
            Checkbox(
                value: _estaSelecionado,
                onChanged: (bool valor){
                  setState(() {
                    _estaSelecionado = valor;
                  });
                  print("Checkbox: " + valor.toString());
                },
            ),
          ],
        ),
      ),
    );
  }
}
