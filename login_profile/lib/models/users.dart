import 'package:flutter/material.dart';

class Users  {
  @required final int id;
  final String name;
  final String username;
  final String password;
  final String imgUrl;
  final String email;
  final String phoneNumber;

  const Users({this.id,this.name, this.username, this.password, this.imgUrl, this.email,
      this.phoneNumber});
}