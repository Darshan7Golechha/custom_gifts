part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const ItemState._(); // Add this private constructor

  const factory ItemState({
    required Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
    required bool isLoading,
    required Item item,
    required List<Item> itemList,
  }) = _ItemState;

  factory ItemState.initial() => ItemState(
        failureOrSuccessOption: const None(),
        isLoading: false,
        item: Item.empty(),
        itemList: <Item>[],
      );
}
