import 'package:flutter/material.dart';
import 'package:green_vibe/models/plant_details.dart';
import 'package:green_vibe/presentation/ui/detailsPage/components/details_page_top_parts.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.data, super.key});
  final PlantDetails data;

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ListView(
        children: [
          DetailsPageTopPart(data: data),
          const SizedBox(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HeightTemperaturePot(
                    title: "Height",
                    description: "${data.height} cm",
                    icon: 'assets/images/icons/scale.png',
                  ),
                  HeightTemperaturePot(
                    title: "Temperature",
                    description:
                        "${data.temMin.toInt()}°C - ${data.temmax.toInt()}°C",
                    icon: 'assets/images/icons/thermometer.png',
                  ),
                  HeightTemperaturePot(
                    title: "Pot",
                    description: data.potDescription,
                    icon: 'assets/images/icons/plant.png',
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "About",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  data.about,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 233, 255, 224),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Special Features",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    for (var feature in data.specialFeatures)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, right: 6),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 6,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              feature,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 233, 255, 224),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Buy Now")),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeightTemperaturePot extends StatelessWidget {
  const HeightTemperaturePot({
    required this.icon,
    required this.description,
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  final String description;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            icon,
            width: 36,
            height: 36,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              fontSize: 18),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2,
              fontSize: 14),
        ),
      ],
    );
  }
}
