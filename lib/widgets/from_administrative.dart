import 'package:flutter/material.dart';

// Widget para crear un campo de texto para el nombre del rector
Widget rectorField(TextEditingController controller) {
  return TextFormField(
    controller: controller, // Controlador para el campo
    decoration: InputDecoration(
      labelText: 'Nombre del Rector', // Etiqueta del campo
      border: OutlineInputBorder(), // Borde del campo
    ),
    validator: (value) {
      // Validación: no puede estar vacío
      if (value == null || value.isEmpty) {
        return 'Por favor, ingresa el nombre del rector'; // Mensaje de error
      }
      return null; // Retorna null si la validación es correcta
    },
  );
}

// Widget para crear un campo de texto para el cargo del rector
Widget cargoField(TextEditingController controller) {
  return TextFormField(
    controller: controller, // Controlador para el campo
    decoration: InputDecoration(
      labelText: 'Cargo', // Etiqueta del campo
      border: OutlineInputBorder(), // Borde del campo
    ),
    validator: (value) {
      // Validación: no puede estar vacío
      if (value == null || value.isEmpty) {
        return 'Por favor, ingresa el cargo'; // Mensaje de error
      }
      return null; // Retorna null si la validación es correcta
    },
  );
}
// Widget para crear un campo de texto para el correo electrónico
Widget emailField(TextEditingController controller) {
  return TextFormField(
    controller: controller, // Controlador para el campo
    decoration: InputDecoration(
      labelText: 'Correo Electrónico', // Etiqueta del campo
      border: OutlineInputBorder(), // Borde del campo
    ),
    validator: (value) {
      // Validación: debe ser un correo válido
      if (value == null || value.isEmpty) {
        return 'Por favor, ingresa un correo electrónico'; // Mensaje de error
      } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
        return 'Ingresa un correo electrónico válido'; // Mensaje de error si no es un correo válido
      }
      return null; // Retorna null si la validación es correcta
    },
  );
}
// Widget para crear un campo de texto para la identificación fiscal
Widget identificacionFiscalField(TextEditingController controller) {
  return TextFormField(
    controller: controller, // Controlador para el campo
    decoration: InputDecoration(
      labelText: 'Identificación Fiscal', // Etiqueta del campo
      border: OutlineInputBorder(), // Borde del campo
    ),
    validator: (value) {
      // Validación: no puede estar vacío
      if (value == null || value.isEmpty) {
        return 'Por favor, ingresa la identificación fiscal'; // Mensaje de error
      }
      return null; // Retorna null si la validación es correcta
    },
  );
}
// Widget para crear un grupo de campos repetibles para las personas de contacto// Widget para crear un grupo de campos repetibles para las personas de contacto
Widget repeatingGroupField(List<Map<String, String>> items, String title, String fieldName, String fieldRole, {required Function() onAdd}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), // Título del grupo
      SizedBox(height: 10), // Espacio entre el título y el contenido
      ...items.map((item) {
        // Genera campos para cada persona de contacto
        return Row(
          children: [
            Expanded(
              child: TextFormField(
                initialValue: item[fieldName], // Valor inicial
                decoration: InputDecoration(
                  labelText: fieldName, // Etiqueta del campo
                  border: OutlineInputBorder(), // Borde del campo
                ),
                onChanged: (value) {
                  item[fieldName] = value; // Actualiza el valor en la lista
                },
              ),
            ),
            SizedBox(width: 10), // Espacio entre los campos
            Expanded(
              child: TextFormField(
                initialValue: item[fieldRole], // Valor inicial
                decoration: InputDecoration(
                  labelText: fieldRole, // Etiqueta del campo
                  border: OutlineInputBorder(), // Borde del campo
                ),
                onChanged: (value) {
                  item[fieldRole] = value; // Actualiza el valor en la lista
                },
              ),
            ),
          ],
        );
      }).toList(),
      SizedBox(height: 10), // Espacio después de los campos
      ElevatedButton(
        onPressed: onAdd, // Llama a la función pasada para agregar un nuevo campo
        child: Text('Agregar Persona de Contacto'), // Texto del botón
      ),
    ],
  );
}
