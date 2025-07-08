import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderContainer extends StatelessWidget {
  final String svgIcon;
  final String title;
final bool isActive;
final void Function()? onTap;


  const GenderContainer({
    super.key,
    required this.svgIcon,
    required this.title, this.isActive=false, this.onTap,


  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
        width: 160,
        height: 210,
        decoration: BoxDecoration(
color:isActive? Color(0xffE83D67): Color(0xff24263b),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgIcon,
              height: 96,
              width: 96,
            ),
            SizedBox(height: 17),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}