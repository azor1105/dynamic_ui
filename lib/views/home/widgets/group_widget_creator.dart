import 'package:dynamic_ui/data/models/ui_model/ui_model.dart';
import 'package:dynamic_ui/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class GroupWidgetCreator extends StatelessWidget {
  const GroupWidgetCreator({super.key, required this.uiModel});

  @override
  Widget build(BuildContext context) {
    switch (uiModel.type) {
      case 'column':
        return Column(
          children: [
            Center(
              child: Text(
                uiModel.type,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: HexColor.fromHex(uiModel.color),
              height: uiModel.height.toDouble(),
              width: uiModel.width.toDouble(),
              child: Column(
                children: const [],
              ),
            ),
          ],
        );
      case 'raw':
        return Column(
          children: [
            Center(
              child: Text(
                uiModel.type,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: HexColor.fromHex(uiModel.color),
              height: uiModel.height.toDouble(),
              width: uiModel.width.toDouble(),
              child: Row(
                children: const [],
              ),
            ),
          ],
        );
      case 'sizedbox':
        return Column(
          children: [
            Center(
              child: Text(
                uiModel.type,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: HexColor.fromHex(uiModel.color),
                child: SizedBox(
                  height: uiModel.height.toDouble(),
                  width: uiModel.width.toDouble(),
                )),
          ],
        );
      default:
        return const SizedBox();
    }
  }

  final UiModel uiModel;
}
