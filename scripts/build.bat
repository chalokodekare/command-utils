cmd /c ".\gradlew build -x test"
cmd /c ".\gradlew publishToMavenLocal"
cmd /c "gradle bootjar"