import 'package:flutter/material.dart';

class FiveStarRating extends StatefulWidget {
  const FiveStarRating({
    super.key,
    this.rating = 0,
    this.starSize = 25.0,
    this.color = Colors.amber,
  });
  final int rating;
  final double starSize;
  final Color color;

  @override
  _FiveStarRatingState createState() => _FiveStarRatingState();
}

class _FiveStarRatingState extends State<FiveStarRating> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < widget.rating) {
          return Icon(Icons.star, size: widget.starSize, color: widget.color);
        } else {
          return Icon(
            Icons.star_border,
            size: widget.starSize,
            color: widget.color,
          );
        }
      }),
    );
  }
}
