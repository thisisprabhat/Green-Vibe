import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_vibe/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class SideBarElements extends StatelessWidget {
  const SideBarElements({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //This stack is added to remove ui glitch occuring at border of pill
      alignment: Alignment.centerRight,
      children: [
        Container(
          color: Theme.of(context).colorScheme.primary,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.category,
                    color: Colors.white,
                  ),
                ),
                const CategorySelectord(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: double.maxFinite,
          width: 1,
        )
      ],
    );
  }
}

class CategorySelectord extends StatefulWidget {
  const CategorySelectord({super.key});

  @override
  State<CategorySelectord> createState() => _CategorySelectordState();
}

class _CategorySelectordState extends State<CategorySelectord> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<AlignmentGeometry>(
      curve: Curves.linearToEaseOut,
      tween: Tween<AlignmentGeometry>(
        begin: context.watch<HomePageProvider>().getPillAlignment,
        end: context.watch<HomePageProvider>().getPillAlignment,
      ),
      duration: const Duration(seconds: 1),
      builder:
          (BuildContext context, AlignmentGeometry alignment, Widget? child) {
        return RotatedBox(
          quarterTurns: -1,
          child: Stack(
            alignment: alignment,
            children: [
              SizedBox(
                width: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SideBarText(
                            alignment: Alignment.bottomLeft,
                            index: 0,
                            title: "Shape Close"),
                        SideBarText(
                            alignment: Alignment.bottomCenter,
                            index: 1,
                            title: "Indoor plant"),
                        SideBarText(
                            alignment: Alignment.bottomRight,
                            index: 2,
                            title: "Green Plant"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/images/svg/pill.svg",
                // color: Colors.white,
              ),
            ],
          ),
        );
      },
    );
  }
}

class SideBarText extends StatelessWidget {
  const SideBarText({
    required this.alignment,
    required this.index,
    required this.title,
    Key? key,
  }) : super(key: key);
  final Alignment alignment;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 25),
        child: Text(
          title,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      onTap: () {
        context.read<HomePageProvider>().setPillAlignment = alignment;
        context.read<HomePageProvider>().controller.animateToPage(index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linearToEaseOut);
      },
    );
  }
}
