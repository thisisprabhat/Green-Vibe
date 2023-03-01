import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:green_vibe/presentation/ui/homePage/home_page.dart';
import 'package:lottie/lottie.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  bool _isFirstWidget = true;

  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // countdown();
    final colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 250,
                      child: Lottie.asset("assets/lottie/otp.json"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _text,
                      decoration: InputDecoration(
                        label: const Text('Enter otp'),
                        iconColor: colorscheme.onPrimary,
                        prefix: const Text(""),
                        icon: const Icon(Icons.password),
                        errorText: _validate ? 'Value Can\'t Be Empty' : null,
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      keyboardAppearance: Brightness.dark,
                      enabled: true,
                    ),
                    _isFirstWidget
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  SizedBox(
                                    height: 15,
                                    width: 15,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: colorscheme.primary,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Fetching otp automatically',
                                    style:
                                        TextStyle(color: colorscheme.primary),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              CircularCountDownTimer(
                                duration: 30,
                                initialDuration: 0,
                                controller: CountDownController(),
                                width: 20,
                                height: 20,
                                ringColor: colorscheme.background,
                                ringGradient: null,
                                fillColor: colorscheme.surface,
                                fillGradient: null,
                                backgroundColor: colorscheme.background,
                                backgroundGradient: null,
                                strokeWidth: 1.0,
                                strokeCap: StrokeCap.round,
                                textStyle: TextStyle(
                                    fontSize: 14.0,
                                    color: colorscheme.primary,
                                    fontWeight: FontWeight.bold),
                                textFormat: CountdownTextFormat.S,
                                isReverse: true,
                                isReverseAnimation: true,
                                isTimerTextShown: true,
                                autoStart: true,
                                onStart: () {
                                  debugPrint('Countdown Started');
                                },
                                onComplete: () {
                                  debugPrint('Countdown Ended');
                                  setState(() => _isFirstWidget = false);
                                },
                                onChange: (String timeStamp) {
                                  debugPrint('Countdown Changed $timeStamp');
                                },
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          )
                        : Center(
                            child: TextButton(
                              onPressed: () {
                                setState(() => _isFirstWidget = true);
                                // countdown();
                              },
                              child: const Text("Resend Otp"),
                            ),
                          ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorscheme.primary),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      setState(() {
                        _text.text.isEmpty
                            ? _validate = true
                            : _validate = false;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login,
                          color: colorscheme.onPrimary,
                        ),
                        Text('  Login',
                            style: TextStyle(color: colorscheme.onPrimary)),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
