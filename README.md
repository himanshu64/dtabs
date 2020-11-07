# dtabs

A new Flutter package project.

<img src="https://raw.githubusercontent.com/himanshu64/dtabs/main/screenshots/example.gif" alt="dtabs" width="250" />

## Usage

Add `dtabs` to your `pubspec.yaml`, then import the Dart file:

```dart
import 'package:dtabs/dtabs.dart';
```

declare a controller

```dart
TabController tabController;

```

pass tab names as a string

```dart
List<String> tabList = ["Tab 1", "Tab 2", "Tab 3"];
```

initiate the class and pass `required values`

```dart
 DTabs(
  tabController: tabController, // @required
  tabList: tabList, // @required
  currentIndex: 0 // default: 0
  )
```

See the documentation for API details: https://pub.dartlang.org/documentation/dtabs/latest/.

## Contributions

Contributions are very welcome. I would recommend discussing large changes in an issue before you spend the time on them.

Good quality pull requests will win you commit rights.
