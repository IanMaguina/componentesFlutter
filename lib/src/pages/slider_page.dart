import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider')
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Divider(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

 Widget _crearSlider() {
   return Slider(
     activeColor: Colors.indigoAccent,
     label: 'Tamaño de la imagen',
    //  divisions: 10,
     value: _valorSlider,
     min: 10.0,
     max: 400.0,
     onChanged: 
     ( _bloquearCheck )
     ? null
     : (valor){
       setState(() {
       _valorSlider = valor;
       });
      } ,
     
     );
 }

  Widget _crearImagen() {
    return Image(
      width: _valorSlider,
      image: NetworkImage('https://i.pinimg.com/originals/ea/56/3c/ea563c5d31f6a9b279ac52385ca35a2d.png'),
      fit:BoxFit.contain,
      );

  }

  Widget _crearCheckBox() {

    /* return Checkbox(
      value: _bloquearCheck, 
      onChanged: (valor){ 
        setState(() => _bloquearCheck = valor );
      }
      ); */
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){ 
        setState(() => _bloquearCheck = valor );
      }
    );

  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){ 
        setState(() => _bloquearCheck = valor );
      }
    );

  }
}