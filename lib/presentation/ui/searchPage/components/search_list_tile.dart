import 'package:flutter/material.dart';

import '../../../../models/plant_details.dart';
import '../../detailsPage/details_page.dart';

class SearchListTile extends StatelessWidget {
  const SearchListTile({super.key, required this.data});
  final PlantDetails data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => DetailsPage(data: data)),
        ),
      ),
      enableFeedback: true,
      visualDensity: VisualDensity.comfortable,
      enabled: true,
      style: ListTileStyle.list,
      contentPadding: const EdgeInsets.all(5),
      trailing: CircleAvatar(
        minRadius: 30, maxRadius: 60,
        backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(50),
        // foregroundColor: Colors.white,
        child: Flexible(
          child: Text(
            "\$${data.cost.toInt()}",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
      leading: CircleAvatar(
        child: ClipOval(
          child: Image.network(
            data.imageUrls[0],
            filterQuality: FilterQuality.low,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        data.name,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      subtitle: Text(
        data.description,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}
