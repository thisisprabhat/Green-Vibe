class PlantDetails {
  final String plantId;
  final String name;
  final double cost;
  final String description;
  final List<String> imageUrls;
  final double height;
  final double temMin;
  final double temmax;
  final String potDescription;
  final bool isFavourite;
  final bool isOnCart;
  final String about;
  final List<String> specialFeatures;

  PlantDetails(
      {required this.plantId,
      required this.name,
      required this.cost,
      required this.description,
      required this.imageUrls,
      required this.height,
      required this.temMin,
      required this.temmax,
      required this.potDescription,
      required this.about,
      required this.specialFeatures,
      required this.isFavourite,
      required this.isOnCart});
}
