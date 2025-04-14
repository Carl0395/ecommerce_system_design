/// [FontSizes] define los tamaños tipográficos base del sistema de diseño.
///
/// Estos valores son usados como design tokens dentro del enfoque
/// de **Atomic Design**, permitiendo una tipografía consistente
/// y adaptable en toda la aplicación.
class FontSizes {
  FontSizes._();

  /// Extra pequeño – útil para etiquetas, botones compactos, o notas (12.0).
  static const xs = 12.0;

  /// Pequeño – usado comúnmente para subtítulos, o texto auxiliar (14.0).
  static const sm = 14.0;

  /// Mediano – tamaño por defecto para texto de párrafos o body (16.0).
  static const md = 16.0;

  /// Grande – ideal para títulos secundarios o encabezados intermedios (20.0).
  static const lg = 20.0;

  /// Extra grande – usado para títulos principales o hero text (24.0).
  static const xl = 24.0;
}
