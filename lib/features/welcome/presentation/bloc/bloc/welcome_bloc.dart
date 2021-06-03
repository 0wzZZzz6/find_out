import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'welcome_bloc.freezed.dart';
part 'welcome_event.dart';
part 'welcome_state.dart';

@injectable
class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState.initial());

  @override
  Stream<WelcomeState> mapEventToState(
    WelcomeEvent event,
  ) async* {
    yield* event.map(
      onButtonPressed: (e) async* {
        yield state.copyWith(
          isStackOpen: true,
          buttonType: e.buttonType,
        );
      },
      swipeDownToClose: (e) async* {
        yield state.copyWith(
          isStackOpen: false,
          buttonType: null,
        );
      },
    );
  }
}
