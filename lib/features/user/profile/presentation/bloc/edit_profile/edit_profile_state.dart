import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.freezed.dart';

/// Edit profile state
@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;

  const factory EditProfileState.loading() = _Loading;

  const factory EditProfileState.loaded({
    required String name,
    String? gender,
    required String contactNumber,
    required String email,
    DateTime? dateOfBirth,
    TimeOfDay? timeOfBirth,
    String? placeOfBirth,
    required String pinCode,
    required String state,
    required String city,
    required String addressLine,
  }) = _Loaded;

  const factory EditProfileState.updating({
    required String name,
    String? gender,
    required String contactNumber,
    required String email,
    DateTime? dateOfBirth,
    TimeOfDay? timeOfBirth,
    String? placeOfBirth,
    required String pinCode,
    required String state,
    required String city,
    required String addressLine,
  }) = _Updating;

  const factory EditProfileState.success() = _Success;

  const factory EditProfileState.error(String message) = _Error;
}
