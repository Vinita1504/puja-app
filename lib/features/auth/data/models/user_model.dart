import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// User model (Data layer)
/// Extends UserEntity and adds JSON serialization
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    String? name,
    String? photoUrl,
  }) = _UserModel;

  const UserModel._();

  /// Convert to entity (Domain layer)
  UserEntity toEntity() {
    return UserEntity(id: id, email: email, name: name, photoUrl: photoUrl);
  }

  /// Create from entity
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      photoUrl: entity.photoUrl,
    );
  }

  /// Create from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
