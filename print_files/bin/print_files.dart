import 'dart:io';

void main(List<String> arguments) async {
  final dir = Directory('/app/bin/print_files');
  final List<FileSystemEntity> entities = await dir.list().toList();
  entities.forEach(print);
}
