//import 'package:flutter/material.dart';

class Universidad {
  // Información General
  String nombreOficial;
  String siglas;
  String tipoUniversidad;
  DateTime fechaFundacion;
  String pais;
  String ciudad;
  String direccion;
  String codigoPostal;

  // Información de Contacto
  String correoInstitucional;
  String telefonoPrincipal;
  String telefonoAdicional;
  String paginaWeb;
  String facebook;
  String twitter;

  // Datos Administrativos
  String rector;
  String cargoRepresentante;
  String correoRepresentante;
  String identificacionFiscal;
  List<Map<String, String>> personasContacto;

  // Facultades y Carreras
  int numeroFacultades;
  List<String> facultades;
  List<Map<String, String>> carrerasPorFacultad;

  // Acreditación y Reconocimientos
  String acreditacion;
  String numeroRegistro;
  String certificaciones;
  String premios;

  // Datos Financieros
  String tipoFinanciamiento;
  double costosPregrado;
  double costosPosgrado;
  double otrosCostos;
  List<String> fuentesIngreso;

  // Servicios e Infraestructura
  int numeroCampus;
  int bibliotecas;
  int laboratorios;
  bool residenciasUniversitarias;
  bool centrosInvestigacion;
  String deportesRecreacion;

  // Información Adicional
  bool involucradaEnInvestigacion;
  String descripcionInvestigacion;
  bool programasIntercambio;
  List<String> universidadesSocias;
  bool colaboracionEmpresarial;
  String descripcionColaboracion;

  // Documentación Adjunta
  String estatutos;
  String certificadoAcreditacion;
  String planEstudios;

  Universidad({
    required this.nombreOficial,
    required this.siglas,
    required this.tipoUniversidad,
    required this.fechaFundacion,
    required this.pais,
    required this.ciudad,
    required this.direccion,
    required this.codigoPostal,
    required this.correoInstitucional,
    required this.telefonoPrincipal,
    required this.telefonoAdicional,
    required this.paginaWeb,
    required this.facebook,
    required this.twitter,
    required this.rector,
    required this.cargoRepresentante,
    required this.correoRepresentante,
    required this.identificacionFiscal,
    required this.personasContacto,
    required this.numeroFacultades,
    required this.facultades,
    required this.carrerasPorFacultad,
    required this.acreditacion,
    required this.numeroRegistro,
    required this.certificaciones,
    required this.premios,
    required this.tipoFinanciamiento,
    required this.costosPregrado,
    required this.costosPosgrado,
    required this.otrosCostos,
    required this.fuentesIngreso,
    required this.numeroCampus,
    required this.bibliotecas,
    required this.laboratorios,
    required this.residenciasUniversitarias,
    required this.centrosInvestigacion,
    required this.deportesRecreacion,
    required this.involucradaEnInvestigacion,
    required this.descripcionInvestigacion,
    required this.programasIntercambio,
    required this.universidadesSocias,
    required this.colaboracionEmpresarial,
    required this.descripcionColaboracion,
    required this.estatutos,
    required this.certificadoAcreditacion,
    required this.planEstudios,
  });
}
