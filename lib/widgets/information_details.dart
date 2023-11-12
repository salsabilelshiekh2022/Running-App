import 'package:flutter/material.dart';
import 'package:running_app/widgets/app_text.dart';

class InformationDetails extends StatelessWidget {
  const InformationDetails(
      {super.key,
      required this.name,
      required this.value,
      required this.image});

  final String name;
  final String value;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(
          height: 4,
        ),
        AppText(
          text: value,
          fontSize: 22,
          fontFamily: 'Lato',
        ),
        const SizedBox(
          height: 2,
        ),
        AppText(
          text: name,
          fontSize: 12,
          color: const Color(0xffcdcdcd),
        ),
      ],
    );
  }
}
