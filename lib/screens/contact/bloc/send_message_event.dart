part of 'send_message_bloc.dart';

@immutable
abstract class SendMessageEvent {}

class SendMessageProcessingEvent extends SendMessageEvent {
  final SendMessageModel messageModel;
  SendMessageProcessingEvent(this.messageModel);
}
