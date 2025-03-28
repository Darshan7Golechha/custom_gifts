import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<String> pickImage(BuildContext context) async {
  XFile? pickedFile = await ImagePicker().pickImage(
    source: ImageSource.gallery,
    imageQuality: 95,
    requestFullMetadata: true,
  );

  if (pickedFile != null) {
    return pickedFile.path;
  }
  return '';
}

Future<XFile> pickMedia(BuildContext context) async {
  XFile? pickedFile = await ImagePicker().pickMedia(
    imageQuality: 95,
    requestFullMetadata: true,
  );

  if (pickedFile != null) {
    return pickedFile;
  }
  return XFile('');
}

Future<List<XFile>> pickMultipleMedia(BuildContext context) async {
  List<XFile>? pickedFile = await ImagePicker().pickMultipleMedia(
    imageQuality: 95,
    requestFullMetadata: true,
  );

  return pickedFile;
  return [];
}

Future<List<String>> multiImagePicker(BuildContext context) async {
  final List<String> selectedImagesList = [];
  final List<XFile> selectedImages = await ImagePicker().pickMultiImage();
  if (selectedImages.isNotEmpty) {
    selectedImages.map((e) => selectedImagesList.add(e.path)).toList();
  }

  return selectedImagesList;
}

Future<List<String>> multiVideoPicker(BuildContext context) async {
  final List<String> selectedImagesList = [];
  final List<XFile> selectedImages = await ImagePicker().pickMultipleMedia();
  if (selectedImages.isNotEmpty) {
    selectedImages.map((e) => selectedImagesList.add(e.path)).toList();
  }

  return selectedImagesList;
}

Future<String> pickVideo(BuildContext context) async {
  XFile? pickedFile = await ImagePicker().pickVideo(
    source: ImageSource.gallery,
  );

  if (pickedFile != null) {
    return pickedFile.path;
  }
  return '';
}
