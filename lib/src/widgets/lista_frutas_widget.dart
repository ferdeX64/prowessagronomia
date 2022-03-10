import 'package:async_button_builder/async_button_builder.dart';
import 'package:flutter/material.dart';

class ListaFrutas extends StatelessWidget {
  const ListaFrutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncButtonBuilder(
                      child: const Padding(
                        key: ValueKey('foo'),
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.0,
                          vertical: 25.0,
                        ),
                        child: Text(
                          'Añadir al carrito',
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                      loadingWidget: const Padding(
                        key: ValueKey('bar'),
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                          height: 16.0,
                          width: 16.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                      ),
                      successWidget: const Padding(
                        key: ValueKey('foobar'),
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.check,
                          color: Colors.purpleAccent,
                        ),
                      ),
                      onPressed: () async {
                        await Future.delayed(const Duration(seconds: 2));
                      },
                      loadingSwitchInCurve: Curves.bounceInOut,
                      loadingTransitionBuilder: (child, animation) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 1.0),
                            end: const Offset(0, 0),
                          ).animate(animation),
                          child: child,
                        );
                      },
                      builder: (context, child, callback, state) {
                        return Material(
                          color: state.maybeWhen(
                            success: () => Colors.purple[100],
                            orElse: () => Colors.lightGreen ,
                          ),
                          clipBehavior: Clip.hardEdge,
                          shape: const StadiumBorder(),
                          child: InkWell(
                            child: child,
                            onTap: callback,
                          ),
                        );
                      },
                    );
  }
}