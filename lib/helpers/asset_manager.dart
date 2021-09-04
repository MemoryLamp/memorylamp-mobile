final String _logosPath = "assets/logos";
final String _iconsPath = "assets/icons";
final String _emotionsPath = "assets/emotion";

class AssetManager {
  static String logo(String assetName) => "$_logosPath/$assetName";
  static String icon(String assetName) => "$_iconsPath/$assetName";
  static String emotion(String assetName) => "$_emotionsPath/$assetName";
}
