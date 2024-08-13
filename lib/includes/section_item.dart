import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:crowd/utils/colors.dart';

class SectionItem extends StatefulWidget {
  const SectionItem({
    super.key,
    required this.sectionName,
    required this.sectionImage,
    required this.sectionDescription,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final String sectionName;
  final String sectionImage;
  final String sectionDescription;

  @override
  State<SectionItem> createState() => _SectionItemState();
}

class _SectionItemState extends State<SectionItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.sectionImage,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.sectionName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.primary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget.sectionDescription,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.darkGrey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          debugPrint("favorate clicked");
                        },
                        icon: const Icon(
                          Iconsax.heart_outline,
                          color: AppColors.primary,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          debugPrint("liked cliked");
                        },
                        icon: const Icon(
                          Iconsax.like_1_outline,
                          color: AppColors.primary,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
