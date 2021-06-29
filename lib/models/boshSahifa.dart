import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

const List<Icon> Malumotol = [
  Icon(
    Icons.note_add_outlined,
    color: Colors.blueAccent,
    size: 28.0,
  ),
  Icon(
    Icons.shopping_bag_outlined,
    color: Colors.deepOrangeAccent,
    size: 28.0,
  ),
  Icon(
    Icons.headset,
    color: Colors.redAccent,
    size: 28.0,
  ),
  Icon(
    Icons.airplanemode_on_rounded,
    color: Colors.greenAccent,
    size: 28.0,
  ),
  Icon(
    Icons.my_library_books_outlined,
    color: Colors.deepPurpleAccent,
    size: 28.0,
  ),
  Icon(
    Icons.home,
    color: Colors.red,
    size: 28.0,
  ),
  Icon(
    Icons.color_lens_outlined,
    color: Colors.deepPurple,
    size: 28.0,
  ),
  Icon(
    Icons.shopping_cart,
    color: Colors.lightGreen,
    size: 28.0,
  ),
  Icon(
    Icons.cake_rounded,
    color: Colors.blue,
    size: 28.0,
  ),
  Icon(
    Icons.sentiment_neutral,
    color: Colors.cyanAccent,
    size: 28.0,
  ),
];
const List TextOl = [
  "All",
  "Work",
  "Music",
  "Travel",
  "Study",
  "Home",
  "Paint",
  "Shopping",
  "Birthday",
  "Mountains",
];
const List MalumotlarOl = [
  "23 Tasks",
  "14 Tasks",
  "6 Tasks",
  "1 Task",
  "2 Tasks",
  "14 Tasks",
  "18 Tasks",
  "20 Tasks",
  "10 Tasks",
  "7 Tasks",
];
List<String> ola = [
  "assets/images/0.jpg",
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
];
/*class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int activeStep = 4; // Initial step set to 5.

  int upperBound = ola.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconStepper(
            icons: [
              Icon(Icons.supervised_user_circle),
              Icon(Icons.flag),
              Icon(Icons.access_alarm),
              Icon(Icons.supervised_user_circle),
              Icon(Icons.flag),
            ],

            // activeStep property set to activeStep variable defined above.
            activeStep: activeStep,

            // This ensures step-tapping updates the activeStep.
            onStepReached: (index) {
              setState(() {
                activeStep = index;
              });
            },
          ),
          header(),
          Container(
              child: Image.asset(ola[activeStep])),
        ],
      ),
      );
  }
  Widget previousButton() {
    return ElevatedButton(
      onPressed: () {
        // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
        if (activeStep > 0) {
          setState(() {
            activeStep--;
          });
        }
      },
      child: Text('Prev'),
    );
  }

  /// Returns the header wrapping the header text.
  Widget header() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              headerText(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Returns the header text based on the activeStep.
  String headerText() {
    switch (activeStep) {
      case 1:
        return 'Preface';

      case 2:
        return 'Table of Contents';

      case 3:
        return 'About the Author';

      case 4:
        return 'Publisher Information';

      default:
        return 'Introduction';
    }
  }
}*/
class DotStepperDemo extends StatefulWidget {

  @override
  _DotStepperDemo createState() => _DotStepperDemo();
}

class _DotStepperDemo extends State<DotStepperDemo> {
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 30.0,
              ),
              // Padding(padding: const EdgeInsets.all(18.0), child: steps()),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [previousButton(), nextButton()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ola[activeStep]),fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 670.0,
                  width: 380.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 160.0, bottom: 10.0),
                        child: Container(
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: TextFormField(
                            onChanged: (e) {},
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.login_outlined,
                                color: Colors.black,
                              ),
                              hintText: "Login Kiriting...",
                              hintStyle: TextStyle(fontSize: 14.0, color: Colors.black),
                              labelText: "Login",
                              labelStyle:
                              TextStyle(fontSize: 16.0, color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          height: 45.0,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.name,
                            obscureText: true ,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: "Parolni Kiriting...",
                              hintStyle: TextStyle(fontSize: 14.0, color: Colors.black),
                              labelText: "Parol",
                              labelStyle:
                              TextStyle(fontSize: 16.0, color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 40.0),
                        child: Container(
                          height: 40.0,
                          width: 380.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white.withOpacity(0.6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              )
                            ),
                              onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Kirish()));
                              },
                              child: Text("Next", style: TextStyle(color: Colors.cyanAccent,fontSize: 20.0),),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              DotStepper(
                tappingEnabled: true,
                dotCount: dotCount,
                dotRadius: 10,
                activeStep: activeStep,
                shape: Shape.pipe,
                spacing: 15,
                indicator: Indicator.worm,
                onDotTapped: (tappedDotIndex) {
                  setState(() {
                    activeStep = tappedDotIndex;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Row steps() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: List.generate(dotCount, (index) {
  //       return ElevatedButton(
  //         child: Text('${index + 1}'),
  //         onPressed: () {
  //           setState(() {
  //             activeStep = index;
  //           });
  //         },
  //       );
  //     }),
  //   );
  // }

  Widget nextButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.cyanAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        shadowColor: Colors.cyan,
        minimumSize: Size(30.0, 25.0),
      ),
      child: Icon(Icons.arrow_forward_rounded, color: Colors.black,),
      onPressed: () {
        if (activeStep < dotCount - 1) {
          setState(() {
            activeStep++;
          });
        }
      },
    );
  }

  Widget previousButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.cyanAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        shadowColor: Colors.cyan,
        minimumSize: Size(30.0, 25.0),
      ),
      child: Icon(Icons.arrow_back, color: Colors.black,),
      onPressed: () {
        // activeStep MUST BE GREATER THAN 0 TO PREVENT OVERFLOW.
        if (activeStep > 0) {
          setState(() {
            activeStep--;
          });
        }
      },
    );
  }
}


class Kirish extends StatefulWidget {
  @override
  _KirishState createState() => _KirishState();
}

class _KirishState extends State<Kirish> {
  String davlatol = "Davlat Tallang";
  @override
  int indexImage = 0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ola[indexImage]),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.align_horizontal_right,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: DropdownButton(
                          menuMaxHeight: 150.0,
                          icon: Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 30.0,
                          ),
                          style: TextStyle(fontSize: 18.0),
                          dropdownColor: Colors.grey[300],
                          items: [
                            DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  "America",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  indexImage = 0;
                                });
                              },
                              value: "America",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text("New York",
                                    style: TextStyle(color: Colors.black)),
                              ),
                              onTap: () {
                                setState(() {
                                  indexImage = 1;
                                });
                              },
                              value: "New York",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text("Paris",
                                    style: TextStyle(color: Colors.black)),
                              ),
                              onTap: () {
                                setState(() {
                                  indexImage = 2;
                                });
                              },
                              value: "Paris",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text("Tailand",
                                    style: TextStyle(color: Colors.black)),
                              ),
                              onTap: () {
                                setState(() {
                                  indexImage = 3;
                                });
                              },
                              value: "Tailand",
                            ),
                            DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text("Dubai",
                                    style: TextStyle(color: Colors.black)),
                              ),
                              onTap: () {
                                setState(() {
                                  indexImage = 4;
                                });
                              },
                              value: "Dubai",
                            ),
                          ],
                          hint: Text(davlatol, style: TextStyle(color: Colors.white),),
                          onChanged: (String? e) {
                            setState(() {
                              davlatol = e!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                alignment: Alignment.bottomLeft,
                height: 70.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
                  child: Text(
                    "Lists",
                    style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                  height: 637.0,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: Malumotol.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          margin: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 20, bottom: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20.0, bottom: 35.0),
                                alignment: Alignment.centerLeft,
                                child: Malumotol[index],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.0, bottom: 7.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${TextOl[index]}",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${MalumotlarOl[index]}",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AsosiyPage(index)));
                        },
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class AsosiyPage extends StatefulWidget {
  int index;
  AsosiyPage(this.index);

  @override
  _AsosiyPageState createState() => _AsosiyPageState();
}

class _AsosiyPageState extends State<AsosiyPage> {
  bool ola = false;
  bool ola1 = false;
  bool ola2 = false;
  bool ola3 = false;
  bool ola4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SalomBer()));
        },
        child: Icon(Icons.add,size: 32.0,),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            height: 330.0,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 7.0, top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 28.0,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_rounded,
                          size: 28.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 60.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Malumotol[widget.index],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "${TextOl[widget.index]}",
                        style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 5.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      MalumotlarOl[widget.index],
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            height: 487.0,
            child: ListView(
                padding: EdgeInsets.only(top: 20), children: Olibkel()),
          ),
        ],
      ),
    );
  }

  List<Widget> Olibkel() {
    return [
      Padding(
        padding: const EdgeInsets.only(left: 35.0, bottom: 5.0),
        child: Text(
          "Late",
          style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: CheckboxListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text("Call Max"),
            subtitle: Text(
              "20:15 - April 29",
              style: TextStyle(color: Colors.red),
            ),
            value: ola,
            onChanged: (e) {
              setState(() {
                ola = e!;
              });
            }),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 35.0, top: 30.0, bottom: 5.0),
        child: Text(
          "Today",
          style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: CheckboxListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text("Practice piano"),
            subtitle: Text(
              "16:00"
            ),
            value: ola1,
            onChanged: (e) {
              setState(() {
                ola1 = e!;
              });
            }),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: CheckboxListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text("Learn Spanish"),
            subtitle: Text(
                "17:00"
            ),
            value: ola2,
            onChanged: (e) {
              setState(() {
                ola2 = e!;
              });
            }),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 35.0, top: 30.0, bottom: 5.0),
        child: Text(
          "Done",
          style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: CheckboxListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text("Finalize presentation", style: TextStyle(color: Colors.blue, decoration: TextDecoration.lineThrough),),
            subtitle: Text(
                "9:00 - 11:30"
            ),
            value: ola3,
            onChanged: (e) {
              setState(() {
                ola3 = e!;
              });
            }),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: CheckboxListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text("Learn English", style: TextStyle(color: Colors.blue, decoration: TextDecoration.lineThrough),),
            subtitle: Text(
                "12:00 - 13:30"
            ),
            value: ola4,
            onChanged: (e) {
              setState(() {
                ola4 = e!;
              });
            }),
      ),
    ];
  }
}

class SalomBer extends StatefulWidget {

  @override
  _SalomBerState createState() => _SalomBerState();
}

class _SalomBerState extends State<SalomBer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 80.0,
            width: 400.0,
            margin: EdgeInsets.only(top: 20.0, left: 130.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("New task", style: TextStyle(fontSize: 20),),
                SizedBox(width: 90.0,),
                TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/a");
                    },
                    child: Text("x",style: TextStyle(fontSize: 22.0, color: Colors.black),),)
              ],
            ),
          ),
          Container(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: "What are you planning?",
                    labelStyle: TextStyle(color: Colors.grey,fontSize: 18.0),
                  ),
                  textAlignVertical: TextAlignVertical.center,
                ),
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 25.0, top: 33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.notifications_none_rounded, color: Colors.blue,),
                    SizedBox(width: 15.0,),
                    Text("May 29, 14:00",),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    Icon(Icons.sticky_note_2, color: Colors.grey,),
                    SizedBox(width: 15.0,),
                    Text("Add note",style: TextStyle(color: Colors.grey),),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    Icon(Icons.category_outlined, color: Colors.grey,),
                    SizedBox(width: 15.0,),
                    Text("Category",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 40.0,
            width: 400.0,
            child: ElevatedButton(
                onPressed: (){},
                child: Text("Create"),),
          ),
        ],
      ),
    );
  }
}
