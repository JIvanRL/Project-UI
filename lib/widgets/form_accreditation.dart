import 'package:flutter/material.dart';

// Widget para el campo de acreditación
Widget acreditacionField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Acreditación',
      border: OutlineInputBorder(),
      hintText: 'Ingrese la acreditación',
    ),
  );
}

// Widget para el campo de número de registro
Widget numeroRegistroField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Número de Registro',
      border: OutlineInputBorder(),
      hintText: 'Ingrese el número de registro',
    ),
  );
}

// Widget para el campo de certificaciones
Widget certificacionesField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Certificaciones',
      border: OutlineInputBorder(),
      hintText: 'Ingrese las certificaciones',
    ),
  );
}

// Widget para el campo de premios
Widget premiosField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Premios',
      border: OutlineInputBorder(),
      hintText: 'Ingrese los premios',
    ),
  );
}
