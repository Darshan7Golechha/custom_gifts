part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.initialized() = _Initialized;
  const factory ItemEvent.fetchItems() = _FetchItems;
  const factory ItemEvent.fetchItem({required String itemID}) = _FetchItem;
}
