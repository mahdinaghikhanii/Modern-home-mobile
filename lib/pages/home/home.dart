import 'package:flutter/material.dart';
import 'package:modern_home/common/widgets/indicator.dart';

import 'widgets/listview_mode.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            backgroundColor: const Color(0xFF1B252D),
            centerTitle: true,
            title: const Text(
              'Living room',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            )),
        backgroundColor: const Color(0xFF1B252D),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2C4457)),
                onPressed: () {},
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 58,
                  child: const Center(
                    child: Text(
                      'Turn off',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )),
          ),
        ),
        body: const SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Text(
                'Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: 0.24,
                ),
              ),
            ),
            ListViewModeWidgets(),
            SizedBox(height: 40),
            IndicatorWidgets(),
            SizedBox(height: 18),
            Center(
              child: Text(
                'Adjust the air conditioner temperature to\nsuit you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w300,
                ),
              ),
            )
          ]),
        ));
  }
}
