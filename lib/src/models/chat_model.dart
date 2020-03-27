import 'package:messenger_clone/src/models/user_model.dart';

class ChatModel {
  final UserModel userModel;
  final String message;
  final String time;

  ChatModel({this.userModel,this.message, this.time});
}

List<ChatModel> listChats = [
  new ChatModel(
      userModel: listUsers.elementAt(0),
      message: "Mi hermano! ¿Un partido hoy?",
      time: "15:30"),
  new ChatModel(
      userModel: listUsers.elementAt(1),
      message: "Hey! Tengo un nuevo video",
      time: "17:30"),
  new ChatModel(
      userModel: listUsers.elementAt(2),
      message: "80 millones para el coronavirus",
      time: "5:00"),
  new ChatModel(
      userModel: listUsers.elementAt(3),
      message: "¿iPhone con tres camaras?",
      time: "10:30"),
  new ChatModel(
      userModel: listUsers.elementAt(4),
      message: "Acciones de Tesla: 200 dolares",
      time: "12:30"),
  new ChatModel(
      userModel: listUsers.elementAt(5),
      message: "No pude comprar Snapchat",
      time: "18:30"),
  new ChatModel(
      userModel: listUsers.elementAt(6),
      message: "Checa mi repositorio!",
      time: "dom."),
  new ChatModel(
      userModel: listUsers.elementAt(7),
      message: "De vender libros a un E-commerce!",
      time: "sab."),
  new ChatModel(
      userModel: listUsers.elementAt(8),
      message: "No vendí Snapchat, muy poco",
      time: "jue."),
];