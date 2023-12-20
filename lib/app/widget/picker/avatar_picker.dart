import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/color.dart';
import '../../utils/validator/support_validator.dart';
import '../dialog/option_dialog.dart';

class AvatarPicker extends StatelessWidget {
  const AvatarPicker({
    super.key,
    required this.imageFile,
    this.imageUrl,
    required this.onImageChanged,
    this.validator,
    this.onValidationError,
  });

  final File? imageFile;
  final String? imageUrl;
  final Function(File? imageFile) onImageChanged;
  final FormFieldValidator<File>? validator;
  final Function(String errorText)? onValidationError; 

  FormFieldValidator<File> get defaultValidator =>
      SupportValidators.file(5, FileCapacityUnit.mb, fieldName: 'image');

  @override
  Widget build(BuildContext context) {
    late Widget avatarWidget;

    // Load Image From Url or File Path
    if (imageUrl != null || imageFile != null) {
      if (imageUrl != null) {
        // TODO(QuyHD123): Implement Load Image From Url
      }

      if (imageFile != null) {
        avatarWidget = Image.file(
          imageFile!,
          width: 160.0,
          height: 160.0,
        );
      }

      final Widget clearButton = Container(
        padding: const EdgeInsets.all(2.0),
        margin: const EdgeInsets.only(top: 11.0, right: 12.0),
        decoration:
            const BoxDecoration(color: TColor.white, shape: BoxShape.circle),
        child: SizedBox.square(
          dimension: 24.0,
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => onImageChanged(null),
            icon: SvgPicture.asset(IconAsset.xCircle),
          ),
        ),
      );

      avatarWidget = Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(80.0),
            child: avatarWidget,
          ),
          // Border
          Container(
            width: 160.0,
            height: 160.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: TColor.grey200,
                width: 3.0,
              ),
            ),
            clipBehavior: Clip.antiAlias,
          ),
          // Clear Button
          clearButton,
        ],
      );
    } else {
      avatarWidget = SvgPicture.asset(
        IconAsset.avatar,
        width: 160.0,
        height: 160.0,
      );
    }

    return GestureDetector(
      onTap: () => showSelectImageOptions(context),
      child: avatarWidget,
    );
  }

  void showSelectImageOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext _) => OptionDialog(
        actions: <OptionAction>[
          OptionAction(
            text: 'Camera',
            icon: SvgPicture.asset(IconAsset.camera),
            onPressed: () => pickImageProcess(context, ImageSource.camera),
          ),
          OptionAction(
            text: 'Gallery',
            icon: SvgPicture.asset(IconAsset.gallery),
            onPressed: () => pickImageProcess(context, ImageSource.gallery),
          ),
        ],
      ),
    );
  }

  Future<void> pickImageProcess(
    BuildContext context,
    ImageSource source,
  ) async {
    context.pop();
    final File? pickedFile = await pickImageFrom(source);
    final String? errorMsg = (validator ?? defaultValidator).call(pickedFile);
    if (pickedFile == null) {
      return;
    }
    if (errorMsg != null) {
      if (context.mounted) {
        onValidationError?.call(errorMsg);
      }
      return;
    }
    onImageChanged(pickedFile);
  }

  Future<File?> pickImageFrom(ImageSource source) async {
    final XFile? pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      final CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        compressQuality: 100,
        uiSettings: <PlatformUiSettings>[
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: TColor.primary1000,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
        ],
      );
      if (croppedFile != null) {
        return File(croppedFile.path);
      }
    }
    return null;
  }
}
