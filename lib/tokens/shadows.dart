import 'package:flutter/material.dart';

class Shadows {
  static final xs = BoxShadow(
    offset: Offset(1, 1),
    blurRadius: 2,
    color: Colors.black.withValues(alpha: 0.1),
  );
  static final sm = BoxShadow(
    offset: Offset(1, 1),
    blurRadius: 4,
    color: Colors.black.withValues(alpha: 0.2),
  );
  static final md = BoxShadow(
    offset: Offset(2, 2),
    blurRadius: 4,
    color: Colors.black.withValues(alpha: 0.4),
  );
  static final lightMd = BoxShadow(
    offset: Offset(-2, -2),
    blurRadius: 4,
    color: Colors.white.withValues(alpha: 0.7),
  );
}
