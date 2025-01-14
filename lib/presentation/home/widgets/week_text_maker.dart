 import 'package:flutter/material.dart';
import 'package:work_task/core/common/constants/app_colors.dart';
import 'package:work_task/core/utils/app_responsive.dart';

Widget weekTextMaker(String text) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: AppResponsive.width(15),
            color: AppColors.black.withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }