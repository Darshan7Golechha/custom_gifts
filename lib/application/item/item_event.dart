part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.initialized() = _Initialized;
  const factory ItemEvent.fetchItems() = _FetchItems;
  const factory ItemEvent.fetchItem({required String itemID}) = _FetchItem;
  const factory ItemEvent.fetchUserItems({required String userID}) =
      _FetchUSerItems;
  const factory ItemEvent.fetchItemsByCategory({required String category}) =
      _FetchItemsByCategory;
  const factory ItemEvent.addItem({required Item item}) = _AddItem;

  const factory ItemEvent.addImage({required List<String> images}) = _AddImage;
  const factory ItemEvent.addVideo({required List<String> videos}) = _AddVideo;
}
