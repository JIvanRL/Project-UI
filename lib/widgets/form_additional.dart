import 'package:flutter/material.dart';

// Widget para el Campo de Texto (Email)
Widget emailField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Correo Electrónico',
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un correo electrónico';
      }
      return null;
    },
  );
}

// Widget para el Campo de Teléfono
Widget telefonoField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.phone,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un número de teléfono';
      }
      return null;
    },
  );
}

// Widget para Campo de URL
Widget urlField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.url,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese una URL';
      }
      return null;
    },
  );
}

// Widget para Campo de Checkbox
Widget checkboxField(String title, bool value, ValueChanged<bool?>? onChanged) {
  return Row(
    children: [
      Checkbox(
        value: value,
        onChanged: onChanged,
      ),
      Text(title),
    ],
  );
}

// Widget para Text Area
Widget textareaField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    maxLines: 5, // Permite múltiples líneas
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese una descripción';
      }
      return null;
    },
  );
}

// Widget para Campo Repetitivo
Widget repeatingGroupField(List<String> items, String title, String label, String hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ...items.map((item) {
        return TextFormField(
          initialValue: item,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            border: OutlineInputBorder(),
          ),
        );
      }).toList(),
      SizedBox(height: 8),
      ElevatedButton(
        onPressed: () {
          items.add(''); // Agrega un nuevo campo vacío
        },
        child: Text('Agregar $title'),
      ),
    ],
  );
}

// Widget para Dropdown de Tipo de Financiamiento
Widget tipoFinanciamientoDropdown(String selectedValue, ValueChanged<String?> onChanged) {
  return DropdownButtonFormField<String>(
    value: selectedValue,
    decoration: InputDecoration(
      labelText: 'Tipo de Financiamiento',
      border: OutlineInputBorder(),
    ),
    items: <String>['Público', 'Privado', 'Mixto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    onChanged: onChanged,
  );
}

// Widget para Campo de Costos de Matrícula
Widget costosMatriculaField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un costo';
      }
      return null;
    },
  );
}

// Widget para Checkbox Group de Fuentes de Ingreso
Widget fuentesIngresoCheckboxGroup(List<String> sources) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Fuentes de Ingreso', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ...['Donaciones', 'Subvenciones', 'Matrícula', 'Otros'].map((source) {
        return CheckboxListTile(
          title: Text(source),
          value: sources.contains(source),
          onChanged: (bool? value) {
            if (value == true) {
              sources.add(source);
            } else {
              sources.remove(source);
            }
          },
        );
      }).toList(),
    ],
  );
}
