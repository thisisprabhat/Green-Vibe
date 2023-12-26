import 'package:flutter/material.dart';
import 'package:green_vibe/models/plant_details.dart';
import 'package:green_vibe/presentation/ui/common%20components/add_to_cart_button.dart';

import '../../detailsPage/details_page.dart';

class PlantCard extends StatefulWidget {
  final int index;
  final PlantDetails data;

  const PlantCard({required this.index, required this.data, Key? key})
      : super(key: key);

  @override
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  bool _animate = false;

  static bool _isStart = true;

  @override
  Widget build(BuildContext context) {
    if (_isStart) {
      Future.delayed(Duration(milliseconds: widget.index * 100), () {
        setState(() {
          _animate = true;
          _isStart = false;
        });
      });
    } else {
      setState(() {
        _animate = true;
        _isStart = true;
      });
    }
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 1000),
      opacity: _animate ? 1 : 0,
      curve: Curves.easeInOutQuart,
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 1000),
        padding: _animate
            ? const EdgeInsets.all(0.0)
            : const EdgeInsets.only(top: 12),
        child: GestureDetector(
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    data: widget.data,
                  ),
                ),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Hero(
                tag: widget.data.imageUrls[0],
                child: Image.asset(
                  widget.data.imageUrls[0],
                  height: 250,
                  width: 250,
                ),
              ),
              //TODO: make it work with network images when real db  is ready
              // Image.network(
              //   widget.data.imageUrls[0],
              //   height: 250,
              //   width: 250,
              //   loadingBuilder: (BuildContext context, Widget child,
              //       ImageChunkEvent? loadingProgress) {
              //     if (loadingProgress == null) {
              //       return child;
              //     }
              //     return Center(
              //       child: SizedBox(
              //         height: 250,
              //         width: 250,
              //         child: Center(
              //           child: CircularProgressIndicator(
              //             value: loadingProgress.expectedTotalBytes != null
              //                 ? loadingProgress.cumulativeBytesLoaded /
              //                     loadingProgress.expectedTotalBytes!
              //                 : null,
              //           ),
              //         ),
              //       ),
              //     );
              //   },
              // ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.data.name,
                maxLines: 1,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.data.description,
                overflow: TextOverflow.clip,
                maxLines: 2,
                style: TextStyle(color: Colors.grey.shade500),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "\$ ${widget.data.cost}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        fontFamily: "Cambay"),
                  ),
                  const AddToCartButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget card(BuildContext context,int index) => GestureDetector(
//     onTap: (() => Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailsPage(
//               index: index,
//               data: data[index],
//             ),
//           ),
//         )),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Hero(
//           placeholderBuilder: (context, heroSize, child) =>
//               CircularProgressIndicator(
//             color: Theme.of(context).colorScheme.primary,
//           ),
//           tag: index,
//           child: Image.network(
//             data[index].imageUrls[0],
//             height: 250,
//             width: 250,
//           ),
//         ),
//         Text(
//           data[index].name,
//           maxLines: 1,
//           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//         ),
//         Text(
//           data[index].description,
//           overflow: TextOverflow.clip,
//           maxLines: 2,
//           style: TextStyle(color: Colors.grey.shade500),
//         ),
//         Row(
//           children: [
//             Text(
//               "\$ ${data[index].cost}",
//               style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22,
//                   fontFamily: "Cambay"),
//             ),
//             Container(
//               padding: const EdgeInsets.all(2),
//               margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               decoration: const BoxDecoration(boxShadow: [
//                 BoxShadow(
//                     offset: const Offset(00.0, 03.0),
//                     spreadRadius: 1.0,
//                     blurRadius: 6,
//                     color: Color.fromARGB(50, 12, 27, 13))
//               ], color: Colors.white, shape: BoxShape.circle),
//               child: const Icon(
//                 Icons.add,
//                 size: 20,
//               ),
//             )
//           ],
//         ),
//       ],
//     ));
