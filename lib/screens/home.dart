import 'package:flutter/material.dart';
import 'package:plan_it/screens/second_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // SizedBox(height: 70,),
            InkWell(
              onTap: (){
                setState((){
                  isClicked = !isClicked;
                });
              },
              child: const Text(
                "Welcome to my app\nHow are you!!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                ),
                textAlign: TextAlign.center,
              ),
            ),

            if(isClicked)
              const Text(
                "Welcome to my app\nHow are you!!",
                textAlign: TextAlign.center,
              ),

            Image.network(
              "https://img.freepik.com/free-vector/hot-dog-street-snack-isolated-transparent_107791-18353.jpg",
              height: size.height*.20,
            ),
            const Text(
              "Png Images & Pictures. 1,000+ png images, frame & vectors. Download royalty free png pictures in HD quality as backgrounds & more. Paid Images iStock.",
              textAlign: TextAlign.center,
            ),


            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(5) )),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10,horizontal: 40))
                ),
                child: Text("Click Me!!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
            ),
            SizedBox(height: 30,),

            InkWell(
              onTap: (){
                // setState(() {
                //   isClicked = !isClicked;
                // });
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context){
                //       return SecondScreen();
                //     })
                // );

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondScreen())
                );

              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 40),
                  decoration: BoxDecoration(
                      color: isClicked == true ? Colors.cyan : Colors.black,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("Navigate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),)
              ),
            )


          ],
        ),
      ),
    );
  }
}
