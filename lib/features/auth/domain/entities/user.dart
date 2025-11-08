import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// User entity (Domain layer)
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    String? name,
    String? photoUrl,
  }) = _UserEntity;
}

