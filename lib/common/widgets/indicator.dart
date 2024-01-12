import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class IndicatorWidgets extends StatelessWidget {
  const IndicatorWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 320,
        child: Stack(
          children: [
            const AnimatedRadialGauge(
                duration: Duration(seconds: 3),
                curve: Curves.bounceIn,
                radius: 170,
                value: 69,
                axis: GaugeAxis(
                    pointer: GaugeAxis.defaultPointer,
                    min: 2,
                    max: 100,
                    degrees: 180,
                    style: GaugeAxisStyle(
                      blendColors: true,
                      thickness: 30,
                      background: Color(0xFF1B252D),
                      segmentSpacing: 4,
                    ),
                    progressBar: GaugeProgressBar.rounded(
                      gradient: GaugeAxisGradient(
                        colors: [Color(0xFF585ED7), Color(0xFFF64754)],
                      ),
                    ),
                    segments: [
                      GaugeSegment(
                        from: 0,
                        to: 33.3,
                        color: Color(0xFF1B252D),
                        cornerRadius: Radius.zero,
                      ),
                      GaugeSegment(
                        from: 33.3,
                        to: 66.6,
                        color: Color(0xFF1B252D),
                        cornerRadius: Radius.zero,
                      ),
                      GaugeSegment(
                        from: 66.6,
                        to: 100,
                        color: Color(0xFFF64754),
                        cornerRadius: Radius.zero,
                      ),
                    ])),
            Positioned.fill(
                top: 60,
                left: 0,
                right: 0,
                child: Center(
                    child: Stack(
                  children: [
                    Image.asset(
                      'assets/circle.png',
                      width: 280,
                      height: 280,
                    ),
                    Positioned(
                        top: 30,
                        left: 90,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF455F73),
                            shape: OvalBorder(),
                          ),
                        )),
                    const Positioned.fill(
                        bottom: 12,
                        child: Center(
                          child: Text(
                            '24',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              height: 0.01,
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 70,
                        left: 0,
                        right: 10,
                        child: Center(
                          child: SvgPicture.asset("assets/cc.svg"),
                        )),
                    const Positioned(
                        bottom: 48,
                        left: 25,
                        right: 0,
                        child: Center(
                            child: Text(
                          'c',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w700,
                          ),
                        )))
                  ],
                )))
          ],
        ),
      ),
    );
  }
}
