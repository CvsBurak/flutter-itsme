import './models/category.dart';
import 'package:flutter/material.dart';
import './models/cards.dart';

const DUMMY_CATEGORIES = const [
  Category(id: 'cat1', title: 'Software Engineer', color: Colors.blue),
  Category(id: 'cat2', title: 'Lawyer', color: Colors.brown),
  Category(id: 'cat3', title: 'Doctor', color: Colors.teal),
  Category(id: 'cat4', title: 'Psychologist', color: Colors.orange),
  Category(id: 'cat5', title: 'Advisor', color: Colors.lightGreen),
  Category(id: 'cat6', title: 'Manager', color: Colors.lime),
];

const DUMMY_CARDS = const [
  Cards(
      id: 'card1',
      category: 'cat1',
      title: 'Python Developer',
      name: 'Burak',
      imageUrl:
          'https://instagram.fbtz1-2.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/15043921_1615380835423920_9049150974869897216_n.jpg?_nc_ht=instagram.fbtz1-2.fna.fbcdn.net&_nc_cat=100&_nc_ohc=1s-tU2G9VkMAX-HavLt&oh=d5a5ca2e7e0989213304edbbe0a39022&oe=5F9774A9',
      mail: 'burak.cavusoglu@huawei.com',
      phoneNo: '+90 545 801 0808',
      experience: Level.Mediocore),
  Cards(
      id: 'card2',
      category: 'cat2',
      title: 'HSM Tester',
      name: 'Okan',
      imageUrl:
          'srcset="https://instagram.fbtz1-5.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/88998295_198098851470111_7164411526825267839_n.jpg?_nc_ht=instagram.fbtz1-5.fna.fbcdn.net&_nc_cat=103&_nc_ohc=l0sws6CJfl0AX-bUrh3&oh=db0bc1e6e99f25b9ff822f604b3611ad&oe=5F99ABAD 640w, https://instagram.fbtz1-5.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/88998295_198098851470111_7164411526825267839_n.jpg?_nc_ht=instagram.fbtz1-5.fna.fbcdn.net&_nc_cat=103&_nc_ohc=l0sws6CJfl0AX-bUrh3&oh=147ab505f8393e052ec56843dc26577c&oe=5F993D2D 750w, https://instagram.fbtz1-5.fna.fbcdn.net/v/t51.2885-15/e35/88998295_198098851470111_7164411526825267839_n.jpg?_nc_ht=instagram.fbtz1-5.fna.fbcdn.net&_nc_cat=103&_nc_ohc=l0sws6CJfl0AX-bUrh3&_nc_tp=18&oh=93c65d010f6bbbf765a14a6072478064&oe=5F98C55B 1080w"',
      mail: 'okan.askin@huawei.com',
      phoneNo: '+90 545 123 1233',
      experience: Level.Mediocore),
  Cards(
      id: 'card3',
      category: 'cat3',
      title: 'Clown',
      name: 'Selim',
      imageUrl:
          'https://instagram.fbtz1-5.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/81683308_165106674763553_2176803884450940411_n.jpg?_nc_ht=instagram.fbtz1-5.fna.fbcdn.net&_nc_cat=105&_nc_ohc=PL26-DWxOIEAX-790Cb&oh=4fdb15aa0be0d3fa9d2c5c92f34611d4&oe=5F99F5A4',
      mail: 'selim.cakar@huawei.com',
      phoneNo: '+90 545 321 1223',
      experience: Level.Mediocore)
];
