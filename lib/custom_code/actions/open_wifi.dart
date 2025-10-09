// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:android_intent_plus/android_intent.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openWifi(BuildContext context) async {
  try {
    if (Theme.of(context).platform == TargetPlatform.android) {
      // Android
      const intent = AndroidIntent(
        action: 'android.settings.APPLICATION_DETAILS_SETTINGS',
        data:
            'package:de.airscent.AppV2', // Replace with your app's package name
      );
      await intent.launch();
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
      // iOS (eingeschränkt)
      if (await canLaunchUrl(Uri.parse('app-settings:'))) {
        await launchUrl(Uri.parse('app-settings:'));
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
