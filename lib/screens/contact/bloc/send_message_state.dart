part of 'send_message_bloc.dart';

@immutable
abstract class SendMessageState {}

class SendMessageInitial extends SendMessageState {}

class SendMessageProcessing extends SendMessageState {
  final ProcessingState state;
  final String? name;

  SendMessageProcessing({required this.state, this.name});
}
