import 'package:waterfall_tourism_ui/config/theme.dart';
import 'package:waterfall_tourism_ui/models/models.dart';
import 'package:flutter/material.dart';

class CustomDestinationPopuler extends StatelessWidget {
  const CustomDestinationPopuler({
    super.key,
    required this.imageDestination,
    required this.titleDestination,
    required this.locationDestination,
    required this.archive,
  });

  final String imageDestination;
  final String titleDestination;
  final String locationDestination;
  final bool archive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 254,
          height: 369,
          margin: EdgeInsets.only(
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(imageDestination),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          titleDestination,
                          style: whiteTextStyle.copyWith(
                            fontSize: 14.0,
                            fontWeight: bold,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 7,
                              height: 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/location_white.png',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              locationDestination,
                              style: whiteTextStyle.copyWith(
                                fontSize: 7.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/destinationDetailPage',
                        arguments: DataDestination(
                          imageDestination,
                          titleDestination,
                          locationDestination,
                        ),
                      );
                    },
                    child: Container(
                      height: 29,
                      width: 68,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'View',
                          style: greenTextStyle.copyWith(
                            fontSize: 12.0,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: archive
                        ? const AssetImage(
                            'assets/archive_active.png',
                          )
                        : const AssetImage(
                            'assets/archive.png',
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
        ),
      ],
    );
  }
}
