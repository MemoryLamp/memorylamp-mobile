final String _logosPath = "assets/logos";
final String _iconsPath = "assets/icons";
final String _emotionsPath = "assets/emotion";
final String _imagesPath = "assets/images";

class AssetPaths {
  static String logo(String assetName) => "$_logosPath/$assetName";
  static String icon(String assetName) => "$_iconsPath/$assetName";
  static String emotion(String assetName) => "$_emotionsPath/$assetName";
  static String image(String assetName) => "$_imagesPath/$assetName";
}
