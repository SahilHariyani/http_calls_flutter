
import 'dart:convert';

import 'package:api_calls/model/data.dart';
import 'package:http/http.dart' as http;


class GetRequest {
  
  
  String getUrl;
  
  Future<DataModel> getData() async {
    getUrl =
        "https://demo0738343.mockable.io/hello";
   
   
    print(getUrl);

    //if only single map is coming as a reponse then we can directly store it into an single onject.
    //if multiple maps are coming then we have to store it into list of custom objects
   
    DataModel dataModel = DataModel();

    final response = await http.get(getUrl);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print('lets go');

      var jsonData = json.decode(response.body);
     
      //subjectList.add(SubjectListModel.fromJson());
      //print(subjectList.length);
      //print(subjectList[1].subjectName);

      return DataModel.fromJson(jsonData);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}