// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// how can i find files in the folder data and pull it to a list. if the folder not exist i want to create one
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future storedFindAndList(BuildContext context) async {
  try {
    // Get the application documents directory
    final Directory appDocDir = await getApplicationDocumentsDirectory();

    // get current Device Type
    String typeLetter = FFAppState().CurrentDeviceInfo.typeLetter;
    // Create the data folder path
    final String dataFolderPath = '${appDocDir.path}/data/${typeLetter}';
    final Directory dataFolder = Directory(dataFolderPath);

    // Check if the data folder exists, if not create it
    if (!await dataFolder.exists()) {
      await dataFolder.create(recursive: true);
      return <FileSystemEntity>[]; // Return empty list for newly created folder
    }

    // List all files in the data folder
    final List<FileSystemEntity> files = await dataFolder.list().toList();

    // Filter to only include files (not directories)
    final List<File> fileList =
        files.where((entity) => entity is File).cast<File>().toList();

    return fileList;
  } catch (e) {
    // Handle any errors that might occur
    print('Error accessing data folder: $e');
    return <File>[];
  }
}
