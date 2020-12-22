import 'package:EsquireCustomerApp/blocs/activiti/activiti_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:EsquireCustomerApp/blocs/branch_carousel/branch_carousel_bloc.dart';
import 'package:EsquireCustomerApp/blocs/chatroom/chatroom_bloc.dart';
import 'package:EsquireCustomerApp/blocs/initial/intial_bloc.dart';
import 'package:EsquireCustomerApp/blocs/our_products/our_products_bloc.dart';
import 'package:EsquireCustomerApp/blocs/served_products/served_products_bloc.dart';
import 'package:EsquireCustomerApp/blocs/tickets_list/tickets_list_bloc.dart';
import 'package:EsquireCustomerApp/blocs/translation/translation_bloc.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/core/themes/default_theme.dart';
import 'package:EsquireCustomerApp/presentation/widgets/initial_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:openapi/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    init() async {
      final prefs = await SharedPreferences.getInstance();
      //print(prefs.get('lang'));
      if (prefs.get('lang') == null) {
        prefs.setString('lang', 'eng');
      }
    }

    init();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatroomBloc>(
          create: (context) => ChatroomBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(Openapi()),
        ),
        BlocProvider<BottomNavigationBloc>(
          create: (context) => BottomNavigationBloc(),
        ),
        BlocProvider<BranchCarouselBloc>(
            create: (context) => BranchCarouselBloc()),
        BlocProvider<OurProductsBloc>(create: (context) => OurProductsBloc()),
        BlocProvider<ServedProductsBloc>(
            create: (context) => ServedProductsBloc()),
        BlocProvider<TranslationBloc>(create: (context) => TranslationBloc()),
        BlocProvider<TicketsListBloc>(create: (context) => TicketsListBloc()),
        BlocProvider<IntialBloc>(create: (context) => IntialBloc()),
        BlocProvider<ActivitiBloc>(create: (context) => ActivitiBloc())
      ],
      child: GetMaterialApp(
          title: 'Esquire',
          theme: DefaultTheme.getThemeData(),
          home: InitialLayout()),
    );
  }
}
