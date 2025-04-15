import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';
import 'package:flutter_application_1/infrastructure/item/dtos/item_dto.dart';

class ItemRemoteDataSource {
  final itemRef = FirebaseFirestore.instance
      .collection('items')
      .withConverter<ItemDto>(
        fromFirestore: (snapshots, _) => ItemDto.fromJson(snapshots.data()!),
        toFirestore: (itemDto, _) => itemDto.toJson(),
      );
  Future<List<ItemDto>> getItems() async {
    return ((await itemRef
                .orderBy('createdDate', descending: true)
                .limit(5)
                .get())
            .docs)
        .map((e) => e.data())
        .toList();
  }

  Future<List<ItemDto>> getUserItems(String userID) async {
    return ((await itemRef
                .where('userID', isEqualTo: userID)
                .orderBy('createdDate', descending: true)
                .limit(5)
                .get())
            .docs)
        .map((e) => e.data())
        .toList();
  }

  Future<ItemDto> getItem(String itemID) async {
    // try {
    //   final item = await fetchItemsFromJson();
    //   if (item.itemID == itemID) {
    //     return item;
    //   }
    //   return ItemDto.fromDomain(Item.empty().copyWith(itemID: itemID));
    // } catch (e) {
    //   throw Exception('Failed to get item: $e');
    // }
    return (await itemRef.doc(itemID).get()).data()!;
  }

  Future<void> addItem(Item item) async {
    await itemRef.doc(item.itemID).set(ItemDto.fromDomain(item));
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
