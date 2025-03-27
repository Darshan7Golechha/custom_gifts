import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class StorageRemoteDataSource {
  StorageRemoteDataSource();

  _getImageStorageRef(String folder) {
    return FirebaseStorage.instance.ref().child(
          '$folder/${const Uuid().v1()}.jpg',
        );
  }

  _getVoiceStorageRef(String folder) {
    return FirebaseStorage.instance.ref().child(
          '$folder/${const Uuid().v1()}.wav',
        );
  }

  _getVideoStorageRef(String folder, String extension) {
    return FirebaseStorage.instance.ref().child(
          '$folder/${const Uuid().v1()}.$extension',
        );
  }

  Future<String> uploadPhotoAndGetURL(
      String imageBytesString, String folder) async {
    Reference reference = _getImageStorageRef(folder);
    XFile file = XFile(imageBytesString);
    TaskSnapshot storageTaskSnapshot =
        await reference.putData(await file.readAsBytes());
    var dowUrl = await storageTaskSnapshot.ref.getDownloadURL();

    return dowUrl;
  }

  Future<String> getThumbnailForImage(
      String imageBytesString, String folder) async {
    Reference reference = _getImageStorageRef('users');
    XFile file = XFile(imageBytesString);
    // Compress the image
    Uint8List compressedBytes = await FlutterImageCompress.compressWithList(
      await file.readAsBytes(),
      minHeight: 600,
      minWidth: 600,
      quality: 95,
    );
    TaskSnapshot storageTaskSnapshot = await reference.putData(compressedBytes);
    var downloadUrl = await storageTaskSnapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> uploadVoiceAndGetURL(
      String voiceBytesString, String folder) async {
    Reference reference = _getVoiceStorageRef(folder);
    XFile file = XFile(voiceBytesString);
    TaskSnapshot storageTaskSnapshot =
        await reference.putData(await file.readAsBytes());
    var dowUrl = await storageTaskSnapshot.ref.getDownloadURL();
    return dowUrl;
  }

  Future<String> uploadVideoAndGetURL(
      String videoBytesString, String folder) async {
    XFile file = XFile(videoBytesString);
    Reference reference =
        _getVideoStorageRef(folder, file.name.split('.').last);

    TaskSnapshot storageTaskSnapshot =
        await reference.putData(await file.readAsBytes());
    var dowUrl = await storageTaskSnapshot.ref.getDownloadURL();
    return dowUrl;
  }
}
