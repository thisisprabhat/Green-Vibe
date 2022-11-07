import 'package:flutter/material.dart';
import 'package:green_vibe/presentation/ui/homePage/components/side_bar_elements.dart';

import 'components/home_page_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(flex: 2, child: SideBarElements()),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: const SafeArea(
                child: HomePageList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
