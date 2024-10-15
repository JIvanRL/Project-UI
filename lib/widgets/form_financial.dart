import 'package:flutter/material.dart';

// Dropdown para seleccionar el tipo de financiamiento
Widget tipoFinanciamientoDropdown(String tipoFinanciamiento, ValueChanged<String?>? onChanged) {
  return DropdownButtonFormField<String>(
    value: tipoFinanciamiento,
    decoration: InputDecoration(labelText: 'Tipo de Financiamiento'),
    onChanged: onChanged,
    items: [
      DropdownMenuItem(value: 'Público', child: Text('Público')),
      DropdownMenuItem(value: 'Privado', child: Text('Privado')),
      DropdownMenuItem(value: 'Mixto', child: Text('Mixto')),
    ],
  );
}

// Campo para los costos de matrícula
Widget costosMatriculaField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: label),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa un valor';
      }
      return null;
    },
  );
}

// Checkbox group para fuentes de ingreso
Widget fuentesIngresoCheckboxGroup(List<String> fuentesIngreso) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Fuentes de Ingreso'),
      CheckboxListTile(
        title: Text('Becas'),
        value: fuentesIngreso.contains('Becas'),
        onChanged: (bool? value) {
          if (value == true) {
            fuentesIngreso.add('Becas');
          } else {
            fuentesIngreso.remove('Becas');
          }
        },
      ),
      CheckboxListTile(
        title: Text('Donaciones'),
        value: fuentesIngreso.contains('Donaciones'),
        onChanged: (bool? value) {
          if (value == true) {
            fuentesIngreso.add('Donaciones');
          } else {
            fuentesIngreso.remove('Donaciones');
          }
        },
      ),
      CheckboxListTile(
        title: Text('Subvenciones'),
        value: fuentesIngreso.contains('Subvenciones'),
        onChanged: (bool? value) {
          if (value == true) {
            fuentesIngreso.add('Subvenciones');
          } else {
            fuentesIngreso.remove('Subvenciones');
          }
        },
      ),
    ],
  );
}
