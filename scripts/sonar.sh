#!/bin/bash
flutter clean

echo "Running Flutter analyze..."
flutter analyze > analysis.txt || true

echo "Running Tests..."
flutter test --coverage

echo "Running Sonar Scanner..."
sonar-scanner
