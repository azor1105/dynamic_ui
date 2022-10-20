import 'package:dynamic_ui/cubits/dynamic_ui/dynamic_ui_cubit.dart';
import 'package:dynamic_ui/views/home/widgets/common_widget_creator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'widgets/widget_group_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dynamic UI example"),
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<DynamicUiCubit, DynamicUiState>(
        builder: (context, state) {
          if (state.status == FormzStatus.submissionInProgress) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state.status == FormzStatus.submissionSuccess) {
            final commonItems = state.uiRequirements
                .where((element) => element.group == 'COMMON')
                .toList();
            final groupedItems = state.uiRequirements
                .where((element) => element.group == 'GROUPED')
                .toList();
            print(commonItems.length);
            return ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                widgetGroupItem(
                  items: List.generate(
                    commonItems.length,
                    (index) => CommonWidgetCreator(
                      uiModel: commonItems[index],
                    ),
                  ),
                  nameOfGroup: "Common items",
                ),
              ],
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
