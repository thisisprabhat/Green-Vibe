// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:green_vibe/models/plant_details.dart';
import 'package:green_vibe/presentation/ui/homePage/components/plant_card.dart';
import 'package:green_vibe/presentation/ui/searchPage/app_search_page.dart';
import 'package:provider/provider.dart';

import '../../../../provider/data_provider.dart';
import '../../../../provider/home_page_provider.dart';

class HomePageList extends StatelessWidget {
  const HomePageList({super.key});

  @override
  Widget build(BuildContext context) {
    var indoor = context.read<DataProvider>().indoorPlants;
    var green = context.read<DataProvider>().green;
    var shape = context.read<DataProvider>().indoorPlants;

    return PageView(
      scrollDirection: Axis.vertical,
      controller: context.read<HomePageProvider>().controller,
      pageSnapping: true,
      reverse: false,
      children: [
        HomePageItems(
          firstTitle: "Shape",
          secondTitle: "Close",
          data: shape,
        ),
        HomePageItems(
          firstTitle: "Indoor",
          secondTitle: "Plant",
          data: indoor,
        ),
        HomePageItems(
          firstTitle: "Green",
          secondTitle: "Plants",
          data: green,
        ),
      ],
    );
  }
}

class HomePageItems extends StatelessWidget {
  const HomePageItems({
    required this.data,
    required this.firstTitle,
    required this.secondTitle,
    super.key,
  });
  final String firstTitle;
  final String secondTitle;
  final List<PlantDetails> data;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          leading: const SizedBox(),
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          collapsedHeight: 135,
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 1,
            collapseMode: CollapseMode.parallax,
            stretchModes: const [StretchMode.zoomBackground],
            titlePadding: const EdgeInsets.only(left: 10, top: 60),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstTitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  secondTitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cambay",
                  ),
                ),
              ],
            ),
          ),
          expandedHeight: 150,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => AppSearchPage(context).navigateToSearchPage(),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => PlantCard(index: index, data: data[index]),
            childCount: data.length,
          ),
        ),
      ],
    );
  }
}
