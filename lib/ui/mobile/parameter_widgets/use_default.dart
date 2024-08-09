import 'package:flutter/material.dart';
import 'package:maid/classes/providers/artificial_intelligence.dart';
import 'package:maid/classes/providers/large_language_model.dart';
import 'package:provider/provider.dart';

class UseDefaultParameter extends StatelessWidget {
  const UseDefaultParameter({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ArtificialIntelligence>(
      builder: buildSwitchContainer
    );
  }

  Widget buildSwitchContainer(BuildContext context, ArtificialIntelligence ai, Widget? child) {
    return SwitchListTile(
      title: const Text('Use Default Parameters'),
      value: ai.llm.useDefault,
      onChanged: (value) {
        LargeLanguageModel.of(context).useDefault = value;
      },
    );
  }
}
