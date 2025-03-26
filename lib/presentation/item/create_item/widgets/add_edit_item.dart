import 'package:flutter/material.dart';
import 'package:flutter_application_1/application/item/item_bloc.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

class AddEditItem extends StatefulWidget {
  const AddEditItem({super.key});

  @override
  State<AddEditItem> createState() => _AddEditItemState();
}

class _AddEditItemState extends State<AddEditItem> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final List<String> _selectedImages = [];
  final List<String> _selectedVideos = [];

  @override
  void initState() {
    super.initState();
    context.read<ItemBloc>().add(const ItemEvent.initialized());
  }

  Future<void> _pickImages() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> images = await picker.pickMultiImage();
    if (images.isNotEmpty) {
      setState(() {
        _selectedImages.addAll(images.map((image) => image.path));
      });
    }
  }

  Future<void> _pickVideo() async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      setState(() {
        _selectedVideos.add(video.path);
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final item = Item(
        itemID: const Uuid().v1(),
        userID: '', // This will be set in the repository
        title: _titleController.text,
        description: _descriptionController.text,
        thumbnail: _selectedImages.isNotEmpty ? _selectedImages.first : '',
        likesCount: 0,
        commentsCount: 0,
        price: int.parse(_priceController.text),
        images: _selectedImages,
        videos: _selectedVideos,
        createdDate: DateTime.now(),
      );

      context.read<ItemBloc>().add(ItemEvent.addItem(item: item));
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item'),
      ),
      body: BlocListener<ItemBloc, ItemState>(
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () => null,
            (failureOrSuccess) => failureOrSuccess.fold(
              (failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(failure.toString())),
                );
              },
              (success) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Item added successfully!')),
                );
                Navigator.of(context).pop();
              },
            ),
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(labelText: 'Description'),
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _priceController,
                  decoration: const InputDecoration(
                    labelText: 'Price',
                    prefixText: '\$',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a price';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: _pickImages,
                  icon: const Icon(Icons.photo_library),
                  label: const Text('Add Images'),
                ),
                if (_selectedImages.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _selectedImages.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: kIsWeb
                                  ? Image.network(
                                      _selectedImages[index],
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.grey[200],
                                          child: const Icon(Icons.error),
                                        );
                                      },
                                    )
                                  : Image.file(
                                      File(_selectedImages[index]),
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.grey[200],
                                          child: const Icon(Icons.error),
                                        );
                                      },
                                    ),
                            ),
                            Positioned(
                              top: 4,
                              right: 12,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedImages.removeAt(index);
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: _pickVideo,
                  icon: const Icon(Icons.video_library),
                  label: const Text('Add Video'),
                ),
                if (_selectedVideos.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text('${_selectedVideos.length} video(s) selected'),
                ],
                const SizedBox(height: 32),
                BlocBuilder<ItemBloc, ItemState>(
                  buildWhen: (previous, current) {
                    print('Previous loading state: ${previous.isLoading}');
                    print('Current loading state: ${current.isLoading}');
                    print(
                        'Should rebuild: ${previous.isLoading != current.isLoading}');
                    return previous.isLoading != current.isLoading;
                  },
                  builder: (context, state) {
                    print(
                        'Current state isLoading: ${state.isLoading}'); // Add this debug line
                    return ElevatedButton(
                      onPressed: state.isLoading ? null : _submitForm,
                      child: state.isLoading
                          ? const CircularProgressIndicator()
                          : const Text('Add Item'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
