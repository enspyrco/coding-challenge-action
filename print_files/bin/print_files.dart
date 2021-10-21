import 'dart:io';

void main(List<String> arguments) async {
  var workspacePath = Platform.environment['GITHUB_WORKSPACE']!;

  final dir = Directory(workspacePath);
  final List<FileSystemEntity> entities = await dir.list().toList();
  entities.forEach(print);
}
