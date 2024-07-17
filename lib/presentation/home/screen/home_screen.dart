import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_web/common/widgets/responsive.dart';
import 'package:news_web/presentation/home/wigets/custom_button.dart';
import 'package:news_web/utils/extensions/context_ext.dart';
import 'package:news_web/utils/themes/color_scheme_config.dart';

import '../wigets/header_button.dart';
import '../wigets/news_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final theme = context.theme;

    return Container(
      color: ColorSchemeConfig.commonBlack,
      child: Responsive(
        desktop: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Insight Daily",
                              style: theme.textTheme.displayLarge,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Bringing You the World, One Story at a Time",
                              style: theme.textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                HeaderButton(
                                  onPressed: () {},
                                  showIcon: true,
                                  icon: CupertinoIcons.search_circle_fill,
                                  name: "Search",
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                HeaderButton(
                                  onPressed: () {},
                                  showIcon: true,
                                  icon: CupertinoIcons.person_alt_circle_fill,
                                  name: "Login/Register",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                HeaderButton(
                                  onPressed: () {},
                                  name: "News",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                HeaderButton(
                                  onPressed: () {},
                                  name: "Politics",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                HeaderButton(
                                  onPressed: () {},
                                  name: "Sports",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                HeaderButton(
                                  onPressed: () {},
                                  name: "Technology",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const CustomButton(
                                  name: "Contact Us",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: 600,
                        width: screenSize.width,
                        child: Image.asset(
                          "assets/images/clash01.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 550,
                        width: screenSize.width * .4,
                        padding: const EdgeInsets.only(
                          left: 80,
                          top: 40,
                          bottom: 40,
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.black87,
                              Colors.black54,
                              Colors.black45,
                              Colors.black38,
                              Colors.black26,
                              Colors.black12,
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stay Informed with Insight Daily",
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(
                              height: 150,
                            ),
                            Text(
                              "${DateFormat("MMM dd, yyyy").format(DateTime.now())}  |  Health",
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "COVID-19 Vaccine Rollout Accelerated Across the State",
                              style: theme.textTheme.headlineMedium?.copyWith(
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "The State is accelerating its COVID-19 vaccine rollout, with plans to administer at least one dose of the vaccine to all eligable adults by the end of april",
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                            Spacer(),
                            CustomButton(
                              name: "Read More",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 600,
                        width: screenSize.width,
                        child: Column(
                          children: [
                            const Spacer(),
                            Container(
                              height: 50,
                              width: screenSize.width,
                              padding: const EdgeInsets.only(top: 10),
                              color: theme.scaffoldBackgroundColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          DateFormat("EEE").format(
                                            DateTime.now(),
                                          ),
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        Text(
                                          DateFormat("MMM dd, yyyy").format(
                                            DateTime.now(),
                                          ),
                                          style: theme.textTheme.labelMedium
                                              ?.copyWith(
                                            color: theme.colorScheme.tertiary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const VerticalDivider(
                                    thickness: 2,
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const HeaderButton(
                                    name: "Fashions",
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const HeaderButton(
                                    name: "Lifestyles",
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const HeaderButton(
                                    name: "Business",
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const HeaderButton(
                                    name: "Entertainment",
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const HeaderButton(
                                    name: "Health",
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  /*const HeaderButton(
                                    name: "Politics",
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const HeaderButton(
                                    name: "Sports",
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const HeaderButton(
                                    name: "Technologies",
                                  ),*/
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 150,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 300,
                              width: 300,
                              padding: const EdgeInsets.all(20),
                              color: theme.colorScheme.primary,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Column(
                                        children: [
                                          Text(
                                            "XSpancer Launches First Tourist Mission to Space",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                              color:
                                                  theme.colorScheme.onPrimary,
                                            ),
                                          ),
                                          Text.rich(
                                            style: theme.textTheme.labelMedium,
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "21 hour ago ",
                                                  style: TextStyle(
                                                    color: theme
                                                        .colorScheme.tertiary,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "by Marine Wane",
                                                  style: TextStyle(
                                                    color: theme
                                                        .colorScheme.tertiary,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              top: -15,
                              left: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 3,
                                ),
                                color: theme.colorScheme.onPrimary,
                                child: const Text("Breaking News"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    children: [
                      NewsItem(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
