import 'package:flutter/material.dart';
import 'package:projecto_ui/widgets/form_services.dart';

class ServicesScreen extends StatefulWidget {
  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  final _numeroCampusController = TextEditingController();
  final _bibliotecasController = TextEditingController();
  final _laboratoriosController = TextEditingController();
  bool _residencias = false;
  bool _centrosInvestigacion = false;
  final _deportesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios e Infraestructura'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              numeroCampusField(_numeroCampusController),
              bibliotecasField(_bibliotecasController),
              laboratoriosField(_laboratoriosController),
              checkboxField('Residencias Universitarias', _residencias, (value) {
                setState(() {
                  _residencias = value!;
                });
              }),
              checkboxField('Centros de Investigación', _centrosInvestigacion, (value) {
                setState(() {
                  _centrosInvestigacion = value!;
                });
              }),
              deportesField(_deportesController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/additionalInfo');
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
