import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

typedef WrapperValue = ({
  Alignment alignment,
  Color? color,
  double margin,
  bool enableHighlight,
});

class WrapperAddon extends WidgetbookAddon<WrapperValue> {
  WrapperAddon({
    this.initialAlignment = Alignment.center,
  }) : super(
          name: 'Wrapper',
        );

  final Alignment initialAlignment;

  static final alignments = {
    Alignment.topLeft: 'Top Left',
    Alignment.topCenter: 'Top Center',
    Alignment.topRight: 'Top Right',
    Alignment.centerLeft: 'Center Left',
    Alignment.center: 'Center',
    Alignment.centerRight: 'Center Right',
    Alignment.bottomLeft: 'Bottom Left',
    Alignment.bottomCenter: 'Bottom Center',
    Alignment.bottomRight: 'Bottom Right',
  };

  @override
  List<Field> get fields {
    return [
      ListField<Alignment>(
        name: 'alignment',
        initialValue: initialAlignment,
        values: alignments.keys.toList(),
        labelBuilder: (value) => alignments[value]!,
      ),
      BooleanField(name: 'enableHighlight', initialValue: false),
      ColorField(name: 'color', initialValue: null),
      DoubleSliderField(
          name: 'margin', min: 0, max: 500, initialValue: 0, divisions: 250)
    ];
  }

  @override
  WrapperValue valueFromQueryGroup(Map<String, String> group) {
    return (
      alignment: valueOf<Alignment>('alignment', group)!,
      color: valueOf<Color>('color', group),
      margin: valueOf<double>('margin', group)!,
      enableHighlight: valueOf<bool>('enableHighlight', group)!,
    );
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    WrapperValue setting,
  ) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: setting.color,
        body: Align(
          alignment: setting.alignment,
          child: Padding(
            padding: EdgeInsets.all(setting.margin),
            child: Container(
              decoration: setting.enableHighlight
                  ? const BoxDecoration(color: Colors.black12)
                  : null,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
