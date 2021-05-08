import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre  = '';
  String _email   = '';
  String _fecha   = '';

  String _opcionSeleccionada = 'volar';

  List _poderes = ['volar', 'visión térmica', 'visión X', 'aliento congelante'];

  TextEditingController _inputFieldDateController = new TextEditingController();//para conseguir el inputfield

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha( context ),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo el nombre',
        suffixIcon: Icon( Icons.person),
        icon: Icon( Icons.account_box ),
        

      ),
      onChanged: (valor) {
        setState(() {
          
        _nombre = valor;
        });
        // print( _nombre );
      },
    );

  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Email de la persona',
        labelText: 'Email',
        helperText: 'Solo el nombre',
        suffixIcon: Icon( Icons.alternate_email),
        icon: Icon( Icons.mail ),
        

      ),
      onChanged: (valor) => setState(() {
        _email = valor;
        })
        // print( _nombre );
      
    );

  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Password de la persona',
        labelText: 'Password',
        helperText: '5 letras minimo',
        suffixIcon: Icon( Icons.security ),
        icon: Icon( Icons.lock ),
        

      ),
      onChanged: (valor) => setState(() {
        _email = valor;
        })
        // print( _nombre );
      
    );


  }
  
  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon( Icons.perm_contact_calendar),
        icon: Icon( Icons.calendar_today ),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());//para inhabilitar el focus

        _selectDate(context);

      },
      
        // print( _nombre );
      
    );


  }


  _selectDate(BuildContext context) async{

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2029),
      locale: Locale('es', 'ES')
    );

    if( picked  !=  null ){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }

  }

  List<DropdownMenuItem<String>> getOpcionesDropdown(){
    List<DropdownMenuItem<String>> lista = new List();
  
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
        ));
    });

    return lista;
  }



  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.star),
        SizedBox(width: 30.0,),
        Expanded(
                  child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(), 
            onChanged: (opt){
              setState(() {
                _opcionSeleccionada = opt;
              });

            }
          
            ),
        )
      ],
    );
    
    
    

    
  }


  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('el email es: $_email'),
      trailing: Text(_opcionSeleccionada),
    );
  }
  





}