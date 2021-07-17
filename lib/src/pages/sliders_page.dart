import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valor = 10;
  bool _blockSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sliders'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          ),
        ));
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: '$_valor',
        //divisions: 20,
        value: _valor,
        min: 10.0,
        max: 400.0,
        onChanged: (_blockSlider)
            ? null
            : (valor) {
                setState(() {
                  _valor = valor;
                });
              });
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _blockSlider,
    //   onChanged: (value) {
    //     setState(() {
    //       _blockSlider = value;
    //     });
    //   },
    // );
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _blockSlider,
        onChanged: (value) {
          setState(() {
            _blockSlider = value;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _blockSlider,
        onChanged: (value) {
          setState(() {
            _blockSlider = value;
          });
        });
  }

  Widget _crearImagen() {
    return Container(
      child: Image(
        image: NetworkImage(
          'https://i.pinimg.com/originals/3b/49/1a/3b491a6d49006dc3a53e14e3977ca352.png',
        ),
        width: _valor,
        fit: BoxFit.contain,
      ),
    );
  }
}
