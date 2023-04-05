import 'package:app/screens/model/processing_state.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../model/send_message_model.dart';

part 'send_message_event.dart';

part 'send_message_state.dart';

class SendMessageBloc extends Bloc<SendMessageEvent, SendMessageState> {
  SendMessageBloc() : super(SendMessageInitial()) {
    on<SendMessageProcessingEvent>((event, emit) async {
      emit(SendMessageProcessing(state: ProcessingState.processing));

      //  To do: Integrate with Firebase
      await Future.delayed(const Duration(seconds: 3));

      emit(SendMessageProcessing(
          state: ProcessingState.success, name: event.messageModel.name));
      //    emit(SendMessageProcessing(state: ProcessingState.error));
      emit(SendMessageInitial());
    });
  }
}
