// lib/screens/general_info_screen.dart
import 'package:flutter/material.dart';
import 'package:projecto_ui/widgets/form_widgets.dart';

class GeneralInfoScreen extends StatefulWidget {
  @override
  _GeneralInfoScreenState createState() => _GeneralInfoScreenState();
}

class _GeneralInfoScreenState extends State<GeneralInfoScreen> {
  final _nombreController = TextEditingController();
  final _siglasController = TextEditingController();
  String _tipoUniversidad = 'Pública';
  DateTime _fechaFundacion = DateTime.now();
  String _pais = 'México'; // Valor por defecto
  final _ciudadController = TextEditingController();
  final _direccionController = TextEditingController();
  final _codigoPostalController = TextEditingController();

  // Variables de error para cada campo
  bool _nombreError = false;
  bool _siglasError = false;
  bool _ciudadError = false;
  bool _direccionError = false;
  bool _codigoPostalError = false;

  // Método para validar los campos
  bool _validateFields() {
    setState(() {
      _nombreError = _nombreController.text.isEmpty;
      _siglasError = _siglasController.text.isEmpty;
      _ciudadError = _ciudadController.text.isEmpty;
      _direccionError = _direccionController.text.isEmpty;
      _codigoPostalError = _codigoPostalController.text.isEmpty;
    });

    // Retornar false si hay algún error
    return !(_nombreError ||
        _siglasError ||
        _ciudadError ||
        _direccionError ||
        _codigoPostalError);
  }

  // Método para mostrar un Snackbar
  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información General'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            // Usar ListView para permitir desplazamiento
            children: [
              nombreField(_nombreController,
                  _nombreError), // Widget para el campo de nombre
              SizedBox(height: 16), // Espacio entre campos
              siglasField(_siglasController,
                  _siglasError), // Widget para el campo de siglas
              SizedBox(height: 16),
              tipoUniversidadDropdown(_tipoUniversidad, (newValue) {
                setState(() {
                  _tipoUniversidad = newValue!;
                });
              }), // Widget para el dropdown de tipo de universidad
              SizedBox(height: 16),
              fechaFundacionField(context, _fechaFundacion, (newDate) {
                setState(() {
                  _fechaFundacion = newDate;
                });
              }), // Widget para el campo de fecha de fundación
              SizedBox(height: 16),
              paisDropdown(_pais, (newValue) {
                setState(() {
                  _pais = newValue!;
                });
              }), // Widget para el dropdown de país
              SizedBox(height: 16),
              ciudadField(_ciudadController,
                  _ciudadError), // Widget para el campo de ciudad
              SizedBox(height: 16),
              direccionField(_direccionController,
                  _direccionError), // Widget para el campo de dirección
              SizedBox(height: 16),
              codigoPostalField(_codigoPostalController,
                  _codigoPostalError), // Widget para el campo de código postal
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Validar los campos antes de navegar
                  if (_validateFields()) {
                    // Aquí iría la lógica para avanzar a la siguiente pantalla
                    Navigator.pushNamed(context,
                        '/administrativeInfo'); // Cambia la ruta según sea necesario
                  } else {
                    _showSnackbar(
                        'Por favor complete todos los campos obligatorios.');
                  }
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
