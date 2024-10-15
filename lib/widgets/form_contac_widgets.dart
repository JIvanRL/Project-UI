import 'package:flutter/material.dart';

// Campo para el correo electrónico
Widget emailField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Correo Electrónico'),
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa un correo electrónico';
      }
      return null;
    },
  );
}

// Campo para el teléfono
Widget telefonoField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: label),
    keyboardType: TextInputType.phone,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa un número de teléfono';
      }
      return null;
    },
  );
}

// Campo para URL
Widget urlField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: label),
    keyboardType: TextInputType.url,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa una URL';
      }
      return null;
    },
  );
}

// Campo para redes sociales
Widget redesSocialesField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: label),
    keyboardType: TextInputType.text,
  );
}
