import 'package:waterfall_tourism_ui/config/theme.dart';
import 'package:waterfall_tourism_ui/models/models.dart';
import 'package:waterfall_tourism_ui/widgets/custom_destination_explore.dart';
import 'package:flutter/material.dart';

class ExploreDestinationPage extends StatelessWidget {
  const ExploreDestinationPage({super.key});
  static const String routName = '/exploreDestination';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routName),
      builder: (_) => const ExploreDestinationPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultMargin),
      child: ListView(
        children: [
          header(),
          destination(context),
        ],
      ),
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Explore',
          style: greenTextStyle.copyWith(
            fontSize: 30,
            fontWeight: light,
          ),
        ),
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
      ],
    );
  }

  Widget destination(context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 43),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/destinationDetailPage',
                    arguments: DataDestination(
                      'assets/image_waterfall1.png',
                      'Cikaso Waterfall',
                      'Ciniti Village, Cibitung, Sukabumi',
                    ),
                  );
                },
                child: Container(
                  width: 245,
                  height: 245,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage('assets/image_explore1.png'),
                    ),
                  ),
                ),
              ),
              Column(
                children: const [
                  CustomDestinationExplore(
                      imageUrl: 'assets/image_explore2.png'),
                  CustomDestinationExplore(
                      imageUrl: 'assets/image_explore3.png'),
                ],
              )
            ],
          ),
          Row(
            children: const [
              CustomDestinationExplore(imageUrl: 'assets/image_explore4.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore5.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore6.png'),
            ],
          ),
          Row(
            children: const [
              CustomDestinationExplore(imageUrl: 'assets/image_explore7.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore8.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore9.png'),
            ],
          ),
          Row(
            children: const [
              CustomDestinationExplore(imageUrl: 'assets/image_explore10.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore11.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore12.png'),
            ],
          ),
          Row(
            children: const [
              CustomDestinationExplore(imageUrl: 'assets/image_explore13.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore14.png'),
              CustomDestinationExplore(imageUrl: 'assets/image_explore15.png'),
            ],
          ),
        ],
      ),
    );
  }
}
