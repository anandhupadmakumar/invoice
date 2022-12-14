
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors/colors.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // padding: const EdgeInsets.all(20.0),
      child: Table(
        textDirection: TextDirection.ltr,
        columnWidths: {
          0: FlexColumnWidth(5.w),
          1: FlexColumnWidth(3.w),
          2: FlexColumnWidth(3.w),
          3: FlexColumnWidth(3.w)
        },
        border: TableBorder.all(color: kBlack),
        children: const [
          TableRow(decoration: BoxDecoration(color: kRed), children: [
            Center(
                child: Text(
              'DESCRIPTION',
              style:
                  TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              'QTY',
              style:
                  TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              'UNIT PRICE',
              style:
                  TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              'TOTAL',
              style:
                  TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            )),
          ]),
          TableRow(children: [
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ]),
          TableRow(
            decoration:
                BoxDecoration(color: kGrey),
            children: [
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ],
          ),
          TableRow(children: [
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ]),
          TableRow(
            decoration:
                BoxDecoration(color: kGrey),
            children: [
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ],
          ),
          TableRow(children: [
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ]),
          TableRow(
            decoration:
                BoxDecoration(color: kGrey),
            children: [
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ],
          ),
          TableRow(children: [
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ]),
          TableRow(
            decoration:
                BoxDecoration(color: kGrey),
            children: [
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ],
          ),
          TableRow(children: [
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(border: InputBorder.none),
            ),
            TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ]),
        ],
      ),
    );
  }
}
