import 'package:green_vibe/models/plant_details.dart';

class HomePageItemModel {
  HomePageItemModel(this.firstTitle, this.secondTitle, this.data);
  final String firstTitle;
  final String secondTitle;
  final List<PlantDetails> data;
}
