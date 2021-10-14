import 'package:fastapi_shop1/widget/appbar.dart';
import 'package:flutter/material.dart';

class CommenctSection extends StatefulWidget {
  const CommenctSection({Key? key}) : super(key: key);

  @override
  _CommenctSectionState createState() => _CommenctSectionState();
}

class _CommenctSectionState extends State<CommenctSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return buildHeaderComment();
            }
            if (index == 1) {
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "All Comment",
                ),
              );
            }
            return buildCardCommenct();
          },
          separatorBuilder: (BuildContext context, int index) {
            if (index > 1) {
              return Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              );
            }
            return SizedBox(
              height: 10,
            );
          },
        ),
      ),
    );
  }

  buildHeaderComment() {
    return AppBarBack();
  }

  buildCardCommenct() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return Text("In work");
        } else {
          return Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            // height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 10,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  Container(
                    width: constraints.maxWidth - 80,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama"),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
