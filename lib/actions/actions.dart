import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future periodic(BuildContext context) async {
  await action_blocks.periodic(context);
  await actions.getInfo(
    context,
  );
}
