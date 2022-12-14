

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice/core/constants/constants.dart';

import 'widgets/bill_and_ship_widget.dart';
import 'widgets/invoice_table_widget.dart';
import 'widgets/invoice_text_field.dart';
import 'widgets/textfield_ship_to.dart';

class InvoiceHomeScreen extends StatelessWidget {
  const InvoiceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        title: const Text(
          'INVOICE',
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          CircleAvatar(
            radius: cRadius,
            backgroundColor: Colors.grey,
            child: const Center(
              child: Text(
                'LOGO',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          width34,
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300.h,
                  width: 200.h,
                  child: Column(
                    children: const [
                      InvoiceTextField(
                        hintText: '<Your Company Name>',
                      ),
                      InvoiceTextField(
                        hintText: '<123 Street Address>',
                      ),
                      InvoiceTextField(
                        hintText: '<City,State,Zip/Post Code>',
                      ),
                      InvoiceTextField(
                        hintText: '<Phone Number>',
                        inputType: TextInputType.phone,
                      ),
                      InvoiceTextField(
                          hintText: '<Email Address>',
                          inputType: TextInputType.emailAddress),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.h,
                  width: 100.h,
                  child: Column(
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'DATE',
                          hintStyle: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      height15,
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'INVOICE NO.',
                          hintStyle: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const InvoiceTextField(hintText: 'Payment terms')
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BillAndShipWidget(
                  title: 'BILL TO',
                  textFieldWidgets: textfieldBillToColumnWidget([
                    '<Contact Name',
                    '<Client Company Name>',
                    '<Address>',
                    '<Phone>',
                    '<Email>'
                  ]),
                ),
                BillAndShipWidget(
                  title: 'SHIP TO',
                  textFieldWidgets: textfieldShipToColumnWidget([
                    '<Name / Dept>',
                    '<Client Company Name>',
                    '<Address>',
                    '<Phone>'
                  ]),
                ),
              ],
            ),
            const TableWidget(),
           height20,
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Remarks / Payment Instructions:'),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('SUBTOTAL'),
                       height17,
                        const Text('DISCOUNT'),
                       height16,
                        SizedBox(
                          width: 50.w,
                          child: const Text(
                            'SUBTOTAL LESS DISCOUNT',
                            style: TextStyle(overflow: TextOverflow.ellipsis),
                          ),
                        ),
                       height16,
                        const Text('TAX RATE'),
                       height18,
                        const Text('TOTAL TAX'),
                       height12,
                        SizedBox(
                            width: 50.w,
                            child: const Text(
                              'SHIPPING/HANDLING',
                              style: TextStyle(overflow: TextOverflow.ellipsis),
                            ),),
                      ],
                    ),
                    SizedBox(
                      width: 50.w,
                      child: Column(
                        children: [
                          const Text('0.00'),
                         divThick2,
                          const Text('0.00'),
                        divThick2,
                          const Text('0.00'),
                         divThick2,
                          const Text('0.00'),
                          divThick2,
                          const Text('0.00'),
                         divThick2,
                          const Text('0.00'),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    divThick5
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.w),
              child: blackDivThick4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: const Text('Balance due \$'),
                ),
                width40,
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: const Text('-'),
                ),
              ],
            ),
           height20,
            redDivThick20,
          ],
        ),
      ),
    );
  }
}





