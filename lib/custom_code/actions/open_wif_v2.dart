// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:android_intent_plus/android_intent.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openWifV2(BuildContext context) async {
  try {
    if (Theme.of(context).platform == TargetPlatform.android) {
      // Android
      const intent = AndroidIntent(
        action: 'android.settings.WIFI_SETTINGS',
      );
      try {
        await intent.launch();
      } catch (e) {
        // Handle errors if the intent fails
        print('Error opening Wi-Fi settings: $e');
      }
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
      // iOS (eingeschränkt)
      if (await canLaunchUrl(Uri.parse('App-Prefs:WIFI'))) {
        await launchUrl(Uri.parse('App-Prefs:WIFI'));
      } else {
        throw 'Konnte iOS-Einstellungen nicht öffnen';
      }
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Fehler: $e')),
    );
  }
}
