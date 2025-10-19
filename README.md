# 🧁 easy_toast

A **lightweight Flutter toast package** that lets you show simple, elegant toast messages anywhere in your app — with no dependencies and zero setup.

---

## ✨ Features

✅ Show toast messages anywhere with one line of code  
✅ Fully customizable (color, position, duration, font size, etc.)  
✅ Works seamlessly with both `MaterialApp` and `CupertinoApp`  
✅ No context rebuilds or external dependencies  
✅ Tiny, clean, and developer‑friendly

---

## 🚀 Getting Started

Add the dependency in your **pubspec.yaml**:

```yaml
dependencies:
  easy_toast: ^1.0.0
```

Import the package:

```dart
import 'package:easy_toast/easy_toast.dart';
```

---

## 🪄 Usage

Here’s a minimal example:

```dart
import 'package:flutter/material.dart';
import 'package:easy_toast/easy_toast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Toast Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Easy Toast Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              EasyToast.show(context, 'Hello from EasyToast!');
            },
            child: const Text('Show Toast'),
          ),
        ),
      ),
    );
  }
}
```

---

## ⚙️ Customization

You can adjust the look and feel easily:

```dart
EasyToast.show(
  context,
  'Customized Toast!',
  duration: const Duration(seconds: 3),
  backgroundColor: Colors.indigo,
  textColor: Colors.white,
  fontSize: 16,
  borderRadius: 12,
  gravity: ToastGravity.top,
);
```

---

## 🧩 Toast Positions

| Gravity Option | Description          |
|----------------|----------------------|
| `ToastGravity.top` | Show at top of the screen |
| `ToastGravity.center` | Show in center |
| `ToastGravity.bottom` | Show at bottom (default) |

---

## 📂 Example Project

You can find a full working demo inside the `/example` directory:
```
example/lib/main.dart
```

Run it using:
```bash
flutter run example/lib/main.dart
```

---

## 🧠 Additional Information

- Author: **Tyne Aung**
- License: **MIT**
- Compatible with: **Flutter 3.0+**
- Contributions, pull requests, and feedback are welcome!

---

Enjoy coding with `easy_toast` — your sweetest way to show messages 🍰

---
