import 'package:flutter/material.dart';
import 'package:qlpm_ckc_mobile_app/views/custom_widgets/custom_bottom_nav.dart';

class BasePage extends StatefulWidget {
  final bool showAppBar;
  final bool showLeadingAction;
  final bool defaultBody;
  final bool showSearchBar;
  final bool resizeToAvoidBottomInset;
  final Function? onBackPressed;
  final String? titletext;
  final Widget? body;
  final Widget? bottomSheet;
  final FloatingActionButtonLocation? fabl;
  final Widget? fab;
  final bool isLoading;
  final bool extendBodyBehindAppBar;
  final double? elevation;
  final Color? appBarItemColor;
  final Color? backgroundColor;
  final Color? appBarColor;
  final Widget? leading;
  final Widget? bottomNavigationBar;
  final List<Widget>? actions;
  final List<Widget>? bodyChildren;
  final AppBar? appBar;
  final Drawer? drawer;

  BasePage({
    this.fabl,
    this.showAppBar = false,
    this.showLeadingAction = false,
    this.defaultBody = false,
    this.showSearchBar = false,
    this.leading,
    this.onBackPressed,
    this.titletext = "",
    this.body,
    this.bottomSheet,
    this.fab,
    this.isLoading = false,
    this.appBarColor,
    this.elevation,
    this.extendBodyBehindAppBar = false,
    this.resizeToAvoidBottomInset = false,
    this.appBarItemColor,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.actions,
    this.bodyChildren,
    this.drawer,
    this.appBar,
    Key? key,
  }) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: widget.drawer,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        backgroundColor:
            widget.backgroundColor ?? Theme.of(context).colorScheme.surface,
        extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
        appBar: widget.showAppBar
            ? widget.appBar ??
                AppBar(
                  centerTitle: true,
                  actions: widget.actions,
                  foregroundColor: widget.appBarItemColor,
                  backgroundColor: widget.appBarColor,
                  automaticallyImplyLeading: widget.showLeadingAction,
                  elevation: widget.elevation,
                  leading: widget.showLeadingAction
                      ? widget.leading ??
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back_rounded,
                            ),
                            onPressed: (widget.onBackPressed != null)
                                ? () => widget.onBackPressed!()
                                : () => Navigator.pop(context),
                          )
                      : null,
                  title: Text(
                    "${widget.titletext}",
                  ),
                )
            : null,
        body: widget.defaultBody
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Color(0xFFEEF2F6),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: SingleChildScrollView(
                  child: Column(
                    children: widget.bodyChildren!,
                  ),
                ),
              )
            : widget.body,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onItemTapped,
        ),
        floatingActionButton: widget.fab,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
