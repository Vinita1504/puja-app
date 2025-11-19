part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState({@Default(2) int selectedIndex}) =
      _BottomNavState;
}
