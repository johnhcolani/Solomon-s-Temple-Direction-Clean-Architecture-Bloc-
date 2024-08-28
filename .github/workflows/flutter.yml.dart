name: Flutter CI

on:
  push:
    branches:
      - main
    pull_request:
      branches:
        - main

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - uses: subosito/flutter-action@v2
      with:
        flutter-version: 'stable'

    - name: Install dependencies
      run: flutter pub get

    - name: Run tests
      run: flutter test
