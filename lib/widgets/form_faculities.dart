import 'package:flutter/material.dart';

// Widget para Campo de Número de Facultades
Widget numeroFacultadesField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Número de Facultades',
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un número de facultades';
      }
      return null;
    },
  );
}

// Widget para Campo Repetitivo (adaptado para facultades y carreras)
Widget repeatingGroupField(List<dynamic> items, String title, String label, String hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ...items.map((item) {
        // Si es un Map, se asume que es una facultad con una carrera
        if (item is Map) {
          return Column(
            children: [
              TextFormField(
                initialValue: item['facultad'] ?? '',
                decoration: InputDecoration(
                  labelText: 'Facultad',
                  hintText: hint,
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                initialValue: item['carrera'] ?? '',
                decoration: InputDecoration(
                  labelText: 'Carrera',
                  hintText: 'Carrera',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          );
        }
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
          if (title == 'Facultades') {
            items.add(''); // Agrega un nuevo campo vacío para facultades
          } else if (title == 'Carreras por Facultad') {
            items.add({'facultad': '', 'carrera': ''}); // Agrega un nuevo campo vacío para carreras
          }
        },
        child: Text('Agregar $title'),
      ),
    ],
  );
}
