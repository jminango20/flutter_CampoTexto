import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de datos"),
      ),
      body: Column(
        children: [
         Padding(
           padding: EdgeInsets.all(32),
           child: TextField(
             //text, number, emailAdress, datetime
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               labelText: "Digite un valor",
             ),
             //enabled: false, //Bloquea el campo de texto
             //maxLength: 2,
             //maxLengthEnforced: false, //com false aparece rojo indicando que es prohibido mas valores
             /*style: TextStyle(
               fontSize: 25,
               color: Colors.green
             ),*/
             //obscureText: true, //Para senha
             //Recupera datos: onChanged cuando mudo en el campo texto
             /*onChanged: (String texto){
               print("Valor digitado: " + texto);
             },*/
             //Recupera datos: onSubmitted cuando presiono el check de enviar
             onSubmitted: (String texto){
               print("Valor digitado: " + texto);
             },
             //Controlador del campo de texto
             controller: _textEditingController,
           ),
         ),
          RaisedButton(
            child: Text("Guardar"),
            color: Colors.green,
            onPressed: (){
              print("Valor digitado: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
