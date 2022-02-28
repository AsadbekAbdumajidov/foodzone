import 'package:flutter/material.dart';

class Data extends Object {
  int s = 0, son = 0;
  Data({
    this.s = 0,
    this.son = 0,
    
  });
  static List rang = [
    Colors.red,
    Colors.cyan,
    Colors.green,
    Colors.amber,
  ];
  static List data = [
    "assets/images/cirkl_foto1.jpeg",
    "assets/images/cirkl_foto2.jpeg",
    "assets/images/cirkl_foto3.jpg",
    "assets/images/cirkl_foto4.jpg",
  ];
  static List tag = ["Breakfast", "   Lunch", "   Dinner", "Fast Food"];
   //---------------------------------------------------------------------------------
  static List mTaomfoto = [
    "assets/images/osh.jpg",
    "assets/images/shorva.jpg",
    "assets/images/monti.webp",
    "assets/images/mastava.jpg",
    "assets/images/honim.jpg",
    "assets/images/chuchvara.jpg",
    "assets/images/somsa.jpg",
  ];
  static List name = [
    "Palov",
    "Sho'rva",
    "Manti",
    "Mastava",
    "Honim",
    "Chuchvara",
    "Somsa"
  ];
  static List chegNarx = ["20", "32", "15", "20", "10", "9", "0"];
  static List haqNarx = [
    12,
    4,
    14,
    5,
    17,
    2,
    1,
  ];
  //----------------------------------------------------------------------
  static List bname = ["Shef Burger", "Drujba Burger", "Street Burger"];
  static List bfoto = [
    "assets/images/shefBurger.jpeg",
    "assets/images/drujbaBurger.jpg",
    "assets/images/streetBurger.jpg"
  ];
  static List bprice = [11, 9, 13];
  //---------------------------------------------------------------------------
  static List pname = [
    "Neapolitan Pizza",
    "Chicago Pizza",
    "New York-Style",
    "Sicilian Pizza",
    "Greek Pizza",
    "California Pizza",
    " Detroit Pizza",
    "St. Louis Pizza",
  ];
  static List pfoto = [
    "assets/images/pizza1.jpg",
    "assets/images/pizza2.jpg",
    "assets/images/pizza3.jpg",
    "assets/images/pizza4.jpg",
    "assets/images/pizza5.jpg",
    "assets/images/pizza6.jpg",
    "assets/images/pizza7.jpg",
    "assets/images/pizza8.jpg"
  ];
  static List pprice = [
    131,
    89,
    110,
    78,
    94,
    167,
    93,
    100
  ];
  //----------------------------------------------------------------------------------
  static List shname = [
    "Banana Milkshake",
    "Vanilla Milkshake",
    "Mango Milkshake",
    "Banana Milkshake",
    "Chocolate Milk",
    "Strawberry Milk",
    "Chocolate-Banana",
    "Cookies and Cream ",
    "Mocha Milkshake",
    "Nutella Milkshake",
    "Mocha-Hazelnut",
    "Choco-Strawberry",
    "Butterscotch Milk",
    "Banana-Nut Milk",
    "Almond-Pista Milk"
  ];
  static List shfoto = [
    "assets/images/shake1.jpg",
    "assets/images/shake2.jpg",
    "assets/images/shake3.jpg",
    "assets/images/shake4.jpg",
    "assets/images/shake5.jpg",
    "assets/images/shake6.jpg",
    "assets/images/shake7.png",
    "assets/images/shake8.jpg",
    "assets/images/shake9.jpg",
    "assets/images/shake10.png",
    "assets/images/shake11.jpg",
    "assets/images/shake12.jpg",
    "assets/images/shake13.png",
    "assets/images/shake14.jpg",
    "assets/images/shake15.jpg"
  ];
  static List shprice = [
    11,
    9,
    13,
    4,
    14,
    21,
    15,
    9,
    10,
    4,
    8,
    21,
    14,
    21,
    15
  ];
  //-----------------------------------------------------------------------------
  static List chname = [
    "Buffalo wings",
    "Buttermilk",
    "Korean",
    "Popcorn",
    "Nashville hot",
    "Chicken 65",
    "Smoked"
  ];
  static List chfoto = [
    "assets/images/ch1.webp",
    "assets/images/ch2.webp",
    "assets/images/ch3.webp",
    "assets/images/ch4.webp",
    "assets/images/ch5.webp",
    "assets/images/ch6.webp",
    "assets/images/ch7.webp"
  ];
  static List chprice = [
    23,
    15,
    19,
    20,
    35,
    46,
    18
  ];
  //-------------------------------------------------------------------------
  static List lname = [
    "Large lavash",
    "Small lavash",
    "Lavash with cheese",
    "Meaty lavash",
    "Bitter lavash",
  ];
  static List lfoto = [
    "assets/images/l1.jpg",
    "assets/images/l2.webp",
    "assets/images/l3.jpg",
    "assets/images/l4.jpg",
    "assets/images/l5.jpg",
  ];
  static List lprice = [
    23,
    15,
    19,
    20,
    35,
  ];
  //----------------------------------------------------------------------
  static List icname = [
    "LMochi Ice Cream",
    "Gelato",
    "Frozen Yogurt",
    "Sorbet",
    "Sherbet",
  ];
  static List icfoto = [
    "assets/images/ic1.jpg",
    "assets/images/ic2.jpg",
    "assets/images/ic3.jpg",
    "assets/images/ic4.jpg",
    "assets/images/ic5.jpg",
  ];
  static List icprice = [
    5,
    8,
    3,
    7,
    4,
  ];

  static List mal = [
    {'burger': ["The total weight of one serving is 760 grams (one serving of soup is 300 grams). Calorie intake is 2584 kcal (the approximate daily norm for men aged 25-50 who lead a moderate lifestyle)."]},
    {'pizza':["Pizza is an open pie with a round shape, based on tomato or tomato sauce and melted cheese. There are many recipes and recipes for this dish, which originated in the XVII century."]},
    {'shakes':["The bananas are peeled, cut into small pieces, put in a blender, the milk is drained and everything is turned at maximum speed until the same consistency is formed."]},
    {'chicken':["calorie content 133 kcal, chemical composition, nutritional value, vitamins, minerals, what are the benefits of turkey, chicken, offal and neck, calories, nutrients, useful properties of turkey, chicken, offal and neck"]},
    {'lavash':["How to make Armenian lavash? We pick it up and mix it with salt. Dissolve the yeast in warm water, pour into it and mix into a soft and elastic dough."]},
    {'ice':["The selection of wonderful flavors of ice cream is huge, diet + Blackberry, Watermelon + Melon, Tropic, Forest Strawberry, Forest Berry, Mango Raspberry, Pear Orange, Mojito Strawberry, Gooseberry + Kiwi, Milk Shake Banana, Milk Shake strawberries and others. "]}
  ];
}
