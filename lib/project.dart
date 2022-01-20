// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:convert';
void main() async {
  
  var request = await HttpClient().getUrl(Uri.parse('https://reqres.in/api/users=2'));
  // var request = await HttpClient().getUrl(Uri.parse('http://saloonapi.vfastdelivery.in/Api/Rebliss/ResturantName/1'));
  
  var response = await request.close(); 
  
  await for (var contents in response.transform(const Utf8Decoder())) {
    print(contents);

  }
}