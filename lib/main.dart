import 'package:exercise_mobile/cubit/basket_cubit.dart';
import 'package:exercise_mobile/cubit/book_cubit.dart';
import 'package:exercise_mobile/cubit/offer_cubit.dart';
import 'package:exercise_mobile/utils/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => BookCubit(DataServices())..loadBooks(),
      ),
      BlocProvider(
        create: (context) => BasketCubit(DataServices()),
      ),
      BlocProvider(
        create: (context) => OfferCubit(DataServices()),
      ),
    ],
    child: MyApp(),
  ));
}
