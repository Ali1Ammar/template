import 'package:flutter/material.dart';
import 'package:starter/src/core/design/animation/animated_hide.dart';

class Expandable extends StatefulWidget {
  const Expandable({
    required this.builder,
    super.key,
    this.fixedChild,
    this.expandedChild,
    this.expandedBuilder,
    this.builderHeader,
    this.defaultIsCollapsed = false,
    this.axis,
  });
  final Widget? fixedChild;
  final Widget Function({required bool isCollapsed})? builderHeader;
  final Widget? expandedChild;
  final Widget Function({required bool isCollapsed})? expandedBuilder;

  final Widget Function(Widget child)? builder;
  final bool defaultIsCollapsed;
  final Axis? axis;

  @override
  State<Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  late bool isCollapsed = widget.defaultIsCollapsed;
  @override
  Widget build(BuildContext context) {
    final builder = widget.builder ?? (child) => child;
    return GestureDetector(
      onTap: () {
        setState(() {
          isCollapsed = !isCollapsed;
        });
      },
      child: builder(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.fixedChild != null) widget.fixedChild!,
            if (widget.builderHeader != null)
              widget.builderHeader!(isCollapsed: isCollapsed),
            AnimatedHide(
              show: isCollapsed,
              axis: widget.axis,
              child: widget.expandedChild ??
                  widget.expandedBuilder!(isCollapsed: isCollapsed),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableLess extends StatelessWidget {
  const ExpandableLess({
    required this.fixedChild,
    required this.expandedChild,
    required this.isCollapsed,
    this.builder,
    super.key,
  });
  final Widget fixedChild;
  final Widget expandedChild;
  final Widget Function(Widget child)? builder;
  final bool isCollapsed;

  @override
  Widget build(BuildContext context) {
    final builder2 = builder ?? (child) => child;
    return builder2(
      Column(
        children: [
          fixedChild,
          AnimatedHide(
            show: isCollapsed,
            axis: Axis.vertical,
            child: expandedChild,
          ),
        ],
      ),
    );
  }
}
