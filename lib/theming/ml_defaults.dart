import 'package:flutter/material.dart';

class MLDefaults {
  const MLDefaults._();

  // rounded borders

  static BorderRadius get rounded {
    return const BorderRadius.all(Radius.circular(12));
  }

  static BorderRadius get roundedTop {
    return const BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
    );
  }

  static BorderRadius get roundedBottom {
    return const BorderRadius.only(
      bottomLeft: Radius.circular(12),
      bottomRight: Radius.circular(12),
    );
  }

  static RoundedRectangleBorder get roundedRectangle {
    return RoundedRectangleBorder(
      borderRadius: rounded,
    );
  }

  static List<BoxShadow> get boxShadow {
    return [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(0, 3),
      ),
    ];
  }

  // paddings

  static EdgeInsetsGeometry get screenPadding {
    return const EdgeInsets.all(24);
  }
}
