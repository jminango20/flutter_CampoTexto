import 'package:flutter/material.dart';


class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _cargarImagem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componente Switch"),
      ),
      body: Container(
        child: Column(
          children: [
            Switch(
                value: _escolhaUsuario,
                onChanged: (bool escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("Resultado: " + _escolhaUsuario.toString());
                }
            ),
            Text("Aceptar notificaciones? "),
            Switch(
                value: _cargarImagem,
                onChanged: (bool escolha){
                  setState(() {
                    _cargarImagem = escolha;
                  });
                  print("Resultado: " + _cargarImagem.toString());
                }
            ),
            Text("Aceptar cargar imagenes? "),
          ],
        ),
      ),
    );
  }
}
