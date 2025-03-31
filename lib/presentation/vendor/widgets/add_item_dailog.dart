import 'dart:io';

// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/app_routes.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_button.dart';
import 'package:flutter_application_1/presentation/auth/widgets/custom_text_field.dart';
import 'package:flutter_application_1/presentation/core/snack_bar.dart';
import 'package:flutter_application_1/presentation/vendor/widgets/custom_hashtag_field.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class AddItemDialogContent extends StatefulWidget {
  final bool isEditing;
  final Item? item;

  const AddItemDialogContent({
    super.key,
    this.isEditing = false,
    this.item,
  });

  @override
  State<AddItemDialogContent> createState() => _AddItemDialogContentState();
}

class _AddItemDialogContentState extends State<AddItemDialogContent> {
  final itemController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();
  List<String> selectedImages = [];
  List<String> selectedVideos = [];

  @override
  void initState() {
    if (widget.isEditing) {
      itemController.text = widget.item!.title;
      priceController.text = widget.item!.price.toString();
      selectedImages = widget.item!.images;
      selectedVideos = widget.item!.videos;
    } else {
      context.read<ItemBloc>().add(const ItemEvent.initialized());
    }
    super.initState();
  }

  @override
  void dispose() {
    itemController.dispose();
    priceController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemBloc, ItemState>(
      listenWhen: (previous, current) =>
          previous.failureOrSuccessOption != current.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (a) => a.fold(
            (failed) {
              showSnackBar(
                context: context,
                message: failed.failureMessage.toString(),
              );
            },
            (success) {
              if (widget.isEditing) {
                context.go(
                  Uri(
                    path: AppRouter.itemDetail,
                    queryParameters: {'itemID': widget.item!.itemID},
                  ).toString(),
                );
              } else {
                context.go(
                  Uri(
                    path: AppRouter.itemDetail,
                    queryParameters: {'itemID': state.item.itemID},
                  ).toString(),
                );
              }

              showSnackBar(
                context: context,
                message: widget.isEditing
                    ? 'Edited item successfully'
                    : 'Added item successfully',
              );
            },
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.item != current.item,
      builder: (context, state) {
        return SingleChildScrollView(
          child: Card(
            color: state.isLoading ? Colors.grey.shade100 : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.file_copy,
                        size: 30,
                        color: state.isLoading
                            ? Colors.grey.shade200
                            : const Color(0xffE85DBE),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.isEditing ? 'Update Item' : 'Create Item',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // CustomHashtagField(
                  //   controller: itemController,
                  //   hint: 'What\'s on your mind right now?',
                  //   label: '',
                  //   enabled: !state.isLoading,
                  //   textInputType: TextInputType.multiline,
                  //   maxLines: 3,
                  //   maxLength: 250,
                  // ),
                  InkWell(
                    focusColor: Colors.transparent,
                    onTap: state.isLoading
                        ? null
                        : () async {
                            final ImagePicker picker = ImagePicker();
                            try {
                              final List<XFile> files =
                                  await picker.pickMultipleMedia();

                              if (files.isNotEmpty) {
                                for (XFile file in files) {
                                  if (file.name.toLowerCase().endsWith('mp4') ||
                                      file.name
                                          .toLowerCase()
                                          .endsWith('hevc') ||
                                      file.name.toLowerCase().endsWith('mov')) {
                                    selectedVideos.add(file.path);
                                    context.read<ItemBloc>().add(
                                          ItemEvent.addVideo(
                                            videos: selectedVideos,
                                          ),
                                        );
                                  } else {
                                    selectedImages.add(file.path);
                                    context.read<ItemBloc>().add(
                                          ItemEvent.addImage(
                                            images: selectedImages,
                                          ),
                                        );
                                  }
                                }
                                setState(() {});
                              }
                            } catch (e) {
                              print('Error picking media: $e');
                            }
                          },
                    child: SizedBox(
                      height: 400,
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.grey[200],
                        child: (selectedImages.isEmpty &&
                                selectedVideos.isEmpty)
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.add_photo_alternate_outlined,
                                      size: 48),
                                  const SizedBox(height: 16),
                                  Text(
                                    'Add Photos or Videos',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Tap to select multiple files',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              )
                            : GridView.builder(
                                padding: const EdgeInsets.all(8),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8,
                                ),
                                itemCount: selectedImages.length +
                                    selectedVideos.length,
                                itemBuilder: (context, index) {
                                  if (index < selectedImages.length) {
                                    return _buildMediaPreview(
                                      path: selectedImages[index],
                                      isVideo: false,
                                      onRemove: () {
                                        setState(() {
                                          selectedImages.removeAt(index);
                                        });
                                      },
                                    );
                                  } else {
                                    final videoIndex =
                                        index - selectedImages.length;
                                    return _buildMediaPreview(
                                      path: selectedVideos[videoIndex],
                                      isVideo: true,
                                      onRemove: () {
                                        setState(() {
                                          selectedVideos.removeAt(videoIndex);
                                        });
                                      },
                                    );
                                  }
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hint: 'Enter price of this item',
                    label: '',
                    enabled: !state.isLoading,
                    controller: priceController,
                    prefixIcon: const Icon(
                      Icons.attach_money_rounded,
                      color: Colors.black,
                    ),
                    textInputType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^(\d+)?\.?\d{0,2}')),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  state.isLoading
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                text: 'CANCEL',
                                color: Colors.grey,
                                function: () => context.go(AppRouter.home),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: CustomButton(
                                text: widget.isEditing ? 'UPDATE' : 'POST',
                                function: () {
                                  if (itemController.text.isEmpty &&
                                      selectedImages.isEmpty &&
                                      selectedVideos.isEmpty) {
                                    return showSnackBar(
                                      context: context,
                                      message:
                                          'Please add something to the item',
                                    );
                                  }

                                  final item = widget.isEditing
                                      ? widget.item!.copyWith(
                                          title: itemController.text,
                                          images: selectedImages,
                                          videos: selectedVideos,
                                          price: int.tryParse(
                                                priceController.text,
                                              ) ??
                                              0,
                                        )
                                      : Item.empty().copyWith(
                                          title: itemController.text,
                                          images: selectedImages,
                                          videos: selectedVideos,
                                          price: int.tryParse(
                                                priceController.text,
                                              ) ??
                                              0,
                                        );

                                  context.read<ItemBloc>().add(
                                        // widget.isEditing
                                        //     ? ItemEvent.editItem(
                                        //         item: item)
                                        ItemEvent.addItem(item: item),
                                      );
                                },
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMediaPreview({
    required String path,
    required bool isVideo,
    required VoidCallback onRemove,
  }) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: isVideo
              ? Container(
                  color: Colors.black,
                  child: const Center(
                    child: Icon(
                      Icons.play_circle_outline_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                )
              : Image.file(
                  File(path),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
