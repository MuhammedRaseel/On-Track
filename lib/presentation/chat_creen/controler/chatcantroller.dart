import 'package:get/get.dart';
import 'package:ontrack/presentation/chat_creen/model/chatmodel.dart';

class chatcontroller extends GetxController {
  List<chatdata> chat = [
    chatdata(
        image: 'assets/images/activa.jpg',
        profile: 'assets/images/profile.jpg',
        profilename: 'Muhammed Raseel P',
        product: 'Activa 3G',
        message: 'I am not interest to your price'),
    chatdata(
        image: 'assets/images/alto.jpg',
        profile: 'assets/images/profile2.png',
        profilename: 'Amal David',
        product: 'Alto 800',
        message: 'Deal ok'),
    chatdata(
        image: 'assets/images/city.jpg',
        profile: 'assets/images/profile3.jpg',
        profilename: 'Unais',
        product: 'Honda city',
        message: 'I am not interest to your price'),
    chatdata(
        image: 'assets/images/hunter.jpg',
        profile: 'assets/images/profile5.jpeg',
        profilename: 'Jenny',
        product: 'Hunter',
        message: 'I am not interest to your price'),
  ];
}
