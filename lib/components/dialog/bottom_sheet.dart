

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';

void commonBottomSheet(String title,Widget content,[String btnText = "好的"]){
  Get.bottomSheet(
    enableDrag: true,
      isDismissible:false,
      isScrollControlled:true,//为false，高度为屏幕高度的9/16
      Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(6),topRight: Radius.circular(6))
        ),
        padding: EdgeInsets.only(
            left: 10.hx,
            right: 10.hx,
            top: 16.vx,
            bottom: 8.vx
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title,style:  getTextStyle(color: Colors.black,isBold: true),),
            18.vGap,
            content,
            14.vGap,
            InkWell(child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.hx),
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.vx)),
                  gradient: const LinearGradient(
                      colors: [
                        Color(0xff67cdf8),
                        Color(0xff42a1f8),
                        Color(0xff2372fd),
                      ]
                  )
              ),
              height: 32.vx,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(btnText,style: getTextStyle(color: Colors.white,size: 10),),
            ),onTap: (){
              Get.back();
            },)
          ],
        ),));
}