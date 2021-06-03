part of 'welcome_bloc.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    required bool isStackOpen,
    String? buttonType,
  }) = _WelcomeState;

  factory WelcomeState.initial() => WelcomeState(isStackOpen: false);
}
