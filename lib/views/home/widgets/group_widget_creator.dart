import 'package:dynamic_ui/data/models/ui_model/ui_model.dart';
import 'package:dynamic_ui/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class GroupWidgetCreator extends StatelessWidget {
  const GroupWidgetCreator({super.key, required this.uiModel});

  @override
  Widget build(BuildContext context) {
    switch (uiModel.type) {
      case 'column':
        return Container(
          color: HexColor.fromHex(uiModel.color),
          height: uiModel.height.toDouble(),
          width: uiModel.width.toDouble(),
          child: Column(
            children: [
              Center(
                child: Text(
                  uiModel.type,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        );
      case 'raw':
        return Container(
          color: HexColor.fromHex(uiModel.color),
          height: uiModel.height.toDouble(),
          width: uiModel.width.toDouble(),
          child: Row(
            children: [
              Center(
                child: Text(
                  uiModel.type,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        );
      case 'sizedbox':
        return Container(
            color: HexColor.fromHex(uiModel.color),
            child: SizedBox(
              height: uiModel.height.toDouble(),
              width: uiModel.width.toDouble(),
              child: Center(
                child: Text(
                  uiModel.type,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ));
      default:
        return const SizedBox();
    }
  }

  final UiModel uiModel;
}
