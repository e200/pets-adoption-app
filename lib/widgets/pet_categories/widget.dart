import 'package:flutter/material.dart';
import 'package:pets_adoption_app/data/models/pet_category.dart';
import 'package:pets_adoption_app/widgets/pet_categories/category_item.dart';

class PetCategoriesListView extends StatefulWidget {
  @override
  _PetCategoriesListViewState createState() => _PetCategoriesListViewState();
}

class _PetCategoriesListViewState extends State<PetCategoriesListView> {
  final _petsCategories = [
    PetCategory(
      name: 'Cats',
      imageUrl:
          'https://cdn130.picsart.com/327144385082201.jpg?type=webp&to=crop&r=100',
    ),
    PetCategory(
      name: 'Dogs',
      imageUrl:
          'https://cdn141.picsart.com/326108055051201.jpg?type=webp&to=crop&r=100',
    ),
    PetCategory(
      name: 'Parrots',
      imageUrl:
          'https://cdn140.picsart.com/253661723008202.jpg?type=webp&to=crop&r=100',
    ),
    PetCategory(
      name: 'Bunnies',
      imageUrl:
          'https://cdn140.picsart.com/275295541017201.jpg?type=webp&to=crop&r=100',
    ),
    PetCategory(
      name: 'Mouse',
      imageUrl:
          'https://cdn131.picsart.com/299583608302201.jpg?type=webp&to=crop&r=100',
    ),
    PetCategory(
      name: 'Horses',
      imageUrl:
          'https://cdn131.picsart.com/318428059136201.jpg?type=webp&to=crop&r=100',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(15).copyWith(bottom: 0),
      scrollDirection: Axis.horizontal,
      itemCount: _petsCategories.length,
      itemBuilder: (BuildContext context, int index) {
        final _petCategory = _petsCategories[index];

        return PetCategoryItem(
          width: 65,
          margin: index != 0 ? EdgeInsets.only(left: 15) : EdgeInsets.zero,
          name: _petCategory.name,
          imageUrl: _petCategory.imageUrl,
        );
      },
    );
  }
}
