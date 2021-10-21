import 'dart:io';

void main(List<String> arguments) async {
  print('args: $arguments');

  var workspacePath = Platform.environment['GITHUB_WORKSPACE']!;

  print('Printing contents of : $workspacePath/head');
  final dir = Directory('$workspacePath/head');
  final List<FileSystemEntity> entities = await dir.list().toList();
  entities.forEach(print);

  print('Printing contents of : $workspacePath/base');
  final dir2 = Directory('$workspacePath/base');
  final List<FileSystemEntity> entities2 = await dir2.list().toList();
  entities2.forEach(print);
}
