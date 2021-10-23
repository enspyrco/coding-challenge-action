import 'dart:io';

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  var token = 'lajsdfljsf';
  final queryParameters = {
    'userId': 'nickmeinhold',
    'repoName': 'devtools_adventure',
    'challengeNumber': '2',
    'prNumber': '33',
  };
  final uri = Uri.http('localhost:8080', '', queryParameters);
  final response = await http.get(uri, headers: {
    HttpHeaders.authorizationHeader: 'Token $token',
    HttpHeaders.contentTypeHeader: 'application/json',
  });
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}
