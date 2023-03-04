import 'package:waterfall_tourism_ui/config/theme.dart';
import 'package:waterfall_tourism_ui/models/models.dart';
import 'package:waterfall_tourism_ui/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DestinationDetailPage extends StatelessWidget {
  const DestinationDetailPage({super.key, required this.data});

  static const String routName = '/destinationDetailPage';
  static Route route({required DataDestination data}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routName),
      builder: (_) => DestinationDetailPage(
        data: data,
      ),
    );
  }

  final DataDestination data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SlidingUpPanel(
        maxHeight: size.height * 0.5,
        minHeight: size.height * 0.1,
        parallaxEnabled: true,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(data.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        panel: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                height: 4,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kGreyColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                bottom: 5,
                top: 60,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.title,
                        style: greenTextStyle.copyWith(
                          fontSize: 30,
                          fontWeight: light,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/archive_active.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/share.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/location_black.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        data.location,
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Introduce',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    '${data.title}, is one of the waterfalls located in the south of Sukabumi Regency. This waterfall is also known as Curug Luhur, but the name ${data.title} is better known to the surrounding community because the water flow comes from a tributary of the ${data.title} River, namely the Cicurug River.',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Center(
                    child: CustomButton(
                      marginTop: 20,
                      title: 'Route',
                      width: 228,
                      colorButton: kPrimaryColor,
                      textStyle: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
    );
  }
}
