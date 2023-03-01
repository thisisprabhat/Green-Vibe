import 'package:flutter/material.dart';

import 'package:green_vibe/presentation/ui/loginAndSignUpPage/otp_page.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController mobileNo = TextEditingController();
    final colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ListView(
              children: [
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  // child: Image.asset('assets/images/logo.png'),
                  child: Lottie.asset("assets/lottie/login2.json"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome to",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Green",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 36,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " Vibe",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: const Text('Phone'),
                    iconColor: colorscheme.onPrimary,
                    prefix: const Text("+91 "),
                    icon: const Icon(Icons.phone),
                  ),
                  controller: mobileNo,
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  keyboardAppearance: Brightness.dark,
                  enabled: true,
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: colorscheme.onPrimary,
                      backgroundColor: colorscheme.primary,
                      elevation: 0),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OtpPage(),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.login),
                        Text("  Login"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: colorscheme.primaryContainer),
                  onPressed: () {},
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.g_mobiledata),
                        Text("  Login with google"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 1),
                  onPressed: () {},
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.how_to_reg_outlined),
                        Text("  Register as new user"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      highlightColor: Colors.red,
      onHover: ((value) =>
          value ? debugPrint("howered") : debugPrint("unhowered")),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.login,
            color: Colors.red,
          ),
          Text(
            " My Custom Button",
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
