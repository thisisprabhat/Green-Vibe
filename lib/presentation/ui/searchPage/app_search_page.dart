import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:search_page/search_page.dart';

import '../../../provider/data_provider.dart';
import 'components/search_list_tile.dart';

class AppSearchPage {
  AppSearchPage(this.context);
  final BuildContext context;
  navigateToSearchPage() => showSearch(
        context: context,
        delegate: SearchPage(
            searchLabel: "Search plants, cost, speciality",
            searchStyle:
                TextStyle(color: Theme.of(context).colorScheme.primary),
            failure: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Lottie.network(
                        width: 150,
                        "https://assets10.lottiefiles.com/packages/lf20_jkbuwuhk.json"),
                  ),
                  Text(
                    "No Search Results Found",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 22),
                  )
                ],
              ),
            ),
            builder: ((plantDetails) => SearchListTile(data: plantDetails)),
            suggestion:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Recents",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              for (int i = 0; i < 2; i++)
                SearchListTile(data: context.read<DataProvider>().green[i])
            ]),
            filter: (plantDetails) => [
                  plantDetails.name,
                  plantDetails.cost.toString(),
                  plantDetails.specialFeatures.toString()
                ],
            items: context.read<DataProvider>().green),
      );
}
