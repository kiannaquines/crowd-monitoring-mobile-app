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
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: AppColors.lightGrey,
              blurRadius: 15.0,
              spreadRadius: 1,
              offset: Offset(4, 4),
            ),
            BoxShadow(
              color: AppColors.lightGrey,
              blurRadius: 15.0,
              spreadRadius: 1,
              offset: Offset(-4, -4),
            ),
          ],
        ),
        child: Card(
          color: AppColors.white,
          elevation: 0,
          shadowColor: AppColors.mediumGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 2.0,
                  left: 2.0,
                  right: 2.0,
                ),
                child: SizedBox(
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 5.0,
                  right: 5.0,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          highlightColor: AppColors.accent.withOpacity(0.8),
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
      ),
    );
  }
}
