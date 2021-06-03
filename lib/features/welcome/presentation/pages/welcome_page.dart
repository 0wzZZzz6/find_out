import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../bloc/bloc/welcome_bloc.dart';
import '../widgets/form_container.dart';
import '../widgets/welcome_container.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  static const double ySlide = -325;
  static const double xSlide = 0;

  static const double minDragStartEdge = 10;
  static const double maxDragStartEdge = ySlide - 16;
  bool _canBeDragged = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 250,
      ),
    );

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInToLinear,
    );
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  void close() => animationController.reverse();

  void open() => animationController.forward();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WelcomeBloc>(),
      child: WillPopScope(
        onWillPop: () async {
          if (animationController.isCompleted) {
            close();

            return false;
          }
          return true;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              double _ySlide = ySlide * animation.value;

              return BlocBuilder<WelcomeBloc, WelcomeState>(
                builder: (context, state) {
                  void _onDragStart(DragStartDetails details) {
                    bool isDragOpenFromBottom =
                        animationController.isDismissed &&
                            details.globalPosition.dy < minDragStartEdge;
                    bool isDragCloseFromTop = animationController.isCompleted &&
                        details.globalPosition.dy > maxDragStartEdge;

                    _canBeDragged = isDragOpenFromBottom || isDragCloseFromTop;
                  }

                  void _onDragUpdate(DragUpdateDetails details) {
                    if (_canBeDragged) {
                      double delta = (details.primaryDelta ?? 0) / ySlide;

                      animationController.value += delta;
                    }
                  }

                  void _onDragEnd(DragEndDetails details) {
                    //I have no idea what it means, copied from Drawer
                    double _kMinFlingVelocity = 365.0;

                    if (animationController.isDismissed ||
                        animationController.isCompleted) {
                      close();
                      context
                          .read<WelcomeBloc>()
                          .add(WelcomeEvent.swipeDownToClose());
                      return;
                    }
                    if (details.velocity.pixelsPerSecond.dy.abs() >=
                        _kMinFlingVelocity) {
                      double visualVelocity =
                          details.velocity.pixelsPerSecond.dy /
                              MediaQuery.of(context).size.height;

                      animationController.fling(velocity: visualVelocity);
                    } else if (animationController.value < 0.9) {
                      close();
                      context
                          .read<WelcomeBloc>()
                          .add(WelcomeEvent.swipeDownToClose());
                      print('close');
                    } else {
                      open();
                      print('open');
                    }
                  }

                  return Stack(
                    children: [
                      FormContainer(),
                      Transform(
                        transform: Matrix4.identity()
                          ..translate(xSlide, _ySlide),
                        alignment: Alignment.topCenter,
                        child: GestureDetector(
                          onVerticalDragStart: _onDragStart,
                          onVerticalDragUpdate: _onDragUpdate,
                          onVerticalDragEnd: _onDragEnd,
                          child: WelcomeContainer(
                            onOpenStack: open,
                            onCloseStack: close,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
