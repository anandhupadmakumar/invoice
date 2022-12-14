
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors/colors.dart';
import '../../../core/constants/constants.dart';

class BillAndShipWidget extends StatelessWidget {
  const BillAndShipWidget({
    Key? key,
    required this.title,
    required this.textFieldWidgets,
  }) : super(key: key);
  final String title;
  final Widget textFieldWidgets;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      width: 130.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                TextStyle(color: kDarkBlue, fontWeight: FontWeight.bold),
          ),
         divThick2,
          textFieldWidgets,
        ],
      ),
    );
  }
}
