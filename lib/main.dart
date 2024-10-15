import 'package:flutter/material.dart';
import 'screens/general_info_screen.dart';
import 'screens/contact_info_screen.dart';
import 'screens/administrative_info_screen.dart';
import 'screens/faculties_screen.dart';
import 'screens/accreditation_screen.dart';
import 'screens/financial_screen.dart';
import 'screens/services_screen.dart';
import 'screens/additional_info_screen.dart';
import 'screens/documentation_screen.dart';
import 'screens/confirmation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro de Universidades',
      theme: ThemeData(
        primarySwatch: Colors.blue, //linea para queitar la marca de agua debug
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => GeneralInfoScreen(),
        '/contactInfo': (context) => ContactInfoScreen(),
        '/administrativeInfo': (context) => AdministrativeInfoScreen(),
        '/faculties': (context) => FacultiesScreen(),
        '/accreditation': (context) => AccreditationScreen(),
        '/financialInfo': (context) => FinancialScreen(),
        '/services': (context) => ServicesScreen(),
        '/additionalInfo': (context) => AdditionalInfoScreen(),
        '/documentation': (context) => DocumentationScreen(),
        '/confirmation': (context) => ConfirmationScreen(),
      },
    );
  }
}
