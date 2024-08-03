import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
    final colorScheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          15,
        ),
      ),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          width: double.infinity,
          color: colorScheme.onPrimary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Image(
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      widget.sectionImage,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.sectionName,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        widget.sectionDescription,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: colorScheme.onPrimaryFixedVariant,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            debugPrint("favorate clicked");
                          },
                          icon: Icon(
                            Iconsax.star,
                            color: colorScheme.onPrimaryContainer,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            debugPrint("heart cliked");
                          },
                          icon: Icon(
                            Iconsax.heart,
                            color: colorScheme.onPrimaryContainer,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
