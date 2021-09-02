import 'package:flutter/cupertino.dart';

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
}
