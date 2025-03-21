import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';

abstract class IItemRepository {
  Future<Either<ApiFailure, List<Item>>> getItems();
  Future<Either<ApiFailure, bool>> addItem({required Item item});
  Future<Either<ApiFailure, Item>> getItemDetails({required String itemID});
}
