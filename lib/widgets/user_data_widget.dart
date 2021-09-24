import 'package:flutter/material.dart';
import 'package:user_profile/widgets/write_widget.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(width: double.infinity, child: Write.heading(text: "Profile")),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(
                          color: Colors.orange,
                          width: 2,
                        )),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: const FlutterLogo(
                        size: 120,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 20,),
            Write.heading(text: "John Richard"),
            Write.subheading(text: "18 E-books"),
          ],
        ),
      ],
    );
  }
}
