import 'dart:math';

import 'package:business_card_web/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BusinessCardPhone extends StatelessWidget {
  const BusinessCardPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const BackGroundWidget(),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/cat.png',
                    width: 330,
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'YURY MOROZOV',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            const SocialButtons(),
          ],
        ),
      ),
    );
  }
}

const svgAssets = {
  'assets/email.svg': 'mailto:morozovypa1@gmail.com',
  'assets/telegram.svg': 'https://t.me/yury666morozov',
  'assets/github.svg': 'https://github.com/YuryMorozov2001',
  'assets/google_play.svg':
      'https://play.google.com/store/apps/developer?id=Yury+Morozov',
};

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  void _launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 180.0, bottom: 40),
        child: Transform.rotate(
          angle: -4 * pi / 180,
          child: SizedBox(
            width: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: svgAssets.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => _launchUrl(svgAssets.values.elementAt(index)),
                child: SvgPicture.asset(svgAssets.keys.elementAt(index)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(69),
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 500,
              color: const Color(0xFF171410),
            ),
            Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    const Color(0xFFFF7A00).withOpacity(0.7),
                    Colors.transparent,
                  ],
                  stops: const [0, .7],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
