import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _opcionSeleccionada = 'Volar';
  List<String> _poderes = [
    'Rayos X',
    'Super Fuerza',
    'Super aliento',
    'Volar',
    'Invencibilidad'
  ];

  TextEditingController _inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
          Divider(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: ('Nombre'),
        hintText: 'Escribe tu nombre',
        counter: Text('Letras ${_nombre.length}'),
        icon: Icon(Icons.account_circle),
        suffixIcon: Icon(Icons.accessibility),
      ),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: ('Correo electrónico'),
        hintText: 'Escribe tu correo',
        icon: Icon(Icons.email),
        suffixIcon: Icon(Icons.alternate_email),
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: ('Contraseña'),
        hintText: 'Escribe una contraseña',
        icon: Icon(Icons.lock_open),
        suffixIcon: Icon(Icons.lock),
      ),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: ('Fecha de nacimiento'),
        hintText: 'Escribe tu fecha de nacimiento',
        icon: Icon(Icons.perm_contact_calendar),
        suffixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2035),
      locale: Locale('es', 'ES'),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown() {
    List<DropdownMenuItem<String>> lista = [];
    _poderes.forEach((poder) {
      lista.add(
        DropdownMenuItem(
          child: Text(poder),
          value: poder,
        ),
      );
    });
    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        DropdownButton(
          items: getOpcionesDropDown(),
          value: _opcionSeleccionada,
          onChanged: (opt) {
            setState(() {
              _opcionSeleccionada = opt;
            });
            print(opt);
          },
        ),
      ],
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Mi nombre es $_nombre'),
      subtitle: Text('Mi correo es $_email \nMi password es $_password'),
      trailing: Text(_opcionSeleccionada),
    );
  }
}
