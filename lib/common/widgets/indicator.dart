import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class IndicatorWidgets extends StatelessWidget {
  const IndicatorWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(
        children: [
          AnimatedRadialGauge(
              duration: Duration(seconds: 2),
              curve: Curves.bounceIn,
              radius: 140,
              value: 69,
              axis: GaugeAxis(
                  pointer: GaugeAxis.defaultPointer,
                  min: 2,
                  max: 100,
                  degrees: 180,
                  style: GaugeAxisStyle(
                    blendColors: true,
                    thickness: 20,
                    background: Color(0xFFDFE2EC),
                    segmentSpacing: 4,
                  ),
                  progressBar: GaugeProgressBar.rounded(
                    gradient: GaugeAxisGradient(
                      colors: [Color(0xFFFD6E6A), Color(0xFFFFC600)],
                    ),
                  ),
                  segments: [
                    GaugeSegment(
                      from: 0,
                      to: 33.3,
                      color: Color(0xFFD9DEEB),
                      cornerRadius: Radius.zero,
                    ),
                    GaugeSegment(
                      from: 33.3,
                      to: 66.6,
                      color: Color(0xFFD9DEEB),
                      cornerRadius: Radius.zero,
                    ),
                    GaugeSegment(
                      from: 66.6,
                      to: 100,
                      color: Color(0xFFD9DEEB),
                      cornerRadius: Radius.zero,
                    ),
                  ])),
          Positioned.fill(
              top: 40, left: 0, right: 0, child: Center(child: Text("69")))
        ],
      ),
    );
  }
}
