import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/bottom_sheet/image_picker_sheet.dart';

class UIOverlayService {
  UIOverlayService._();
  static final instance = UIOverlayService._();

  Future<ImageSource?> _showImagePickerBottomSheet(
    BuildContext context,
  ) async {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => ImagePickerSheet(),
    );
  }

  Future<File?> pickImage(
    BuildContext context,
  ) async {
    final source = await _showImagePickerBottomSheet(
      context,
    );
    if (source == null) return null;
    final picker = ImagePicker();
    final file = await picker.pickImage(
      source: source,
    );
    if (file == null) return null;
    return File(
      file.path,
    );
  }
}
