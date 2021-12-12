<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Starlight Type Ahead

FLUTTER | ANDROID, IOS, LINUX, MACOS, WEB, WINDOWS

A TypeAhead (autocomplete) widget for Flutter, where you can show suggestions to users as they type

## Features

☑️ Suggestion Builder <br>
☑️ Autocomplete TextField <br>
☑️ Autocomplete TextFormField <br>

![Watch the video](https://user-images.githubusercontent.com/26484667/145707645-40f0ae5e-6e5f-40b1-9091-6b98af4f4a62.mp4)

[Watch Tutorial](https://fb.watch/9RxCw08gsw/)

## Installation

Add starlight_type_ahead as dependency to your pubspec file.

```dart
starlight_type_ahead: 
    git:
      url: https://github.com/YeMyoAung/StarlightTypeAhead.git
```

## Usage

First of all you need to import our package.

```dart
import 'package:starlight_type_ahead/starlight_type_ahead.dart';
```
And then used as any other widget.

## Example 

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starlight_type_ahead/starlight_type_ahead.dart';

class ProductModel {
  final String _name;
  final String _barcode;
  final double _quantity;
  final double _price;

  String get name => _name;
  String get barcode => _barcode;
  double get quantity => _quantity;
  double get price => _price;

  const ProductModel({
    required String name,
    required String barcode,
    required double quantity,
    required double price,
  })  : _name = name,
        _barcode = barcode,
        _quantity = quantity,
        _price = price;

  ///Important
  Map<String, dynamic> toJson() => {
        'name': _name,
        'barcode': _barcode,
        'quantity': _quantity,
        'price': _price,
      };
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SearchProduct(),
      ),
    ),
  );
}

class SearchProduct extends StatelessWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: StarlightTypeAhead(
        controller: TextEditingController(),
        width: double.infinity,
        height: 300,
        itemHeight: 60,
        itemScrollController: ScrollController(
          debugLabel: 'item',
        ),
        scrollController: ScrollController(
          debugLabel: 'input',
        ),
        onSelect: (select, service) {
          select as ProductModel;
          print(select.name);
          ///if you want to close Suggestion
          //service.closeSuggestion();
        },
        data:

            ///String
            //     const [
            //   'mg mg',
            //   'aung aung 1',
            //   'su su',
            //   'aung aung',
            // ],

            ///int
            // const    [
            //   100,
            //   200,
            //   300,
            //   400,
            //   500,
            // ],

            ///double
            //  const   [
            //   100,
            //   200,
            //   300,
            //   400,
            //   500,
            // ],

            ///bool
            // const    [
            //   true,
            //   false,
            // ],

            ///Map
            //     [
            //   const ProductModel(
            //     name: 'mi note 11',
            //     barcode: '1001',
            //     quantity: 100,
            //     price: 100,
            //   ).toJson(),
            //   const ProductModel(
            //     name: 'iphone 13 pro max',
            //     barcode: '1002',
            //     quantity: 100,
            //     price: 100,
            //   ).toJson(),
            //   const ProductModel(
            //     name: 'nova',
            //     barcode: '1003',
            //     quantity: 100,
            //     price: 100,
            //   ).toJson(),
            //   const ProductModel(
            //     name: 'vivo v15',
            //     barcode: '1004',
            //     quantity: 100,
            //     price: 100,
            //   ).toJson(),
            //   const ProductModel(
            //     name: 'nexus 5',
            //     barcode: '1006',
            //     quantity: 100,
            //     price: 100,
            //   ).toJson(),
            // ],

            ///Object
            const [
          ProductModel(
            name: 'mi note 11',
            barcode: '1001',
            quantity: 100,
            price: 100,
          ),
          ProductModel(
            name: 'iphone 13 pro max',
            barcode: '1002',
            quantity: 100,
            price: 100,
          ),
          ProductModel(
            name: 'nova',
            barcode: '1003',
            quantity: 100,
            price: 100,
          ),
          ProductModel(
            name: 'vivo v15',
            barcode: '1004',
            quantity: 100,
            price: 100,
          ),
          ProductModel(
            name: 'nexus 5',
            barcode: '1006',
            quantity: 100,
            price: 100,
          ),
        ],
        targets: const [
          'name',
          'barcode',
        ],
        itemBuilder: (e) {
          ///For Object
          e as ProductModel;
          return ListTile(
            title: Text(e.name),
            subtitle: Text(e.barcode),
          );

          ///For Map
          // e as Map;
          // return ListTile(
          //   title: Text(e['name']),
          //   subtitle: Text(e['barcode']),
          // );
          // return ListTile(
          //   title: Text(e.toString()),
          // );
        },
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        inputDecoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Search Product',
          suffixIcon: Icon(
            CupertinoIcons.barcode_viewfinder,
          ),
        ),
      ),
    );
  }
}
```

## Contact Us

[Starlight Studio](https://www.facebook.com/starlightstudio.of/)
