import 'package:app/screens/contact/bloc/send_message_bloc.dart';
import 'package:app/screens/contact/form_input_widget.dart';
import 'package:app/screens/model/processing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model/send_message_model.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({Key? key}) : super(key: key);

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _companyController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 350,
            color: Colors.green,
          ),
        ),
        Card(
          color: Colors.white,
          margin: const EdgeInsets.all(40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SizedBox(
            width: 500,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        FormInput(
                            controller: _nameController,
                            label: 'Name',
                            hint: 'Some one'),
                        const SizedBox(width: 20),
                        FormInput(
                            controller: _emailController,
                            label: 'Email',
                            hint: 'example@email.com'),
                      ],
                    ),
                    Row(
                      children: [
                        FormInput(
                            controller: _phoneController,
                            label: 'Phone No',
                            hint: '(1234) 567 890'),
                        const SizedBox(width: 20),
                        FormInput(
                            controller: _companyController,
                            label: 'Company',
                            hint: 'Some Technology'),
                      ],
                    ),
                    FormInput(
                        controller: _messageController,
                        label: 'Leave your a message',
                        maxLines: 4,
                        maxLength: 500,
                        hint: 'Please type your message here...'),
                    BlocConsumer<SendMessageBloc, SendMessageState>(
                      listener: (context, state) {
                        if (state is SendMessageProcessing) {
                          if (state.state == ProcessingState.success) {
                            state.state.showMessage(
                                result: state.state,
                                name: state.name,
                                context: context);
                            _formKey.currentState?.reset();
                          } else if (state.state == ProcessingState.error) {
                            state.state.showMessage(
                                result: state.state, context: context);
                            _formKey.currentState?.reset();
                          }
                        }
                      },
                      builder: (context, state) {
                        if (state is SendMessageProcessing) {
                          return state.state == ProcessingState.processing
                              ? const CircularProgressIndicator()
                              : const SizedBox();
                        }

                        return ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState?.validate() == true) {
                              SendMessageModel message = SendMessageModel(
                                name: _nameController.text,
                                email: _emailController.text,
                                phone: _phoneController.text,
                                company: _companyController.text,
                                message: _messageController.text,
                              );
                              BlocProvider.of<SendMessageBloc>(context)
                                  .add(SendMessageProcessingEvent(message));
                            }
                          },
                          child: Text('Send Message',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(color: Colors.white)),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
