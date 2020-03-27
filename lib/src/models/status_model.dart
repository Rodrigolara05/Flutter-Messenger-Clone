import 'package:messenger_clone/src/models/user_model.dart';

class StatusModel {
  final UserModel userModel;
  final String statusImageUrl;
  final bool newStatus;

  StatusModel({this.userModel,this.statusImageUrl,this.newStatus});
}

List<StatusModel> listStatus = [
  new StatusModel(
      userModel: listUsers.elementAt(4),
      statusImageUrl: "https://e.rpp-noticias.io/normal/2020/03/14/014601_913438.jpg",
      newStatus: false),
  new StatusModel(
      userModel: listUsers.elementAt(5),
      statusImageUrl: "https://upload.wikimedia.org/wikipedia/commons/1/14/Mark_Zuckerberg_F8_2018_Keynote_%28cropped_2%29.jpg",
      newStatus: true),
  new StatusModel(
      userModel: listUsers.elementAt(2),
      statusImageUrl: "https://www.elnacional.com/wp-content/uploads/2020/03/Bill-Gates-pandemia-Foto-Archivo.jpg",
      newStatus: false),
  new StatusModel(
      userModel: listUsers.elementAt(3),
      statusImageUrl: "https://disenowebakus.net/imagenes/articulos/steve-jobs.jpg",
      newStatus: true),
  new StatusModel(
      userModel: listUsers.elementAt(8),
      statusImageUrl: "https://lh3.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo",
      newStatus: true),
  new StatusModel(
      userModel: listUsers.elementAt(7),
      statusImageUrl: "https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2020/01/31/15804932396405.jpg",
      newStatus: true),


];