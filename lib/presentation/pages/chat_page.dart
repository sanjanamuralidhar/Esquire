import 'dart:io';

import 'package:EsquireCustomerApp/blocs/chatroom/chatroom_bloc.dart';
import 'package:EsquireCustomerApp/blocs/image_picker/image_picker_bloc.dart';
import 'package:EsquireCustomerApp/blocs/toggle/toggle_bloc.dart';
import 'package:EsquireCustomerApp/mocks/models/message.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';

class ChatPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();

  ChatPage() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(
        _scrollController.position.maxScrollExtent + 40,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: LocalizedText(text: Text('Chat with our Executive')),
      ),
      body: Builder(builder: (buildContext) {
        return Column(
          children: [Expanded(child: _chatContent(buildContext)), _chatInput()],
        );
      }),
    );
  }

  Widget _chatContent(context) {
    return BlocBuilder<ChatroomBloc, ChatroomState>(builder: (context, state) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            controller: _scrollController,
            children: state.messages
                .map((message) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: message.isSender
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: message.isSender
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey[300]),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                message.message,
                                style: TextStyle(
                                    color: message.isSender
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  TimeOfDay.now().format(context),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      );
    });
  }

  Widget _chatInput() {
    return BlocProvider<ToggleBloc>(
      create: (context) => ToggleBloc(),
      child: Container(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100)),
            child: Builder(
              builder: (context) => BlocBuilder<ToggleBloc, ToggleState>(
                  builder: (context, state) {
                final _toggleBloc = BlocProvider.of<ToggleBloc>(context);
                final _chatroomBloc = BlocProvider.of<ChatroomBloc>(context);
                return Form(
                  key: _formKey,
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextFormField(
                          // initialValue: ' ',
                          //attribute: 'message',
                          onSaved: (newValue) {
                            _chatroomBloc.add(MessageUpdateEvent(
                                message: Message(
                                    isSender: true, message: newValue)));
                          },
                          autofocus: false,
                          onChanged: (value) {
                            print(value.length.toString());
                            if (value.length == 1 || value.length == 2) {
                              _toggleBloc.add(ToggleOnEvent());
                            } else if (value.length == 0) {
                              _toggleBloc.add(ToggleOffEvent());
                            }
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 20)),
                        ),
                      )),
                      state is ToggleOnState
                          ? IconButton(
                              icon: Icon(
                                Icons.send,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();
                                  _formKey.currentState.reset();
                                  _toggleBloc.add(ToggleOffEvent());
                                  print(_scrollController
                                      .position.maxScrollExtent
                                      .toString());
                                  _scrollController.animateTo(
                                      _scrollController
                                              .position.maxScrollExtent +
                                          40,
                                      duration: Duration(milliseconds: 100),
                                      curve: Curves.linear);
                                }
                              })
                          : Container(),
                      state is ToggleOffState
                          ? Container(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.attach_file,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () async {
                                    File file = await FilePicker.getFile();
                                  }))
                          : Container(),
                      state is ToggleOffState
                          ? IconButton(
                              icon: Icon(
                                Icons.mic,
                                color: Colors.grey,
                              ),
                              onPressed: () {})
                          : Container()
                    ],
                  ),
                );
              }),
            ),
          ),
        )),
      ),
    );
  }
}
