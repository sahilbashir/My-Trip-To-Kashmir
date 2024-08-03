import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mytriptokashmir/services/data_services.dart';

import 'cubit/app_cubit_logics.dart';
import 'cubit/app_cubits.dart';

class Extra extends StatelessWidget {
  const Extra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: BlocProvider<AppCubits>(
  create: (context)=>AppCubits(
    data: DataServices(),
  ),
  child: AppCubitLogics(),
),

    );
  }
}
