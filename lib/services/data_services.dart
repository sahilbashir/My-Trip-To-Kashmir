import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/data_models.dart';

class DataServices{

  //String baseUrl = "http://mark.bslmeiyu.com/api";

  String baseUrl ="https://sahilbashir.github.io/MyTripToKashmirServer";
 Future<List<DataModel>> getInfo() async{
    //var apiUrl= '/getplaces';
var apiUrl ='/WelcomePageView1.json';
    http.Response res = await http.get(Uri.parse(baseUrl+apiUrl));

    try{
      if(res.statusCode==200){
        List<dynamic> list =json.decode(res.body);
        print(list);
        return list.map((e)=>DataModel.fromJson(e)).toList();
      }else{
        return <DataModel>[];
      }

    }
    catch(e){
      print(e);
      return <DataModel>[];
    }
  }
}