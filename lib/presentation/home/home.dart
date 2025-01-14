import 'package:flutter/material.dart';
import 'package:work_task/core/common/constants/app_colors.dart';
import 'package:work_task/core/common/constants/img_paths.dart';
import 'package:work_task/core/utils/app_responsive.dart';
import 'package:work_task/presentation/home/widgets/calendar_day_maker.dart';
import 'package:work_task/presentation/home/widgets/week_text_maker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: AppResponsive.height(70),
        leadingWidth: AppResponsive.width(99),
        leading: Row(
          children: [
            SizedBox(
              width: AppResponsive.width(1),
            ),
            Transform.scale(
              scale: 0.43,
              child: Image(
                image: AssetImage(ImgPaths.appBarLeftImg),
              ),
            ),
          ],
        ),
        title: Text(
          "August",
          style: TextStyle(
            color: AppColors.black,
            fontSize: AppResponsive.width(24),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.calendar_month_rounded,
              size: AppResponsive.width(28),
            ),
          ),
          SizedBox(
            width: AppResponsive.width(2),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                weekTextMaker("Sun"),
                weekTextMaker("Mon"),
                weekTextMaker("Tue"),
                weekTextMaker("Wed"),
                weekTextMaker("Thu"),
                weekTextMaker("Fri"),
                weekTextMaker("Sat"),
              ],
            ),
            Container(
              height: 1.5,
              width: double.infinity,
              color: AppColors.grey.withValues(alpha: 0.7),
            ),
            Row(
              children: [
                calendarDays("28", "10", ImgPaths.leaf, null, true),
                calendarDays("29", "11", ImgPaths.leaf, null, true),
                calendarDays("30", "12", ImgPaths.leaf, null, true),
                calendarDays("31", "13", ImgPaths.leaf, null, true),
                calendarDays("1", "14", ImgPaths.leaf, null, null),
                calendarDays("2", "15", ImgPaths.orangeThing, null, null),
                calendarDays("3", "16", ImgPaths.leaf, null, null),
              ],
            ),
            Row(
              children: [
                calendarDays("4", "17", null, null, null),
                calendarDays("5", "18", null, null, null),
                calendarDays("6", "19", null, null, null),
                calendarDays("7", "20", null, null, null),
                calendarDays("8", "21", null, null, null),
                calendarDays("9", "22", null, null, null),
                calendarDays("10", "23", null, null, null),
              ],
            ),
            Row(
              children: [
                calendarDays("11", "24", null, null, null),
                calendarDays("12", "25", null, null, null),
                calendarDays("13", "26", null, null, null),
                calendarDays("14", "27", null, null, null),
                calendarDays("15", "28", null, null, null),
                calendarDays("16", "1", ImgPaths.blood,
                    AppColors.pink.withValues(alpha: 0.6), null),
                calendarDays("17", "2", ImgPaths.blood,
                    AppColors.pink.withValues(alpha: 0.6), null),
              ],
            ),
            Row(
              children: [
                calendarDays("18", "3", ImgPaths.blood,
                    AppColors.pink.withValues(alpha: 0.6), null),
                calendarDays("19", "4", ImgPaths.blood,
                    AppColors.pink.withValues(alpha: 0.6), null),
                calendarDays("20", "5", null, null, null),
                calendarDays("21", "6", null, null, null),
                calendarDays("22", "7", null, null, null),
                calendarDays("23", "8", null, null, null),
                calendarDays("24", "9", null, null, null),
              ],
            ),
            Row(
              children: [
                calendarDays("25", "10", ImgPaths.leaf, null, null),
                calendarDays("26", "11", ImgPaths.leaf, null, null),
                calendarDays("27", "12", ImgPaths.leaf, AppColors.orange, null),
                calendarDays("28", "13", ImgPaths.leaf, null, null),
                calendarDays("29", "14", ImgPaths.leaf, null, null),
                calendarDays("30", "15", ImgPaths.orangeThing, null, null),
                calendarDays("31", "16", ImgPaths.leaf, null, null),
              ],
            ),
            SizedBox(
              height: AppResponsive.height(13),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppResponsive.width(17),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppResponsive.width(5),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Aug 27",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: AppResponsive.width(24),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Cycle Day 12 - Follicular Phase",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: AppResponsive.width(14),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: AppResponsive.width(105),
                        height: AppResponsive.height(45),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppResponsive.width(25),
                            ),
                            border: Border.all(
                              color: AppColors.grey.withValues(alpha: 0.7),
                            )),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            spacing: AppResponsive.width(9),
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(ImgPaths.blood),
                                height: AppResponsive.height(15),
                              ),
                              Text(
                                "Edit",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: AppResponsive.width(19),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: AppColors.grey.withValues(alpha: 0.5),
                  ),
                  Row(
                    children: [
                      Container(
                        height: AppResponsive.height(37),
                        width: AppResponsive.width(95),
                        decoration: BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.circular(
                            AppResponsive.width(9),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Medium",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: AppResponsive.width(19),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: AppResponsive.width(5),
                      ),
                      Text(
                        "- Chance of getting pregnant",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: AppResponsive.width(18),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
