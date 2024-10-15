import 'package:flutter/material.dart';

// Campo para el número de campus
Widget numeroCampusField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Número de Campus'),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa el número de campus';
      }
      return null;
    },
  );
}

// Campo para bibliotecas
Widget bibliotecasField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Número de Bibliotecas'),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa el número de bibliotecas';
      }
      return null;
    },
  );
}

// Campo para laboratorios
Widget laboratoriosField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Número de Laboratorios'),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa el número de laboratorios';
      }
      return null;
    },
  );
}

// Campo para deportes
Widget deportesField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Actividades Deportivas'),
  );
}

// Checkbox genérico
Widget checkboxField(String title, bool value, ValueChanged<bool?>? onChanged) {
  return CheckboxListTile(
    title: Text(title),
    value: value,
    onChanged: onChanged,
  );
}
