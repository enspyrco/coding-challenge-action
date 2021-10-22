FROM dart:2.14.4

# Resolve app dependencies.
WORKDIR /app
COPY verify/pubspec.* ./
RUN dart pub get

# Copy app source code and AOT compile it.
COPY verify ./
# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline
RUN dart compile exe bin/verify.dart -o bin/verify

ENTRYPOINT ["/app/bin/verify"]
