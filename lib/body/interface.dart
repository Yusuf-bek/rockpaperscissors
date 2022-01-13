import 'package:flutter/material.dart';
import 'package:toshqaychiqogoz/body/backendbase.dart';

class Interface extends StatefulWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InterfaceWidgetState();
}

class _InterfaceWidgetState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("RockPaperScissors"),
      ),
      backgroundColor: Colors.green.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(pngImages[indexEnemy]), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(pngImages[userIndex]), fit: BoxFit.cover),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () async {
                  userIndex = 0;
                  randomIndexEnemy();
                  await Future.delayed(
                    const Duration(seconds: 1),
                  ).then((value) {
                    setState(() {});
                  });
                  showMyDialog();
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2),
                    image: DecorationImage(
                      image: AssetImage(pngImages[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  userIndex = 1;
                  randomIndexEnemy();

                  await Future.delayed(
                    const Duration(seconds: 1),
                  ).then((value) {
                    setState(() {});
                  });
                  showMyDialog();
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 2),
                    image: DecorationImage(
                      image: AssetImage(pngImages[1]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  userIndex = 2;
                  randomIndexEnemy();
                  await Future.delayed(
                    const Duration(seconds: 1),
                  ).then((value) {
                    setState(() {});
                  });
                  showMyDialog();
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2),
                    image: DecorationImage(
                      image: AssetImage(pngImages[2]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  showMyDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return  AlertDialog(
            title: Text(winnerReturner()),
          );
        });
  }
}
