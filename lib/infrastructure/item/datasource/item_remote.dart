import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';

class ItemRemoteDataSource {
  // Load items from the local JSON file in the assets
  Future<List<ItemDto>> getItems() async {
    try {
      // Load the JSON file from assets
      final String response = await rootBundle.loadString('assets/items.json');

      // Decode the JSON into a List<dynamic>
      final List<dynamic> data = json.decode(response);

      // Convert each JSON object into ItemDto
      List<ItemDto> items = data.map<ItemDto>((item) {
        return ItemDto.fromJson(item);
      }).toList();

      // Limit the items to the first 5, if necessary
      return items.toList();
    } catch (e) {
      throw Exception("Failed to load items: $e");
    }
  }

  Future<ItemDto> fetchItemsFromJson() async {
    try {
      // Load the JSON data from the assets
      final String response = await rootBundle.loadString('assets/items.json');

      // Parse the JSON data
      final Map<String, dynamic> data = json.decode(response);

      // Convert the JSON to a ItemDto object
      return ItemDto.fromJson(data);
    } catch (e) {
      throw Exception('Failed to fetch item: $e');
    }
  }

  Future<ItemDto> getItem(String itemID) async {
    try {
      final item = await fetchItemsFromJson();
      if (item.itemID == itemID) {
        return item;
      }
      return ItemDto.fromDomain(Item.empty().copyWith(itemID: itemID));
    } catch (e) {
      throw Exception('Failed to get item: $e');
    }
    // return (await postRef.doc(postID).get()).data()!;
  }

  // Add an item (similar to previous methods, but we'll simulate storage)
  Future<void> addItem(Item item) async {
    // Here you would normally store the item, but we'll just log it for now
    print('Item added: ${item.title}');
  }

  // Remove an item (no backend, so just print the action)
  Future<void> removeItem(Item item) async {
    print('Item removed: ${item.title}');
  }

  // Edit an item (no backend, just simulate update action)
  Future<void> editItem(Item item) async {
    print('Item updated: ${item.title}');
  }
}
