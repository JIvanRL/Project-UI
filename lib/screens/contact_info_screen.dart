import 'package:flutter/material.dart';
import 'package:projecto_ui/widgets/form_contac_widgets.dart';

class ContactInfoScreen extends StatefulWidget {
  @override
  _ContactInfoScreenState createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  final _emailController = TextEditingController();
  final _telefonoPrincipalController = TextEditingController();
  final _telefonoAdicionalController = TextEditingController();
  final _paginaWebController = TextEditingController();
  final _facebookController = TextEditingController();
  final _twitterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de Contacto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              emailField(_emailController),
              telefonoField(_telefonoPrincipalController, 'Número de Teléfono Principal'),
              telefonoField(_telefonoAdicionalController, 'Número de Teléfono Adicional'),
              urlField(_paginaWebController, 'Página Web Oficial'),
              redesSocialesField(_facebookController, 'Facebook'),
              redesSocialesField(_twitterController, 'Twitter'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/administrativeInfo');
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
