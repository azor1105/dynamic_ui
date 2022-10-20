import 'package:dynamic_ui/data/models/ui_model/ui_model.dart';
import 'package:dynamic_ui/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class CommonWidgetCreator extends StatelessWidget {
  const CommonWidgetCreator({super.key, required this.uiModel});

  @override
  Widget build(BuildContext context) {
    switch (uiModel.type) {
      case 'container':
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: uiModel.height.toDouble(),
          width: uiModel.width.toDouble(),
          color: HexColor.fromHex(uiModel.color),
        );
      default:
        return const SizedBox();
    }
  }

  final UiModel uiModel;
}
