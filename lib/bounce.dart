import 'dart:ffi';

import 'package:flutter/material.dart';

class Bounce extends StatefulWidget {
  final Widget child;
  final bool isAnimating;
  final Duration duration;
  final VoidCallback? onEnd;

  Bounce(
    bool bool, {
    Key? key,
    required this.child,
    required this.isAnimating,
    this.onEnd,
    this.duration = const Duration(milliseconds: 500),
  }) : super(key: key);

  @override
  State<Bounce> createState() => _BounceState();
}

class _BounceState extends State<Bounce> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;
  void a;
  @override
  Void? initState() {
    super.initState();

    final halfDuration = widget.duration.inMilliseconds ~/ 2;
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: halfDuration));
    scale = Tween<double>(begin: 1, end: 1.2).animate(controller);
    return null;
  }

  @override
  void didUpdateWidget(Bounce oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isAnimating != oldWidget.isAnimating) {
      doAnimation();
    }
  }

  Future doAnimation() async {
    if (widget.isAnimating) {
      await controller.forward();
      await controller.reverse();
      await Future.delayed(Duration(milliseconds: 300));

      if (widget.onEnd != null) {
        widget.onEnd!();
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScaleTransition(
        scale: scale,
        child: widget.child,
      );
}
