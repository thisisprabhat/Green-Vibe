import 'package:flutter/material.dart';
import 'package:green_vibe/presentation/ui/loginAndSignUpPage/loginPage.dart';
import 'package:green_vibe/provider/data_provider.dart';
import 'package:green_vibe/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const GreenVibe());
}

class GreenVibe extends StatelessWidget {
  const GreenVibe({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomePageProvider>(
            create: (_) => HomePageProvider()),
        ChangeNotifierProvider<DataProvider>(
          create: (_) => DataProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GreenVibe',
        theme: ThemeData.light().copyWith(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFF67864a))
              .copyWith(
                  primary: const Color(0XFF67864a), onPrimary: Colors.white),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
