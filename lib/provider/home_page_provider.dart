import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier {
  Alignment _pillAlignment = Alignment.bottomRight;

  Alignment get getPillAlignment => _pillAlignment;

  set setPillAlignment(Alignment pillAlignment) {
    _pillAlignment = pillAlignment;
    notifyListeners();
  }

  final PageController controller = PageController(initialPage: 2);
}
