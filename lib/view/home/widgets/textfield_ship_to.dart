
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'invoice_text_field.dart';


Widget textfieldShipToColumnWidget(List<String> texts) {
  return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return InvoiceTextField(hintText: texts[index]);
      }),
      separatorBuilder: ((context, index) {
        return const SizedBox(
          height: 0,
        );
      }),
      itemCount: texts.length);
}


Widget textfieldBillToColumnWidget(List<String> texts) {
  return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return InvoiceTextField(hintText: texts[index]);
      }),
      separatorBuilder: ((context, index) {
        return SizedBox(
          height: 0.h,
        );
      }),
      itemCount: texts.length);
}