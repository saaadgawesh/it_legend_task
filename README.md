# it_legend_task

A Flutter application for managing ads, displaying products, and booking services with a clean and modern user interface.

## Features

- Clean and flexible user interface design.
- Easy management of ads and products.
- Project organized into core and features directories.
- Bloc state management.
- SQLite support for local data storage.
- Reusable widgets such as Custom Button and Product Item Card.
- Well-structured TabBar and Tabs for quick access to features.

## Project Structure

project_root/ │ ├── core/ │ ├── constants/ # Constants like colors, texts, assets │ └── widgets/ # Reusable general widgets (e.g., CustomElevatedButton) │ ├── features/ │ ├── data/ # Models, Cubits, and States │ │ ├── category/ │ │ └── product/ │ │ │ ├── view/ # Screens and Tabs │ │ ├── account/ │ │ ├── chats/ │ │ ├── create_ad/ │ │ ├── homepage/ │ │ └── my_ads/ │ │ │ └── widgets/ # Reusable UI components │ ├── category_item.dart │ ├── create_ad_card.dart │ ├── custom_button.dart │ ├── custom_form_field.dart │ ├── filteration_item.dart │ ├── product_item_card.dart │ ├── account_card.dart │ ├── tab_item_card.dart │ ├── together_card.dart │ └── type_item_card.dart │ └── main.dart

## How to Run

1. Make sure Flutter is installed and stable.
2. Open the project in VSCode or Android Studio.
3. Run the following commands:

`bash
flutter pub get
flutter run

Requirements

Flutter 3.x or the stable version you are using.

Android/iOS emulator or a physical device.


Screenshots (Optional)

> Replace with actual screenshots from screenshots/.

Additional Notes

The project is modular for easy scalability.

All reusable widgets are located in core/widgets.

Each feature is inside features/, separating data from view.

Author
Saad Gawesh
phone No/01031214881
