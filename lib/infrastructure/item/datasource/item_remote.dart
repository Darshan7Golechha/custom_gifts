import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/config/env_config.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';

class ItemRemoteDataSource {
  final Dio _dio;

  ItemRemoteDataSource() : _dio = Dio() {
    _dio.options.baseUrl = EnvConfig.apiBaseUrl;
    _dio.options.headers = {
      'Content-Type': 'application/json',
    };
    _dio.options.validateStatus = (status) => true;
  }

  Future<List<ItemDto>> getItems() async {
    try {
      final response = await _dio.get('/items?populate=*');

      if (response.statusCode != 200) {
        throw Exception('Failed to load items: ${response.statusCode}');
      }

      if (response.data == null || response.data['data'] == null) {
        throw Exception('Invalid response format from server');
      }

      final List<dynamic> data = response.data['data'] as List<dynamic>;
      return data.map((item) {
        if (item == null) {
          throw Exception('Null item in response');
        }
        return ItemDto.fromStrapi(item as Map<String, dynamic>);
      }).toList();
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Failed to load items: $e');
    }
  }

  // Future<ItemDto> fetchItemsFromJson() async {
  //   try {
  //     // Load the JSON data from the assets
  //     final String response = await rootBundle.loadString('assets/item.json');

  //     // Parse the JSON data
  //     final Map<String, dynamic> data = json.decode(response);

  //     // Convert the JSON to a ItemDto object
  //     return ItemDto.fromJson(data);
  //   } catch (e) {
  //     throw Exception('Failed to fetch item: $e');
  //   }
  // }

  // Future<ItemDto> getItem(String itemID) async {
  //   try {
  //     final item = await fetchItemsFromJson();
  //     if (item.itemID == itemID) {
  //       return item;
  //     }
  //     return ItemDto.fromDomain(Item.empty().copyWith(itemID: itemID));
  //   } catch (e) {
  //     throw Exception('Failed to get item: $e');
  //   }
  //   // return (await postRef.doc(postID).get()).data()!;
  // }

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
