part of 'welcome_bloc.dart';

@freezed
class WelcomeEvent with _$WelcomeEvent {
  const factory WelcomeEvent.onButtonPressed({
    required bool isOpen,
    String? buttonType,
  }) = _OnButtonPressed;
  const factory WelcomeEvent.swipeDownToClose() = _SwipeDownToClose;
}
