import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum ImageShapes {
  None,
  Standard, // Corners will not be sharp
  Square, // Sharp corners
}

class CustomNetworkImageView extends StatelessWidget {
  // final String? placeholder;
  const CustomNetworkImageView({
    super.key,
    required this.imagePath,
    this.height,
    this.width,
    this.onlyTop = false,
    this.onlyBottom = false,
    this.borderColor,
    this.shape = ImageShapes.Standard, // Default
    this.dBorderRadius,
    this.clickAction = _defaultFunction,
    this.fit = BoxFit.fill,
    // this.placeholder = DEFAULT_PROFILE,
    this.errorWidget,
    this.noBorder = false,
  });
  factory CustomNetworkImageView.circle({
    required String imagePath,
    double? height,
    double? width,
    BoxFit? fit,
    bool? onlyTop = false,
    bool? onlyBottom = false,
    Color? borderColor,
    double? dBorderRadius,
    VoidCallback clickAction = _defaultFunction,
  }) {
    return CustomNetworkImageView(
      imagePath: imagePath,
      dBorderRadius: dBorderRadius,
      height: height,
      width: width,
      borderColor: borderColor,
      onlyBottom: onlyBottom,
      onlyTop: onlyTop,
      // placeholder: placeholder,
      fit: fit,
      clickAction: clickAction,
    );
  }

  factory CustomNetworkImageView.square({
    required String imagePath,
    double? height,
    double? width,
    BoxFit? fit,
    Color? borderColor,
    bool? onlyTop = false,
    bool? onlyBottom = false,
    double? dBorderRadius,
    VoidCallback clickAction = _defaultFunction,
  }) {
    return CustomNetworkImageView(
      imagePath: imagePath,
      shape: ImageShapes.Square,
      dBorderRadius: dBorderRadius,
      height: height,
      width: width,
      // placeholder: placeholder,
      borderColor: borderColor,
      fit: fit,
      onlyBottom: onlyBottom,
      onlyTop: onlyTop,
      clickAction: clickAction,
    );
  }
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? dBorderRadius;
  final bool? onlyTop;
  final bool noBorder;
  final Color? borderColor;
  final bool? onlyBottom;
  final ImageShapes shape;
  final VoidCallback clickAction;
  final Widget? errorWidget;

  static void _defaultFunction() {
    // Does nothing
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: noBorder
            ? BorderRadius.zero
            : onlyBottom! || onlyTop!
                ? BorderRadius.vertical(
                    top: Radius.circular(
                      !onlyTop! ? 0.0 : dBorderRadius ?? 13,
                    ),
                    bottom: Radius.circular(
                      !onlyBottom! ? 0.0 : dBorderRadius ?? 13,
                    ),
                  )
                : BorderRadius.circular(dBorderRadius ?? 13),
        border: borderColor == null
            ? null
            : Border.all(color: borderColor!, width: 2),
      ),
      clipBehavior: Clip.antiAlias,
      child: ClipRRect(
        borderRadius: noBorder
            ? BorderRadius.zero
            : onlyBottom! || onlyTop!
                ? BorderRadius.vertical(
                    top: Radius.circular(!onlyTop! ? 0.0 : dBorderRadius ?? 10),
                    bottom: Radius.circular(
                      !onlyBottom! ? 0.0 : dBorderRadius ?? 10,
                    ),
                  )
                : BorderRadius.circular(dBorderRadius ?? 10),
        child: CachedNetworkImage(
          imageUrl: imagePath,
          height: height,
          width: width,
          fit: fit,
          placeholder: (context, url) => const Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
          errorWidget: (context, _, s) =>
              errorWidget ?? const Icon(Icons.error),
          // Image.asset(
          //   DEFAULT_PROFILE,
          //   fit: fit,
          // ),
        ),
      ),
    );
  }
}
