import 'package:EsquireCustomerApp/blocs/translation/translation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:translator/translator.dart';

class LocalizedText extends StatelessWidget {
  final Text text;
  final translator = GoogleTranslator();
  LocalizedText({this.text});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<TranslationBloc, TranslationState>(
    //   builder: (context, state) {
    //     return FutureBuilder(
    //       future: translator.translate(text.data, to: 'ml'),
    //       builder: (context, snapshot) {
    //         return Text(
    //           state is EnglishTranslationState
    //               ? text.data
    //               : snapshot.connectionState == ConnectionState.done &&
    //                       !snapshot.hasError &&
    //                       snapshot.hasData
    //                   ? snapshot.data.toString()
    //                   : text.data,
    //           overflow: text.overflow,
    //           style: text.style,
    //           textAlign: text.textAlign,
    //           textDirection: text.textDirection,
    //         );
    //       },
    //     );
    //   },
    // );
    return text;
  }
}
