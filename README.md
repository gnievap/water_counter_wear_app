# water_counter_test

This project is a clon of the Hi Water app, an Apple Watch app.
This clon is created ONLY for educational purposes.
It's created using the Flutter Framework
The result is an app developed for Wear-OS.

## Features
The app is composed of only two screens.

### First screen: start_screen.dart
It's the main screen that contains:
   * An AppBar with the title of the app and the current hour, obtained from the watch.
   * A Text that represents how much water the user consume in a day
   * A Text that represents how much remaining water the user needs to consume in the day
   * A circular progress that ilustrate the consume of water by the user in a day
   * An interval progress bar that represents the Body Hydration Score that dynamically assess the body's hydration level.
   * A log button to record drinks consumed.

### Second screen: drinks_screen.dart
This screen shows cards with the different types of drinks that the user can consume during the day, and it helpes to change the values of the indicators of the main screen.
The AppBar contains a Cancel button, so the user returns to the main screen, and a display of the current hour.

- - - -

## Packages

This project requires the next packages from pub.dev:
 * flutter_intl version 0.0.1
 * intl version 0.18.1
     
    
