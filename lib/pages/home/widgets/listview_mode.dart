import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_home/data/model/home_model.dart';

class ListViewModeWidgets extends StatefulWidget {
  const ListViewModeWidgets({super.key});

  @override
  State<ListViewModeWidgets> createState() => _ListViewModeWidgetsState();
}

class _ListViewModeWidgetsState extends State<ListViewModeWidgets> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeData.length,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 16, left: 4),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  setState(() {
                    indexSelected = index;
                  });
                },
                child: Container(
                  width: 109,
                  height: 54,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  decoration: ShapeDecoration(
                    color: indexSelected == index
                        ? const Color(0xFF2C4457)
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: indexSelected != index
                          ? const BorderSide()
                          : const BorderSide(
                              width: 1, color: Color(0xFF2C4457)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        homeData[index].title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SvgPicture.asset(homeData[index].icon)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
