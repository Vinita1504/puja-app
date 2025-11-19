import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_event.freezed.dart';

/// Edit profile events
@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.profileLoaded() = ProfileLoaded;

  const factory EditProfileEvent.nameChanged(String name) = NameChanged;

  const factory EditProfileEvent.genderChanged(String gender) = GenderChanged;

  const factory EditProfileEvent.contactNumberChanged(String contactNumber) =
      ContactNumberChanged;

  const factory EditProfileEvent.emailChanged(String email) = EmailChanged;

  const factory EditProfileEvent.dateOfBirthChanged(DateTime? dateOfBirth) =
      DateOfBirthChanged;

  const factory EditProfileEvent.timeOfBirthChanged(TimeOfDay? timeOfBirth) =
      TimeOfBirthChanged;

  const factory EditProfileEvent.placeOfBirthChanged(String placeOfBirth) =
      PlaceOfBirthChanged;

  const factory EditProfileEvent.pinCodeChanged(String pinCode) =
      PinCodeChanged;

  const factory EditProfileEvent.stateChanged(String state) = StateChanged;

  const factory EditProfileEvent.cityChanged(String city) = CityChanged;

  const factory EditProfileEvent.addressLineChanged(String addressLine) =
      AddressLineChanged;

  const factory EditProfileEvent.updateProfileRequested() =
      UpdateProfileRequested;
}
