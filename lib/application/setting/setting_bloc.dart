import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/core/error/api_failures.dart';
import 'package:flutter_application_1/domain/user/entities/user.dart';
import 'package:flutter_application_1/domain/user/repository/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_bloc.freezed.dart';

part 'setting_event.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final IUserRepository userRepository;

  SettingBloc({required this.userRepository}) : super(SettingState.initial()) {
    on<SettingEvent>(_onEvent);
  }

  Future<void> _onEvent(SettingEvent event, Emitter<SettingState> emit) async {
    await event.map(
        initialized: (e) async => emit(SettingState.initial()),
        editUserProfilePhoto: (e) async {
          emit(
            state.copyWith(
              isLoading: true,
              apiFailureOrSuccessOption: none(),
            ),
          );

          final failureOrSuccess = await userRepository.editUserProfilePhoto(
            user: e.user,
            selectedUserImage: e.selectedUserImage,
          );
          failureOrSuccess.fold(
            (failure) => emit(
              state.copyWith(
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                isLoading: false,
              ),
            ),
            (user) => emit(
              state.copyWith(
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                isLoading: false,
              ),
            ),
          );
        });
  }
}
