import 'package:flutter/material.dart';
import 'package:work_task/core/common/constants/app_colors.dart';
import 'package:work_task/core/utils/app_responsive.dart';

Widget calendarDays(
    String text1, String text2, String? image, Color? bg, bool? isNotBald) {
  return Expanded(
    child: Container(
      height: AppResponsive.height(61),
      padding: EdgeInsets.all(AppResponsive.width(5)),
      decoration: BoxDecoration(
        color: bg ?? AppColors.white,
        border: Border(
          right: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.6),
          ),
          bottom: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.6),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: TextStyle(
                  color: bg == AppColors.pink.withValues(alpha: 0.6) ||
                          bg == AppColors.orange
                      ? AppColors.white
                      : isNotBald ?? false
                          ? AppColors.grey
                          : AppColors.black,
                  fontSize: AppResponsive.width(17.5),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: bg == AppColors.pink.withValues(alpha: 0.6) ||
                          bg == AppColors.orange
                      ? AppColors.white
                      : AppColors.grey,
                  fontSize: AppResponsive.width(12),
                ),
              ),
            ],
          ),
          image != null
              ? Image(
                  image: AssetImage(
                    image,
                  ),
                  height: AppResponsive.width(20),
                )
              : SizedBox(
                  height: AppResponsive.width(20),
                ),
        ],
      ),
    ),
  );
}
