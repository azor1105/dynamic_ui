import 'package:dynamic_ui/cubits/dynamic_ui/dynamic_ui_cubit.dart';
import 'package:dynamic_ui/data/services/api_service.dart';
import 'package:dynamic_ui/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => DynamicUiCubit(
          apiService: ApiService(),
        )..getUiRequirements(),
      ),
    ],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
