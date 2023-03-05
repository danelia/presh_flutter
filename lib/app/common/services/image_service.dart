import 'dart:io';
import 'dart:typed_data';

import 'package:azstore/azstore.dart';
import 'package:flutter/material.dart';
import 'package:preshfood_app/app/common/methods.dart';
import 'package:preshfood_app/app/config/environment/env.dart';

class ImageService {
    BuildContext? context;

    ImageService(this.context);

    Future<bool> azureAddBlob(File file, String filePath) async {
        // File testFile =File(''C:/Users/HP/Pictures/fdblack.png');

        Utils(context).startloading();

        Uint8List bytes = file.readAsBytesSync();
        var storage =
            AzureStorage.parse(Environnent().config.azureConnectionString);
        try {
            await storage.putBlob(
                filePath,
                bodyBytes: bytes,
                contentType: 'image/png',
            );

            return true;
        } catch (e) {
            return false;
        } finally {
            Utils(context).stoploading();
        }
    }
}