import 'package:flutter/material.dart';

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
          ],
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
