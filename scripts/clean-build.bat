rem rm -r ~/.gradle/caches/

cmd /c ".\gradlew build -x test --refresh-dependencies"
rem cmd /c "gradle install --refresh-dependencies"
cmd /c ".\gradlew publishToMavenLocal"