// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'welcome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WelcomeEventTearOff {
  const _$WelcomeEventTearOff();

  _OnButtonPressed onButtonPressed({required bool isOpen, String? buttonType}) {
    return _OnButtonPressed(
      isOpen: isOpen,
      buttonType: buttonType,
    );
  }

  _SwipeDownToClose swipeDownToClose() {
    return const _SwipeDownToClose();
  }
}

/// @nodoc
const $WelcomeEvent = _$WelcomeEventTearOff();

/// @nodoc
mixin _$WelcomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOpen, String? buttonType) onButtonPressed,
    required TResult Function() swipeDownToClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOpen, String? buttonType)? onButtonPressed,
    TResult Function()? swipeDownToClose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnButtonPressed value) onButtonPressed,
    required TResult Function(_SwipeDownToClose value) swipeDownToClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnButtonPressed value)? onButtonPressed,
    TResult Function(_SwipeDownToClose value)? swipeDownToClose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeEventCopyWith<$Res> {
  factory $WelcomeEventCopyWith(
          WelcomeEvent value, $Res Function(WelcomeEvent) then) =
      _$WelcomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WelcomeEventCopyWithImpl<$Res> implements $WelcomeEventCopyWith<$Res> {
  _$WelcomeEventCopyWithImpl(this._value, this._then);

  final WelcomeEvent _value;
  // ignore: unused_field
  final $Res Function(WelcomeEvent) _then;
}

/// @nodoc
abstract class _$OnButtonPressedCopyWith<$Res> {
  factory _$OnButtonPressedCopyWith(
          _OnButtonPressed value, $Res Function(_OnButtonPressed) then) =
      __$OnButtonPressedCopyWithImpl<$Res>;
  $Res call({bool isOpen, String? buttonType});
}

/// @nodoc
class __$OnButtonPressedCopyWithImpl<$Res>
    extends _$WelcomeEventCopyWithImpl<$Res>
    implements _$OnButtonPressedCopyWith<$Res> {
  __$OnButtonPressedCopyWithImpl(
      _OnButtonPressed _value, $Res Function(_OnButtonPressed) _then)
      : super(_value, (v) => _then(v as _OnButtonPressed));

  @override
  _OnButtonPressed get _value => super._value as _OnButtonPressed;

  @override
  $Res call({
    Object? isOpen = freezed,
    Object? buttonType = freezed,
  }) {
    return _then(_OnButtonPressed(
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonType: buttonType == freezed
          ? _value.buttonType
          : buttonType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OnButtonPressed implements _OnButtonPressed {
  const _$_OnButtonPressed({required this.isOpen, this.buttonType});

  @override
  final bool isOpen;
  @override
  final String? buttonType;

  @override
  String toString() {
    return 'WelcomeEvent.onButtonPressed(isOpen: $isOpen, buttonType: $buttonType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnButtonPressed &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)) &&
            (identical(other.buttonType, buttonType) ||
                const DeepCollectionEquality()
                    .equals(other.buttonType, buttonType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isOpen) ^
      const DeepCollectionEquality().hash(buttonType);

  @JsonKey(ignore: true)
  @override
  _$OnButtonPressedCopyWith<_OnButtonPressed> get copyWith =>
      __$OnButtonPressedCopyWithImpl<_OnButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOpen, String? buttonType) onButtonPressed,
    required TResult Function() swipeDownToClose,
  }) {
    return onButtonPressed(isOpen, buttonType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOpen, String? buttonType)? onButtonPressed,
    TResult Function()? swipeDownToClose,
    required TResult orElse(),
  }) {
    if (onButtonPressed != null) {
      return onButtonPressed(isOpen, buttonType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnButtonPressed value) onButtonPressed,
    required TResult Function(_SwipeDownToClose value) swipeDownToClose,
  }) {
    return onButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnButtonPressed value)? onButtonPressed,
    TResult Function(_SwipeDownToClose value)? swipeDownToClose,
    required TResult orElse(),
  }) {
    if (onButtonPressed != null) {
      return onButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _OnButtonPressed implements WelcomeEvent {
  const factory _OnButtonPressed({required bool isOpen, String? buttonType}) =
      _$_OnButtonPressed;

  bool get isOpen => throw _privateConstructorUsedError;
  String? get buttonType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnButtonPressedCopyWith<_OnButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwipeDownToCloseCopyWith<$Res> {
  factory _$SwipeDownToCloseCopyWith(
          _SwipeDownToClose value, $Res Function(_SwipeDownToClose) then) =
      __$SwipeDownToCloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$SwipeDownToCloseCopyWithImpl<$Res>
    extends _$WelcomeEventCopyWithImpl<$Res>
    implements _$SwipeDownToCloseCopyWith<$Res> {
  __$SwipeDownToCloseCopyWithImpl(
      _SwipeDownToClose _value, $Res Function(_SwipeDownToClose) _then)
      : super(_value, (v) => _then(v as _SwipeDownToClose));

  @override
  _SwipeDownToClose get _value => super._value as _SwipeDownToClose;
}

/// @nodoc

class _$_SwipeDownToClose implements _SwipeDownToClose {
  const _$_SwipeDownToClose();

  @override
  String toString() {
    return 'WelcomeEvent.swipeDownToClose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SwipeDownToClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOpen, String? buttonType) onButtonPressed,
    required TResult Function() swipeDownToClose,
  }) {
    return swipeDownToClose();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOpen, String? buttonType)? onButtonPressed,
    TResult Function()? swipeDownToClose,
    required TResult orElse(),
  }) {
    if (swipeDownToClose != null) {
      return swipeDownToClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnButtonPressed value) onButtonPressed,
    required TResult Function(_SwipeDownToClose value) swipeDownToClose,
  }) {
    return swipeDownToClose(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnButtonPressed value)? onButtonPressed,
    TResult Function(_SwipeDownToClose value)? swipeDownToClose,
    required TResult orElse(),
  }) {
    if (swipeDownToClose != null) {
      return swipeDownToClose(this);
    }
    return orElse();
  }
}

abstract class _SwipeDownToClose implements WelcomeEvent {
  const factory _SwipeDownToClose() = _$_SwipeDownToClose;
}

/// @nodoc
class _$WelcomeStateTearOff {
  const _$WelcomeStateTearOff();

  _WelcomeState call({required bool isStackOpen, String? buttonType}) {
    return _WelcomeState(
      isStackOpen: isStackOpen,
      buttonType: buttonType,
    );
  }
}

/// @nodoc
const $WelcomeState = _$WelcomeStateTearOff();

/// @nodoc
mixin _$WelcomeState {
  bool get isStackOpen => throw _privateConstructorUsedError;
  String? get buttonType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeStateCopyWith<WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res>;
  $Res call({bool isStackOpen, String? buttonType});
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res> implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  final WelcomeState _value;
  // ignore: unused_field
  final $Res Function(WelcomeState) _then;

  @override
  $Res call({
    Object? isStackOpen = freezed,
    Object? buttonType = freezed,
  }) {
    return _then(_value.copyWith(
      isStackOpen: isStackOpen == freezed
          ? _value.isStackOpen
          : isStackOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonType: buttonType == freezed
          ? _value.buttonType
          : buttonType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WelcomeStateCopyWith<$Res>
    implements $WelcomeStateCopyWith<$Res> {
  factory _$WelcomeStateCopyWith(
          _WelcomeState value, $Res Function(_WelcomeState) then) =
      __$WelcomeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isStackOpen, String? buttonType});
}

/// @nodoc
class __$WelcomeStateCopyWithImpl<$Res> extends _$WelcomeStateCopyWithImpl<$Res>
    implements _$WelcomeStateCopyWith<$Res> {
  __$WelcomeStateCopyWithImpl(
      _WelcomeState _value, $Res Function(_WelcomeState) _then)
      : super(_value, (v) => _then(v as _WelcomeState));

  @override
  _WelcomeState get _value => super._value as _WelcomeState;

  @override
  $Res call({
    Object? isStackOpen = freezed,
    Object? buttonType = freezed,
  }) {
    return _then(_WelcomeState(
      isStackOpen: isStackOpen == freezed
          ? _value.isStackOpen
          : isStackOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonType: buttonType == freezed
          ? _value.buttonType
          : buttonType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WelcomeState implements _WelcomeState {
  const _$_WelcomeState({required this.isStackOpen, this.buttonType});

  @override
  final bool isStackOpen;
  @override
  final String? buttonType;

  @override
  String toString() {
    return 'WelcomeState(isStackOpen: $isStackOpen, buttonType: $buttonType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WelcomeState &&
            (identical(other.isStackOpen, isStackOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isStackOpen, isStackOpen)) &&
            (identical(other.buttonType, buttonType) ||
                const DeepCollectionEquality()
                    .equals(other.buttonType, buttonType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isStackOpen) ^
      const DeepCollectionEquality().hash(buttonType);

  @JsonKey(ignore: true)
  @override
  _$WelcomeStateCopyWith<_WelcomeState> get copyWith =>
      __$WelcomeStateCopyWithImpl<_WelcomeState>(this, _$identity);
}

abstract class _WelcomeState implements WelcomeState {
  const factory _WelcomeState({required bool isStackOpen, String? buttonType}) =
      _$_WelcomeState;

  @override
  bool get isStackOpen => throw _privateConstructorUsedError;
  @override
  String? get buttonType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WelcomeStateCopyWith<_WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
