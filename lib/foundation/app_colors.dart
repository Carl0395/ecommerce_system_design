import 'package:ecommerce_system_design/tokens/color_tokens.dart';

/// [AppColors] centraliza todos los colores usados en la UI,
/// permitiendo mantener consistencia visual y facilitar cambios globales.
///
/// Está basado en el archivo de [ColorTokens], que contiene
/// los valores reales de color (hex, ARGB, etc.).
///
/// Este archivo se integra dentro de la capa de *Design Tokens*
/// siguiendo el enfoque de **Atomic Design**.
class AppColors {
  // Constructor privado para evitar instancias
  AppColors._();

  /// Color principal de la marca (botones, links activos, etc.)
  static const primaryColor = ColorTokens.green;

  /// Color secundario (fondos claros, elementos de soporte)
  static const secondaryColor = ColorTokens.white;

  /// Color secundario (fondos claros, elementos de soporte)
  static const tertiaryColor = ColorTokens.strongGreen;

  /// Color de fondo principal de la app
  static const backgroundColor = ColorTokens.lightGrey;

  /// Color para títulos
  static const textTitle = ColorTokens.strongGreen;

  /// Color para subtítulos
  static const textSubtitle = ColorTokens.green;

  /// Color para el texto general de una etiqueta
  static const textLabel = ColorTokens.strongGrey;

  /// Color para el texto general del cuerpo
  static const textBody = ColorTokens.strongGrey;

  /// Color para el texto de botones
  static const textButton = ColorTokens.white;

  /// Color de fondo para botones primarios
  static const primaryButton = ColorTokens.green;

  /// Color de fondo para botones secundarios
  static const secondaryButton = ColorTokens.white;

  /// Color de fondo para botones secundarios
  static const border = ColorTokens.lightGreyAccent;
}
