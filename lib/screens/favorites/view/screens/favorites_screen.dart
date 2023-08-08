import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:layouts/screens/favorites/contoller/my_favorite_controller.dart';
import 'package:layouts/screens/favorites/models/favorite_data_model.dart';
import 'package:layouts/screens/favorites/repository/my_fav_repository.dart';
import 'package:layouts/screens/favorites/view/widgets/favorite_item.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MyFavoriteController>().getFavData();
    // Provider.of<MyFavoriteController>(context,listen: false).getFavData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyFavoriteController>(
      builder: (BuildContext context, provider, Widget? child) {
        if(provider.isLoading){
          return const Center(child: CircularProgressIndicator());
        }
        return SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: provider.favListData?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount:2,
                    height: 215,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 4
                ), itemBuilder: (BuildContext context, int index) {
                // log('$index');
                return FavoriteItem(
                  imageURL: provider.favListData?[index].imageURL ?? '',
                  itemName: provider.favListData?[index].itemName ?? '',
                  itemStoreName: provider.favListData?[index].itemStoreName ?? '',
                  price: provider.favListData?[index].price?.toDouble() ?? 0.0,
                  onTapAddToCart: () async{
                    log('onTapAddToCart: ${provider.favListData?[index].id}');
                  },
                  onTapShowDetails: (){
                    log('onTapShowDetails: ${provider.favListData?[index].id}');
                  },
                );
              },),
            )

            ,
          ),
        );
    },);


  }
}




// custom Sliver Grid Delegate
class SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight
    extends SliverGridDelegate {
  /// Creates a delegate that makes grid layouts with a fixed number of tiles in
  /// the cross axis.
  ///
  /// All of the arguments must not be null. The `mainAxisSpacing` and
  /// `crossAxisSpacing` arguments must not be negative. The `crossAxisCount`
  /// and `childAspectRatio` arguments must be greater than zero.
  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight({
    required this.crossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.height = 56.0,
  })  : assert(crossAxisCount > 0),
        assert(mainAxisSpacing >= 0),
        assert(crossAxisSpacing >= 0),
        assert(height > 0);

  /// The number of children in the cross axis.
  final int crossAxisCount;

  /// The number of logical pixels between each child along the main axis.
  final double mainAxisSpacing;

  /// The number of logical pixels between each child along the cross axis.
  final double crossAxisSpacing;

  /// The height of the crossAxis.
  final double height;

  bool _debugAssertIsValid() {
    assert(crossAxisCount > 0);
    assert(mainAxisSpacing >= 0.0);
    assert(crossAxisSpacing >= 0.0);
    assert(height > 0.0);
    return true;
  }

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    assert(_debugAssertIsValid());
    final double usableCrossAxisExtent =
        constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1);
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent = height;
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(
      SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight oldDelegate) {
    return oldDelegate.crossAxisCount != crossAxisCount ||
        oldDelegate.mainAxisSpacing != mainAxisSpacing ||
        oldDelegate.crossAxisSpacing != crossAxisSpacing ||
        oldDelegate.height != height;
  }
}
