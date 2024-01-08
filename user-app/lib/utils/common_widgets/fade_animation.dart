import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

enum AniDirection { left, right, top, bottom }

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({
    required this.delay,
    required this.child,
    required this.direction,
    super.key,
  });
  final double delay;
  final Widget child;
  final AniDirection direction;

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AniProps>()
      ..add(
        AniProps.opacity,
        Tween(begin: 0.0, end: 1.0),
        const Duration(milliseconds: 500),
      )
      ..add(
        AniProps.translateY,
        Tween(begin: 130.0, end: 0.0),
        const Duration(milliseconds: 500),
        Curves.easeOut,
      );

    return PlayAnimation<MultiTweenValues<AniProps>>(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: _getTransform(value),
      ),
    );
  }

  Transform _getTransform(MultiTweenValues<AniProps> value) {
    switch (direction) {
      case AniDirection.top:
        return Transform.translate(
          // ignore: inference_failure_on_function_invocation, avoid_dynamic_calls
          offset: Offset(0, -value.get(AniProps.translateY)),
          child: child,
        );

      case AniDirection.bottom:
        return Transform.translate(
          offset: Offset(0, value.get(AniProps.translateY)),
          child: child,
        );

      case AniDirection.right:
        return Transform.translate(
          offset: Offset(value.get(AniProps.translateY), 0),
          child: child,
        );

      // ignore: no_default_cases
      default:
        return Transform.translate(
          // ignore: inference_failure_on_function_invocation, avoid_dynamic_calls
          offset: Offset(-value.get(AniProps.translateY), 0),
          child: child,
        );
    }
  }
}
