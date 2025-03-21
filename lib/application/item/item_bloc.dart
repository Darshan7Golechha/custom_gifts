import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/item/entities/item.dart';

import 'package:flutter_application_1/domain/item/repository/i_item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

part 'item_event.dart';
part 'item_state.dart';
part 'item_bloc.freezed.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final IItemRepository itemRepository;
  ItemBloc({required this.itemRepository}) : super(ItemState.initial()) {
    on<ItemEvent>(_onEvent);
  }

  Future<void> _onEvent(ItemEvent event, Emitter<ItemState> emit) async {
    await event.map(
      initialized: (e) async => emit(ItemState.initial()),
      fetchItems: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
            itemList: [],
          ),
        );
        final failureOrSuccess = await itemRepository.getItems();

        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              itemList: <Item>[],
              failureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (items) => emit(
            state.copyWith(
              itemList: items,
              failureOrSuccessOption: none(),
              isLoading: false,
            ),
          ),
        );
      },
      fetchItem: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );

        final failureOrSuccess = await itemRepository.getItem(itemID: e.itemID);

        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              failureOrSuccessOption: optionOf(failureOrSuccess),
              isLoading: false,
            ),
          ),
          (item) => emit(
            state.copyWith(
              item: item,
              failureOrSuccessOption: none(),
              isLoading: false,
            ),
          ),
        );
      },
      // addItem: (e) async {
      //   emit(
      //     state.copyWith(
      //       isLoading: true,
      //       failureOrSuccessOption: none(),
      //     ),
      //   );
      //   final failureOrSuccess = await itemRepository.addItem(
      //     item: e.item.copyWith(
      //       itemID: const Uuid().v1(),
      //     ),
      //   );

      //   emit(
      //     state.copyWith(
      //       failureOrSuccessOption: optionOf(failureOrSuccess),
      //       isLoading: false,
      //     ),
      //   );
      // },
    );
  }
}
