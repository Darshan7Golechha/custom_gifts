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

  Future<Uint8List> _processImageSource(String source) async {
    try {
      if (kIsWeb) {
        if (source.startsWith('blob')) {
          // Handle blob URLs
          final cleanUrl =
              Uri.decodeFull(source.replaceAll('blob%3A', 'blob:'));
          final response = await http.get(Uri.parse(cleanUrl));
          if (response.statusCode == 200) {
            return response.bodyBytes;
          }
          throw Exception('Failed to fetch blob data: ${response.statusCode}');
        }
      }

      // Handle regular file path
      final file = XFile(source);
      return await file.readAsBytes();
    } catch (e) {
      print('❌ Error processing image source: $e');
      throw Exception('Failed to process image source: $e');
    }
  }

  Future<String> uploadPhotoAndGetURL(
      String imageBytesString, String folder) async {
    try {
      Reference reference = _getImageStorageRef(folder);
      final bytes = await _processImageSource(imageBytesString);

      final metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'source': imageBytesString},
      );

      TaskSnapshot storageTaskSnapshot =
          await reference.putData(bytes, metadata);
      return await storageTaskSnapshot.ref.getDownloadURL();
    } catch (e) {
      print('❌ Error uploading photo: $e');
      throw Exception('Failed to upload photo: $e');
    }
  }

  Future<String> getThumbnailForImage(
      String imageBytesString, String folder) async {
    try {
      Reference reference = _getImageStorageRef('${folder}_thumbnails');
      final bytes = await _processImageSource(imageBytesString);

      // Compress the image
      final compressedBytes = await FlutterImageCompress.compressWithList(
        bytes,
        minHeight: 600,
        minWidth: 600,
        quality: 95,
      );

      final metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'source': imageBytesString},
      );

      TaskSnapshot storageTaskSnapshot = await reference.putData(
        compressedBytes,
        metadata,
      );
      return await storageTaskSnapshot.ref.getDownloadURL();
    } catch (e) {
      print('❌ Error creating thumbnail: $e');
      throw Exception('Failed to create thumbnail: $e');
    }
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
