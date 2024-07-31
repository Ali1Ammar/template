import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

typedef AppSpace = ({
  double large,
  double medium,
  double radius,
  double small,
  double xMedium,
  double xSmall
});

// accessing appSpace using context will help us edit this value depending on the screen size if needed.
extension AppSpaceExtension on BuildContext {
  AppSpace get appSpace => (
        radius: 12,
        xSmall: 4,
        small: 6,
        medium: 10,
        xMedium: 14,
        large: 18,
      );
}

extension AppSpaceDoubleExtension on double {
  EdgeInsets toPadding() => EdgeInsets.all(this);

  Gap get gap => Gap(this);
  SliverGap get sliverGap => SliverGap(this);
}
