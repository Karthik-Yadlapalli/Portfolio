// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:portfolio/providers/stage_provider.dart";
import "package:portfolio/widgets/section.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';

final List<String> _sections = ["Home", "About", "Projects", "Message"];

class PTabs extends ConsumerWidget {
  const PTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //provider
    final stgManager = ref.watch(stageProvider);

    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _sections.length,
        itemBuilder: (context, index) {
          return PContents(
            isSelected: true,
            text: _sections[index],
            onSelection: () {
              stgManager.getSection(_sections[index]);
            },
          );
        });
  }
}
