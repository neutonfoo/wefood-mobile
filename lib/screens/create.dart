import 'package:flutter/material.dart';

import 'package:wefood/widgets/body_container.dart';

import 'package:wefood/widgets/form_button.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final List<String> _cuisines = [
    'Boba',
    'Burgers',
    'Chinese',
    'Cuban',
    'Desserts',
    'Fast Food',
    'French',
    'Hot Pot',
    'Indian',
    'Italian',
    'Korean',
    'Mexican',
    '🐼 Panda Express',
    'Pasta',
    'Pizza',
    'Ramen',
    'Salad',
    'Taco',
    'Sushi',
    'Udon'
  ];

  final List<String> _pricePoints = ['\$', '\$\$', '\$\$\$', '\$\$\$\$'];
  final List<String> _distances = [
    '4 Blocks',
    'Walking (1 mile)',
    'Biking (2 miles)',
    'Driving (5 miles)'
  ];

  int _cuisineIndex;
  int _pricePointIndex;
  int _distancesIndex;

  @override
  void initState() {
    _cuisineIndex = 12;
    _pricePointIndex = 0;
    _distancesIndex = 0;

    super.initState();
  }

  Widget buildCreateForm() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Select a cuisine',
            ),
            DropdownButton(
              value: _cuisines[_cuisineIndex],
              items: _cuisines.map<DropdownMenuItem<String>>((String cuisine) {
                return DropdownMenuItem<String>(
                  child: Text(cuisine),
                  value: cuisine,
                );
              }).toList(),
              onChanged: (String selectedCuisine) {
                setState(() {
                  _cuisineIndex = _cuisines.indexOf(selectedCuisine);
                });
              },
            ),
          ],
        ),
        Container(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Select a price point',
            ),
            DropdownButton(
              value: _pricePoints[_pricePointIndex],
              items: _pricePoints
                  .map<DropdownMenuItem<String>>((String pricePoint) {
                return DropdownMenuItem<String>(
                  child: Text(pricePoint),
                  value: pricePoint,
                );
              }).toList(),
              onChanged: (String selectedPricePoint) {
                setState(() {
                  _pricePointIndex = _pricePoints.indexOf(selectedPricePoint);
                });
              },
            ),
          ],
        ),
        Container(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Select a distance',
            ),
            DropdownButton(
              value: _distances[_distancesIndex],
              items:
                  _distances.map<DropdownMenuItem<String>>((String distance) {
                return DropdownMenuItem<String>(
                  child: Text(distance),
                  value: distance,
                );
              }).toList(),
              onChanged: (String selectedDistance) {
                setState(() {
                  _distancesIndex = _distances.indexOf(selectedDistance);
                });
              },
            ),
          ],
        ),
        Container(
          height: 20.0,
        ),
        FormButton(
          buttonText: 'Create',
          isPrimaryButton: true,
          callback: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create',
        ),
      ),
      body: BodyContainer(
        child: buildCreateForm(),
      ),
    );
  }
}
