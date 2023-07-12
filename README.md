#### All apps will run in main method in run App

```
void main() {
runApp(MaterialApp()
)
}
```

|------------------------------------------------------------------------------|
### Material App
<p>
|-- Material App entry point with main layout, All widgets go inside it, set home for it |
It serves as the root of your Flutter application and provides several features and configurations related to the overall appearance and behavior of the app.
</p>
> Material App provides widgets etc to add


|------------------------------------------------------------------------------|
### Scaffold
<p>In Flutter, a scaffold is a widget that provides a basic structure for a Material Design app. 
It serves as a container for different visual elements such as app bars, navigation drawers, floating action buttons, and body content. 
The scaffold widget helps you create consistent and predictable layouts for your app's screens.</p>
#### Everything is widget in flutter. Button, AppBar, even Center, body, Scaffold
```
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Great First App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Button1'),
        ),
      ),
    ),
  ));
}
```

```
Scaffold to have sections/layouts in app for app bar, body etc.
Check in flutter docs for usage
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Great First App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Button1'),
        ),
      ),
    ),
  ));
}
```

#### Body, Center, Text, TextButtons all are widgets
Its like a Tree structure you have child inside outer widget and so on

<p>
|--- ----------|
#### Center can have 1 child inside it. For example, we have 1 Text button 
#### If we want multiple buttons in there
#### then make Column as child of body and then in column u add multiple buttons\
</p>

```
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Great First App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: const Text('Button1')),
          TextButton(
            onPressed: () {
              print("Button 2 Pressed");
            },
            child: const Text("Button2"),
          ),
        ],
      )),
    ),
  ));
}
```

|------------------------------------------------------------------------------|
|-----------Buttons --------|
## Buttons Example ##
```
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Great First App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: const Text('Button1')),
          TextButton(
            onPressed: () {
              print("Button 2 Pressed");
            },
            child: const Text("Button2"),
          ),
          TextButton(
              onPressed: () {
                print("Button 3 pressed");
              },
              onLongPress: () {
                print("Button 3 Long Pressed");
              },
              child: const Text('Button3'))
        ],
      )),
    ),
  ));
}

/*
TextButton(
          onPressed: () {},
          child: const Text('Button1'),
        ),


        actions: <Widget>[
          TextButton(onPressed: () {}, child: const Text('Button1')),
          TextButton(
              onPressed: () {
                print("Button 2 Pressed");
              },
              child: const Text('Button2')),
          TextButton(
              onPressed: () {
                print('Button 3 Pressed');
              },
              onLongPress: () {
                print('Button 3 Long press performed');
              },
              child: const Text('Button 3'))
        ],
      ),
 */

```

|------------------------------------------------------------------------------|
### IMages
pubspec.yml
```
Add entry in pubspec.yml
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - images/

|----------------------|
Create new folder images under project root. Drop all images here


Then use one image widget in main file
Image.asset('images/cat.png')
```

|------------------------------------------------------------------------------|
### Icons
```
Create Icons
appicon.co - https://www.appicon.co
Create icons and download zip file

![Alt Text](relative/path/to/image.png)
Replace Assests.appiconset for ios with downloaded icons


Android-
Replace app/src/main/res/mimap folders

![icons](/git_images/iconsimg.png)
```

|------------------------------------------------------------------------------------|
### Containers, Child, Multi Child
#### Single-child layout widgets  - Can have just one child,  not children
```
In Flutter, "single child" widgets are widgets that can have only one direct child widget. These widgets are used when you need to display a single piece of content or widget as the child of another widget. Here are some commonly used single child widgets in Flutter:

Container: A widget that allows you to customize the layout and style of its single child widget. It provides properties for setting padding, margins, background color, borders, and more.

Center: A widget that centers its single child both horizontally and vertically within the available space.

Align: A widget that aligns its single child within itself. It allows you to specify the alignment using the alignment property, which takes an Alignment object.

Expanded: A widget that expands its single child to fill the available space. It is typically used in a Row or Column to specify that the child should take up any remaining space.

AspectRatio: A widget that enforces a specific aspect ratio for its single child. It maintains the aspect ratio by adjusting the child's size within the available space.

ListView: A widget that displays a scrollable list of children. It can have only one direct child widget, but that child can be a Column, Row, or any other widget that supports multiple children.

Stack: A widget that stacks its children on top of each other. The children are positioned using the Positioned widget or by setting the top, bottom, left, and right properties.

Card: A material design card that displays its single child widget with rounded corners and a shadow. It is commonly used to group related information.
```

#### Multi-child layout widgets  - Can have just multiple children
Can have multiple children- Like
<li>Row</li>
<li>Column</li>
<li>Listview</li>

```
Row-
Row(
  children: <Widget>[
    Text('Child 1'),
    Text('Child 2'),
    Text('Child 3'),
  ],
)

Column-

Column(
  children: <Widget>[
    Text('Child 1'),
    Text('Child 2'),
    Text('Child 3'),
  ],
)

```

|------------------------------------------------------------------------------------|
### Hot Reload and Stateless widget```
```
In main method just call App

void main() {
  runApp(DinoApp());
}

type stless ...Android studio will create boiler plate code for stateless widget
class DinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return 
  
  
Then just in return add your material App code
class DinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Great First App")),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/dino.png'),
            fit: BoxFit.cover,
          ),
```

|------------------------------------------------------------------------------------|
### UI Alignments
```
examples for column with 3 child containers
Column- 

All scenerios below follow column(vertical) as main axis alignment. Cross is horizontal from left to right
Main Axis is - Vertical
Cross- Horizontal

mainAxisAlignment: MainAxisAlignment.end - Will put all childs at bottom of screen
crossAxisAlignment: CrossAxisAlignment.stretch - Will stretch all columns to max space horizontally
mainAxisAlignment: MainAxisAlignment.spaceEvenly - Space columns evenly
mainAxisAlignment: MainAxisAlignment.spaceBetween-  1 at top, 1 at bottom and 1 in middle
crossAxisAlignment: CrossAxisAlignment.end - Nothing will happen if containers/childs are same size.
                    If one of them has different width, then all will align end/right sides with widest container

Now if u want all to go to right side horizontall, but if they all same size they wont go
In this case, create invisible container with max width(double.infinity)  and now u also have 
crossalignment.end it will push all containers to align on right side, since invisible one
has max width they all will align to right side

Invisible containers
            Container(
              width: double.infinity,
              height: 10,
            ),
          ------ full code --
          children: [
            Container(
              child: Text("Container1"),
              color: Colors.amber[600],
              width: 100.0,
              height: 100.0,
            ),
            Container(
              child: Text("Container2"),
              color: Colors.redAccent,
              width: 100.0,
              height: 100.0,
            ),
            Container(
              child: Text("Container3"),
              color: Colors.indigo,
              width: 100.0,
              height: 100.0,
            ),
            Container(
              width: double.infinity,
              height: 10,
            ),                    



set width of any container to double.infinity to extend them to max width
Container(
width: double.infinity
)


Add Space between widgets/containers- Used Sized box- Empty
            SizedBox(
              height: 20.0,
            ),

If its ROW instead of column - then direction is switched and Sizedbox withheight wont
work instead u set width for sized box to have space in Rows 
            SizedBox(
              width: 20.0,
            ),

#### A column can have row inside it. E.G - Column with row as child in children and row has its children
```

### Fonts- Text - Style, Button style

```
| --Button styling--  |
  style: const ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
  ),
  
| --Text styling--  |
  style: const ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
  ),

Text(
'Superman Developer',
 style: TextStyle(
 color: Colors.green,
 fontWeight: FontWeight.bold,
 fontSize: 20,
 fontFamily: 'sanspro'),
),
```

``` 
Custom Fonts-
Create fonts directory
Add fonts section in pubspec.yml
```
# example pubspec:
fonts:
- family: Pacifico-Regular
  fonts:
- asset: fonts/Pacifico-Regular.ttf
- family: sanspro
  fonts:
- asset: fonts/SourceSansPro-Light.ttf

main.dart--
Text(
'Future Smashing Developer',
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 30,
color: Colors.green,
fontFamily: 'sanspro',
fontWeight: FontWeight.bold),
),

```

### Stateful
```
Type 'stful' to create boilerplate code for stateful
Apps whose state will change like image or display needs to use this

In Flutter, changes to state variables within a StatefulWidget should be made using the setState method. This ensures that the UI is updated and rebuilt with the new values.


class DiceAppFull extends StatefulWidget {
const DiceAppFull({Key? key}) : super(key: key);

@override
State<DiceAppFull> createState() => _DiceAppFullState();
}

#Add widget code build etc here
class _DiceAppFullState extends State<DiceAppFull> {
@override
Widget build(BuildContext context) {
return const Placeholder();
}
}


```
#### Visibility
```
To hide an ElevatedButton in Flutter, you can use the Visibility widget. By wrapping the button with the Visibility widget and setting its visible property to false, the button will be hidden from the UI. Here's an example:

Use visibilty widget

@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text('Hide Button Example'),
),
body: Center(
child: Visibility(
visible: isButtonVisible,
child: ElevatedButton(
onPressed: () => print('Button Pressed'),
child: Text('Button'),
),
),
),
--
Control visibilty bool with condition u like and change in setstate method
bool isButtonVisible = true;

void toggleButtonVisibility() {
setState(() {
isButtonVisible = !isButtonVisible;
});
}



|--------|----------|--------|----------|-|--------|----------|--------|----------|-|--------|----------|--------|----------|


### Constructor
```
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardsColor, this.childCard});

  final Color cardsColor;
  final Widget? childCard;

// widget? if u dont want to provide defualt value and can be null
// This means that the childCard can be null or not provided when creating an instance of the ReusableCard class.
// Enclosing in  {} if u want to provide name during instance creation like cardscolor: xyz
// required used when u want that property mandotory
```

### Dart Inheritance and polymorphism
```
##### Parent class - 
class Car {
  String? color;
  int? doors;

  // Constructor
  // Just use this.property
  Car(this.color, this.doors);

  void startCar() {
    print("Car Started");
  }

  void driveCar(String speed) {
    print("Car running with $speed");
  }
}
```

```
####Child class that extends the parent class-
import 'Car.dart';

class ElectricCar extends Car {
  int batterylevel = 100;

  // Child class constructor
  // Parent constructor-->  Car(this.color, this.doors);
  ElectricCar(String color, int doors, this.batterylevel) : super(color, doors);

  //method unique to this class
  void recharge() {
    batterylevel = 100;
  }

  @override
  // Change parent class method
  void startCar() {
    print("Electric car started");
  }

  void runCar(String speed) {
    //use parent class method
    super.driveCar(speed);
    print("Electric car running with super $speed");
  }
}
```

#### Interface
```
In Dart, there is no explicit interface keyword like in some other programming languages. However, Dart classes can be used as interfaces implicitly. Here's an example:

extends is used for class inheritance, while implements is used for interface implementation.

With extends, the subclass inherits the members of the superclass, while with implements, the class must provide an implementation for the methods declared in the interface.

A class can extend only one superclass, but it can implement multiple interfaces.
extends establishes an "is-a" relationship, while implements establishes an "implements" or "conforms to" relationship.
class Flyable {
  void fly() {
    print("Flying");
  }
}

class Bird implements Flyable {
  @override
  void fly() {
    print("Bird is flying");
  }
  
  void chirp() {
    print("Chirping");
  }
}
```



|--------|----------|--------|----------|-|--------|----------|--------|----------|-|--------|----------|--------|----------|

### Routes
```
Github example inr repo- Routes-Screens
In Flutter, routes are used for navigating between different screens or pages within an application. Routes allow you to define the flow of navigation in your app, making it easy to switch between different views or sections.

We create 3 separate Dart files for classes with HomeScreen(), FirstScreen() and SettingScreen. Each has its View UI setup

 > You can define named routes in the MaterialApp widget. This allows you to reference routes by their names rather than creating MaterialPageRoute instances manually.
MaterialApp(
  routes: {
    '/home': (context) => HomeScreen(),
    '/profile': (context) => FirstScreen(),
    '/settings': (context) => SettingsScreen(),
  },
);

> u can initial route as -      initialRoute: '/',
Example with initial route -
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Screen0(),
        '/first': (context) => Screen1(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => Screen2(),
        '/third': (context) => Screen3(),
      },
    );


 > With named routes defined, you can use the Navigator's pushNamed method to navigate to a specific route by its name.
Navigator.pushNamed(context, '/FirstScreen');

To go back you can either use-
Navigator.pop(context);  //take back to home screen
Navigator.pushNamed(context, '/HomeScreen');  //also takes back to home screen

--------------------------------------------------------------
Passing Arguments to Routes:
 > To pass arguments or data to a route, you can pass them as arguments when navigating.

Navigator.pushNamed(context, '/secondscreen', arguments: somedata);
In the above example, the profileData object is passed as an argument to the /secondscreen route.
 > You can access this data in the SecondScreen using ModalRoute.of(context).settings.arguments

Example-
Navigate to the next screen and pass data:
Navigator.pushNamed(context, '/details', arguments: 'Hello from HomeScreen!');

Second screen-
class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String data = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
```