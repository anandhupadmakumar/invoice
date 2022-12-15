import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice/core/constants/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        title: Text(
          'INVOICE',
          style: TextStyle(
              color: Colors.grey, fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                    children: [
                      InvoiceTextField(
                        hintText: '< ${AppLocalizations.of(context)!.company}>',
                      ),
                      InvoiceTextField(
                        hintText: '<${AppLocalizations.of(context)!.street}>',
                      ),
                      InvoiceTextField(
                        hintText: '<${AppLocalizations.of(context)!.postcode}>',
                      ),
                      InvoiceTextField(
                        hintText:
                            '<${AppLocalizations.of(context)!.phonenumber}>',
                        inputType: TextInputType.phone,
                      ),
                      InvoiceTextField(
                          hintText: '<${AppLocalizations.of(context)!.email}>',
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
                          hintText: AppLocalizations.of(context)!.date,
                          hintStyle: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      height15,
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)!.invoiceno,
                          hintStyle: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InvoiceTextField(
                          hintText: AppLocalizations.of(context)!.payment)
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
                    '<${AppLocalizations.of(context)!.contactname}>',
                    '<${AppLocalizations.of(context)!.client}>',
                    '<${AppLocalizations.of(context)!.address}>',
                    '<${AppLocalizations.of(context)!.phonenumber}>',
                    '<${AppLocalizations.of(context)!.email}>'
                  ]),
                ),
                BillAndShipWidget(
                  title: 'SHIP TO',
                  textFieldWidgets: textfieldShipToColumnWidget([
                    '<${AppLocalizations.of(context)!.department}>',
                    '<${AppLocalizations.of(context)!.client}>',
                    '<${AppLocalizations.of(context)!.address}>',
                    '<${AppLocalizations.of(context)!.phonenumber}>'
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
                    SizedBox(
                      width: 200.w,
                      child: const Text(
                        'Remarks / Payment Instructions:',
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                    ),
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
                          ),
                        ),
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
                  children: [divThick5],
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
