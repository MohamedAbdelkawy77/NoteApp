import 'package:flutter/material.dart';
import 'package:noteapp/CustomWidgets/CustomSearchButton.dart';
import 'package:noteapp/Models/Constants.dart';
import 'package:noteapp/views/SettingView.dart';

class CustomNoteAppBar extends StatefulWidget {
  const CustomNoteAppBar(
      {super.key,
      required this.Str,
      required this.SearchIcon,
      required this.Onpressed});
  final String Str;
  final IconData SearchIcon;
  final VoidCallback Onpressed;

  @override
  State<CustomNoteAppBar> createState() => _CustomNoteAppBarState();
}

class _CustomNoteAppBarState extends State<CustomNoteAppBar> {
  bool isPreesed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            widget.Str,
            style: TextStyle(fontSize: 20, color: Themecolor),
          ),
          Spacer(),
          CustomSearchButton(
            Onpressed: widget.Onpressed,
            SearchIcon: widget.SearchIcon,
          ),
          PopupMenuButton(
              color: Colors.white,
              onOpened: () {
                isPreesed = true;
                setState(() {});
              },
              onCanceled: () {
                isPreesed = false;
                setState(() {});
              },
              icon: isPreesed
                  ? Icon(
                      Icons.arrow_drop_up,
                      size: 25,
                      color: Themecolor,
                    )
                  : Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                      color: Themecolor,
                    ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () async {
                        await Future.delayed(Duration(milliseconds: 100));
                        showDatePicker(
                            context: context,
                            firstDate: DateTime.now(),
                            lastDate: DateTime.utc(2035));
                        setState(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Calender",
                            style: TextStyle(color: Themecolor),
                          ),
                          Icon(
                            Icons.calendar_month,
                            color: Themecolor,
                          )
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () {
                        Navigator.pushNamed(context, Settingview.id);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Setting",
                            style: TextStyle(color: Themecolor),
                          ),
                          Icon(
                            Icons.settings,
                            color: Themecolor,
                          ),
                        ],
                      ),
                    ),
                  ]),
        ],
      ),
    );
  }
}
