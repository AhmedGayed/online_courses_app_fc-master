import 'dart:convert' as convert;

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class G {
     final queryParameters = {
    'UserName': 'zinabmo61',
    'Password': 'P@ssw0rd',
  };
  getToken() async {

    var map = new Map<String, dynamic>();

    map['username'] = 'DMSSMC';
    map['password'] = 'DMS@TAR';
    map['grant_type'] = 'password';


    final response = await http.post(
      Uri.parse('http://62.68.249.222/SMCPortalHUB/Token'),
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },

      body: map,
    );



    if ( response.statusCode==200){
          print("Scssec");
          print(response.statusCode);
          print(response.body);

        }else{
          print("faill");
          print(response.statusCode);
        }
  }
  //   final tokenparametar = {
  //     'username': 'DMSSMC',
  //     'password': 'DMS@TAR',
  //     'grant_type': 'password',
  //   };
  //   var uri =
  //   Uri.http('62.68.249.222','/SMCPortalHUB/Token' ,tokenparametar);
  //   var response = await http.post(uri,headers: {
  //     HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'
  //   }
  //   );
  //   if ( response.statusCode==200){
  //     print("Scssec");
  //     print(response.statusCode);
  //
  //   }else{
  //     print("faill");
  //     print(response.statusCode);
  //   }
  //
  //
  //
  //
  // }
  getLogin() async {
    print("hello");
     var uri =
        Uri.http('62.68.249.222','/SMCPortalHUB/api/login/SignIn' ,queryParameters);


    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(uri,headers: {
      HttpHeaders.authorizationHeader: 'Token'
      //HttpHeaders.contentTypeHeader: 'application/json',
    });

    if (response.statusCode == 200) {
      print("success");
      print(response.statusCode);

    } else if(response.statusCode == 401){
      print("UNAUTHRIZED");
      print(response.statusCode);


    }else{
      print("fail");
      print(response.statusCode);
    }

  }
}