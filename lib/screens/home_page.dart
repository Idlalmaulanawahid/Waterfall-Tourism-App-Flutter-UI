import 'package:waterfall_tourism_ui/config/theme.dart';
import 'package:waterfall_tourism_ui/widgets/custom_destination_populer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routName = '/homePage';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routName),
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultMargin),
      child: ListView(
        children: [
          header(),
          Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
            child: Text(
              'Waterfall',
              style: greenTextStyle.copyWith(
                fontSize: 50,
                fontWeight: light,
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 33,
                width: 76,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Populer',
                    style: greenTextStyle.copyWith(
                      fontSize: 14.0,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              Text(
                'Recommended',
                style: greyTextStyle.copyWith(
                  fontSize: 14.0,
                  fontWeight: bold,
                ),
              ),
              Text(
                'Top',
                style: greyTextStyle.copyWith(
                  fontSize: 14.0,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
          destination(),
        ],
      ),
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/search.png',
              ),
            ),
          ),
        ),
        Container(
          width: 46,
          height: 46,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/photo_profile.png',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget destination() {
    return Container(
      margin: const EdgeInsets.only(
        top: 35,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CustomDestinationPopuler(
              imageDestination: 'assets/image_waterfall1.png',
              titleDestination: 'Cikaso Waterfall',
              locationDestination: 'Ciniti Village, Cibitung, Sukabumi',
              archive: true,
            ),
            CustomDestinationPopuler(
              imageDestination: 'assets/image_waterfall2.png',
              titleDestination: 'Sodong Waterfall',
              locationDestination: 'Ciletuh, Ciemas, Sukabumi',
              archive: false,
            ),
          ],
        ),
      ),
    );
  }
}
