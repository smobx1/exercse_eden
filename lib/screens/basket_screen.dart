import 'package:exercise_mobile/cubit/basket_cubit.dart';
import 'package:exercise_mobile/cubit/offer_cubit.dart';
import 'package:exercise_mobile/utils/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketScreen extends StatelessWidget {
  BasketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return BlocBuilder<BasketCubit, BasketState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
          height: size.height * 0.8,
          color: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)),
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'Standard total price:',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '\$' + state.basketPrice.toString(),
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Divider(),
                ),
                Text('Price after offer:'),
                BlocProvider(
                  create: (context) => OfferCubit(DataServices())
                    ..loadOffers(state.isbns, state.basketPrice),
                  child: BlocBuilder<OfferCubit, OfferState>(
                    builder: (context, state) {
                      if (state.isLoading == true) {
                        return CircularProgressIndicator();
                      }
                      return Text(
                        '\$' + state.price.toString(),
                        // state.offers[0].toString(),
                        style: TextStyle(fontSize: 24),
                      );
                    },
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        );
      },
    );
  }
}
