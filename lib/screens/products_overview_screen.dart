import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/products.dart';
import '../widgets/products_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Nekoshop'),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only favorites'),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show all'),
                value: FilterOptions.All,
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              // if (selectedValue == FilterOptions.Favorites) {
              //   productsContainer.showFavoritesOnly();
              // } else {
              //   productsContainer.showAll();
              // }
            },
          ),
        ],
      ),
      body: ProductsWidget(),
    );
  }
}
