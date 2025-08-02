import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/fav_provider.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Favourites')),
      body: favProvider.items.isEmpty
          ? const Center(child: Text('No favourites yet'))
          : ListView.builder(
              itemCount: favProvider.items.length,
              itemBuilder: (context, index) {
                final product = favProvider.items[index];
                return ListTile(
                  leading: Image.network(product.image, width: 50, height: 50),
                  title: Text(product.title),
                  subtitle: Text('৳${product.price.toStringAsFixed(2)} ⭐ ${product.rating}'),
                );
              },
            ),
    );
  }
}
