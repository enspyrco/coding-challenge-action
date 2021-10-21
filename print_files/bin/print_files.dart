import 'dart:io';

void main(List<String> arguments) async {
  var workspacePath = Platform.environment['GITHUB_WORKSPACE']!;

  print('Printing contents of : $workspacePath/prhead');
  final dir = Directory('$workspacePath/prhead');
  final List<FileSystemEntity> entities = await dir.list().toList();
  entities.forEach(print);

  print('Printing contents of : $workspacePath/main');
  final dir2 = Directory('$workspacePath/main');
  final List<FileSystemEntity> entities2 = await dir2.list().toList();
  entities2.forEach(print);
}
