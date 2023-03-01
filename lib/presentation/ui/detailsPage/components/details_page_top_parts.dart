import 'package:flutter/material.dart';
import 'package:green_vibe/models/plant_details.dart';

import '../../common components/add_to_cart_button.dart';

class DetailsPageTopPart extends StatefulWidget {
  final PlantDetails data;
  const DetailsPageTopPart({required this.data, super.key});

  @override
  State<DetailsPageTopPart> createState() => _DetailsPageTopPartState();
}

class _DetailsPageTopPartState extends State<DetailsPageTopPart> {
  PageController controller = PageController();
  int pillIndex = 0;
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.4,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (value) => setState(() => pillIndex = value),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200,
                      child: Image.network(
                        widget.data.imageUrls[index],
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      ),
                    );
                  },
                  itemCount: widget.data.imageUrls.length, // Can be null
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isFavourite = !isFavourite;
                      });
                    },
                    icon: Icon(
                      !isFavourite ? Icons.favorite_border : Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 100,
                          width: 10,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return pillIndex == index.toInt()
                                  ? Container(
                                      width: 2,
                                      height: 22,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6)),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        controller.animateToPage(index,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.ease);
                                        setState(() {
                                          index = controller.page!.toInt();
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green.shade100,
                                        radius: 10,
                                      ),
                                    );
                            },
                            itemCount: widget.data.imageUrls.length,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Text(
                                widget.data.name,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Text(
                                widget.data.description,
                                maxLines: 5,
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$ ${widget.data.cost}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 24,
                                  ),
                                ),
                                const AddToCartButton(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
