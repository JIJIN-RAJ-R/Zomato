import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final double buttonSize;
  final Color startCircleColor;
  final Color endCircleColor;
  final Color dotPrimaryColor;
  final Color dotSecondaryColor;
  final bool isLiked;
  final int likeCount;
  final Color primaryColor;

  const LikeButton({
    Key? key,
    required this.buttonSize,
    required this.startCircleColor,
    required this.endCircleColor,
    required this.dotPrimaryColor,
    required this.dotSecondaryColor,
    required this.isLiked,
    required this.likeCount,
    required this.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle like button tap event
      },
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startCircleColor, endCircleColor],
          ),
          shape: BoxShape.circle,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Bubbles
            Container(
              width: buttonSize * 0.6,
              height: buttonSize * 0.6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: dotPrimaryColor,
              ),
            ),
            Container(
              width: buttonSize * 0.4,
              height: buttonSize * 0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: dotSecondaryColor,
              ),
            ),
            // Like icon
            Icon(
              Icons.home,
              color: isLiked ? Colors.deepPurpleAccent : Colors.white,
              size: buttonSize * 0.6,
            ),
          ],
        ),
      ),
    );
  }
}
