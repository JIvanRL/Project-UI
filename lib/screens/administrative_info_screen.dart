import 'package:flutter/material.dart';
import 'package:projecto_ui/widgets/from_administrative.dart';

class AdministrativeInfoScreen extends StatefulWidget {
  @override
  _AdministrativeInfoScreenState createState() => _AdministrativeInfoScreenState();
}

class _AdministrativeInfoScreenState extends State<AdministrativeInfoScreen> {
  final _rectorController = TextEditingController();
  final _cargoController = TextEditingController();
  final _correoRepresentanteController = TextEditingController();
  final _identificacionFiscalController = TextEditingController();
  final _personasContacto = <Map<String, String>>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Administrativos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              rectorField(_rectorController),
              cargoField(_cargoController),
              emailField(_correoRepresentanteController),
              identificacionFiscalField(_identificacionFiscalController),
              repeatingGroupField(
                _personasContacto, // Lista de personas de contacto
                'Personas de Contacto', // Título del grupo
                'Nombre', // Nombre del campo
                'Cargo', // Cargo del campo
                onAdd: () {
                  setState(() {
                    // Agrega un nuevo mapa vacío a la lista de personas de contacto
                    _personasContacto.add({'Nombre': '', 'Cargo': ''}); 
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/faculties');
                },
                child: Text('Siguiente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
