import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/infrastructure/core/http_service.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/env_config.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';

class ItemRemoteDataSource {
  HttpService httpService = HttpService();
  ItemRemoteDataSource({required this.httpService});

  Future<List<ItemDto>> getItems() async {
    try {
      final response = await httpService.request(
        method: 'GET',
        url: BaseOptions().baseUrl,
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load items: ${response.statusCode}');
      }

      final responseData = response.data;
      if (responseData == null || !responseData.containsKey('data')) {
        throw Exception('Invalid response format');
      }

      final List<dynamic> items = responseData['data'];
      print('Number of items received: ${items.length}');

      return items.map((item) => ItemDto.fromStrapi(item)).toList();
    } catch (e) {
      print('Error in getItems: $e');
      rethrow;
    }
  }

  Future<ItemDto> getItem(String itemID) async {
    try {
      final response = await httpService.request(
        method: 'GET',
        url: BaseOptions().baseUrl,
      );

      final responseData = response.data;
      if (responseData == null || !responseData.containsKey('data')) {
        throw Exception('Invalid response format');
      }

      if (responseData['error'] != null) {
        final error = responseData['error'];
        if (error['status'] == 404) {
          throw Exception('Item not found');
        }
        throw Exception(error['message'] ?? 'Unknown error');
      }

      final item = responseData['data'];
      return ItemDto.fromStrapi(item);
    } catch (e) {
      print('Error fetching item: $e');
      rethrow;
    }
  }

  Future<void> addItem(Item item) async {}

  // Remove an item (no backend, so just print the action)
  Future<void> removeItem(Item item) async {
    print('Item removed: ${item.title}');
  }

  // Edit an item (no backend, just simulate update action)
  Future<void> editItem(Item item) async {
    print('Item updated: ${item.title}');
  }
}
