import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SectionItem extends StatefulWidget {
  const SectionItem(
      {super.key,
      required this.sectionName,
      required this.sectionImage,
      required this.sectionDescription});
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
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            15,
          ),
        ),
        child: Container(
          width: 60,
          height: double.maxFinite,
          color: colorScheme.onPrimary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                child: Image(
                  height: 125,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.sectionImage,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
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
                        fontSize: 15,
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
                        fontSize: 15,
                        color: colorScheme.onPrimaryFixedVariant,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.star,
                          color: colorScheme.onPrimaryContainer,
                        ),
                        Icon(
                          Iconsax.heart,
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ],
                    )
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
