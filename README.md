<!-- header section -->
<p align="center">
  <span><b>Flutter Mobx Examples 𐅕</b></span><br/>
</p>
<!-- header section END -->

<br/>

<!-- show case/gif section -->

<!-- show case/gif section END -->

<br/>

<!-- about app and course section -->

## About this project 🗣

This project contains examples of simple apps using [Mobx](https://mobx.netlify.app/) as stage management.

## Attention 🚨

In every package you create, it is necessary to add in your `pubspec.yaml` in `dev_dependencies` the `build_runner plugin`, because in our CI / CD there is a step that it needs to be executed, and if you don't have this plugin in any package, will give error in the CI / CD.
<br/> <br/>
This was implemented because files like the `.g.dart` and `.freezed.dart` format are ignored files at commit time, because, this enerated files, they pollute pull requests and can create merge conflicts.

## Tech Stack 👩🏾‍💻

- [Dart](https://dart.dev/)
- [Flutter](https://flutter.dev/)

## Plugins 📟

- [mobx](https://pub.dev/packages/mobx)
- [flutter_mobx](https://pub.dev/packages/flutter_mobx)

<!-- about app and course section END -->
