import 'package:waterfall_tourism_ui/config/theme.dart';
import 'package:waterfall_tourism_ui/widgets/widget.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});
  static const String routName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routName),
      builder: (_) => const GetStartedPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/background.png',
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore the',
                  style: whiteTextStyle.copyWith(
                    fontSize: 50,
                    fontWeight: light,
                  ),
                ),
                Text(
                  'Waterfall',
                  style: whiteTextStyle.copyWith(
                    fontSize: 60,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'in Sukabumi',
                  style: whiteTextStyle.copyWith(
                    fontSize: 50,
                    fontWeight: light,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Find various beautiful waterfalls\nin Sukabumi easily.',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: regular,
                  ),
                ),
                Center(
                  child: CustomButton(
                    marginTop: 50,
                    title: 'Get Started',
                    width: 228,
                    colorButton: kWhiteColor,
                    textStyle: greenTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/mainPage');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
