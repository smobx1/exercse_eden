import 'package:cached_network_image/cached_network_image.dart';
import 'package:exercise_mobile/cubit/basket_cubit.dart';
import 'package:exercise_mobile/cubit/book_cubit.dart';
import 'package:exercise_mobile/screens/basket_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: BlocBuilder<BookCubit, BookState>(
        builder: (context, state) {
          if (state.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Card(
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CachedNetworkImage(
                              imageUrl: state.books[index].cover!,
                              height: 64,
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 5,
                          child: Text(
                            state.books[index].title!,
                          ),
                        ),
                        Expanded(
                          child:
                              Text('\$' + state.books[index].price.toString()),
                        ),
                        BlocBuilder<BasketCubit, BasketState>(
                          builder: (context, basketState) {
                            return Expanded(
                              child: basketState.isbns
                                      .contains(state.books[index].isbn!)
                                  ? GestureDetector(
                                      onTap: () {
                                        context
                                            .read<BasketCubit>()
                                            .removeFromBasket(
                                                state.books[index].isbn
                                                    .toString(),
                                                state.books[index]);
                                      },
                                      child: const Icon(
                                        Icons.remove_shopping_cart,
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        context.read<BasketCubit>().addToBasket(
                                            state.books[index].isbn.toString(),
                                            state.books[index]);
                                      },
                                      child:
                                          const Icon(Icons.add_shopping_cart),
                                    ),
                            );
                          },
                        ),
                        // Text(state.books[index].isbn!),
                        // Text(state.books[index].price.toString()),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showMaterialModalBottomSheet(
            context: context,
            builder: (context) => BasketScreen(),
          );
        },
        child: const Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
