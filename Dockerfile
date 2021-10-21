FROM dart:2.14.4

# Resolve app dependencies.
WORKDIR /app
COPY print_files/pubspec.* ./
RUN dart pub get

# Copy app source code and AOT compile it.
COPY print_files ./
# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline
RUN dart compile exe bin/print_files.dart -o bin/print_files

ENTRYPOINT ["/app/bin/print_files"]
