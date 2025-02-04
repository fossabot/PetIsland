part of petisland.login.bloc;

@immutable
abstract class LoginEvent extends BaseEvent {
  @override
  String toString() => "$runtimeType";
}

class LoggingEvent extends LoginEvent {
  final String username;
  final String password;

  LoggingEvent(this.username, this.password);

  @override
  String toString() => "$runtimeType $username";
}

class LoginSucceedEvent extends LoginEvent {}

class LoginErrorEvent extends BaseErrorEvent implements LoginEvent {
  LoginErrorEvent([String message]) : super(message);
}
