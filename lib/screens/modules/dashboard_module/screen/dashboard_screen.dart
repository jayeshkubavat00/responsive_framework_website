// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lookat_solution/until/app_style.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(
              horizontal: (ResponsiveValue(
                        context,
                        defaultValue: 100.0,
                        valueWhen: const [
                          Condition.smallerThan(name: TABLET, value: 10.0),
                          Condition.smallerThan(name: DESKTOP, value: 20.0),
                        ],
                      ).value ??
                      0.0) +
                  20.0,
              vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.looks),
                      Text(
                        "Lookat",
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ],
                  ),
                ),
                ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.black,
                            )),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Home",
                              style: AppStyles.menuStyle,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "About",
                              style: AppStyles.menuStyle,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Service",
                              style: AppStyles.menuStyle,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Team",
                              style: AppStyles.menuStyle,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Contact",
                              style: AppStyles.menuStyle,
                            ),
                          ),
                        ],
                      )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              padding: EdgeInsets.symmetric(
                horizontal: (ResponsiveValue(
                          context,
                          defaultValue: 80.0,
                          valueWhen: const [
                            Condition.smallerThan(name: TABLET, value: 80.0),
                            Condition.smallerThan(name: DESKTOP, value: 120.0),
                          ],
                        ).value ??
                        0.0) +
                    20.0,
                vertical: 20.0,
              ),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnMainAxisAlignment: MainAxisAlignment.start,
                      rowCrossAxisAlignment: CrossAxisAlignment.center,
                      layout: ResponsiveValue(
                            context,
                            defaultValue: ResponsiveRowColumnType.ROW,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: TABLET,
                                value: ResponsiveRowColumnType.COLUMN,
                              ),
                              Condition.equals(
                                name: TABLET,
                                value: ResponsiveRowColumnType.COLUMN,
                              ),
                            ],
                          ).value ??
                          ResponsiveRowColumnType.ROW,
                      rowSpacing: 60.0,
                      children: [
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "We offer modern solutions for growing your business",
                                textAlign: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? TextAlign.center
                                    : TextAlign.start,
                                style: TextStyle(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 30.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 12.0,
                                      ),
                                      Condition.smallerThan(
                                        name: TABLET,
                                        value: 35.0,
                                      ),
                                      Condition.largerThan(
                                        name: TABLET,
                                        value: 30.0,
                                      ),
                                    ],
                                  ).value,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "We are team of talented designers making websites with Bootstrap",
                                textAlign: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? TextAlign.center
                                    : TextAlign.start,
                                style: TextStyle(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 20.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 9.0,
                                      ),
                                      Condition.smallerThan(
                                        name: TABLET,
                                        value: 25.0,
                                      ),
                                      Condition.largerThan(
                                        name: TABLET,
                                        value: 20.0,
                                      ),
                                    ],
                                  ).value,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  scrollController.animateTo(
                                    580.0,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.ease,
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 45, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 225, 123, 132),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Get Started",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Image.asset("assets/img/header.jpg")),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    ResponsiveRowColumn(
                      rowPadding: const EdgeInsets.only(top: 100),
                      columnPadding: const EdgeInsets.only(top: 20),
                      rowMainAxisAlignment: MainAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnMainAxisAlignment: MainAxisAlignment.start,
                      rowCrossAxisAlignment: CrossAxisAlignment.center,
                      layout: ResponsiveValue(
                            context,
                            defaultValue: ResponsiveRowColumnType.ROW,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: TABLET,
                                value: ResponsiveRowColumnType.COLUMN,
                              ),
                              Condition.equals(
                                name: TABLET,
                                value: ResponsiveRowColumnType.COLUMN,
                              ),
                            ],
                          ).value ??
                          ResponsiveRowColumnType.ROW,
                      rowSpacing: 60.0,
                      columnSpacing: 60.0,
                      children: [
                        ResponsiveRowColumnItem(
                          rowFit: FlexFit.tight,
                          rowFlex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: ResponsiveWrapper.of(context)
                                    .isSmallerThan(TABLET)
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                "WHO WE ARE",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 232, 27, 12),
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 12.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 10.0,
                                      ),
                                      Condition.smallerThan(
                                        name: TABLET,
                                        value: 13.0,
                                      ),
                                      Condition.largerThan(
                                        name: TABLET,
                                        value: 15.0,
                                      ),
                                    ],
                                  ).value,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Expedita voluptas omnis cupiditate totam eveniet nobis sint iste. Dolores est repellat corrupti reprehenderit.",
                                textAlign: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? TextAlign.center
                                    : TextAlign.start,
                                style: TextStyle(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 25.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 8.0,
                                      ),
                                      Condition.smallerThan(
                                        name: TABLET,
                                        value: 30.0,
                                      ),
                                      Condition.largerThan(
                                        name: TABLET,
                                        value: 25.0,
                                      ),
                                    ],
                                  ).value,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Quisquam vel ut sint cum eos hic dolores aperiam. Sed deserunt et. Inventore et et dolor consequatur itaque ut voluptate sed et. Magnam nam ipsum tenetur suscipit voluptatum nam et est corrupti.",
                                textAlign: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? TextAlign.center
                                    : TextAlign.start,
                                style: TextStyle(
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 20.0,
                                    valueWhen: const [
                                      Condition.smallerThan(
                                        name: MOBILE,
                                        value: 9.0,
                                      ),
                                      Condition.smallerThan(
                                        name: TABLET,
                                        value: 25.0,
                                      ),
                                      Condition.largerThan(
                                        name: TABLET,
                                        value: 20.0,
                                      ),
                                    ],
                                  ).value,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 10),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 225, 123, 132),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Read More",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Image.asset("assets/img/hearder2.jpg")),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
