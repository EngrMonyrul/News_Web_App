import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_web/utils/extensions/context_ext.dart';

import 'custom_button.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    this.height,
    this.image,
    this.topic,
    this.title,
    this.subTitle,
    this.onPressed,
    this.newsTime,
    this.width,
  });

  final double? height;
  final double? width;
  final String? image;
  final String? topic;
  final String? title;
  final String? subTitle;
  final VoidCallback? onPressed;
  final DateTime? newsTime;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final screenSize = context.screenSize;
    return SizedBox(
      height: height ?? 300,
      width: width ?? screenSize.width * .5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height ?? 300,
            width: (width ?? screenSize.width * .5) / 2,
            child: Image.asset(
              image ?? "assets/images/clash01.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      color: theme.colorScheme.primary,
                      child: Text(
                        topic ?? "Politics",
                        style: theme.textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      DateFormat("MMM dd, yyyy")
                              .format(newsTime ?? DateTime.now()) ??
                          "20 March, 2020",
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 40,
                // ),
                Text(
                  title ??
                      "Climate Change Protesters Clash with Policy in City L",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineMedium,
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                Text(subTitle ??
                    "Climate chagne activities took to the streets of City L to demand urgent action to takle the climate crisis. The protest turned violent, with clash between protester and police resulting in several arrests."),
                // const SizedBox(
                //   height: 20,
                // ),
                CustomButton(
                  onPressed: onPressed,
                  name: "Read More",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
