import 'package:flutter/material.dart';

class AnimatedListStateExample extends StatefulWidget {
  const AnimatedListStateExample({Key? key}) : super(key: key);

  @override
  State<AnimatedListStateExample> createState() =>
      _AnimatedListStateExampleState();
}

class _AnimatedListStateExampleState extends State<AnimatedListStateExample> {
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<int> _data = [];

  _addItem() {
    final int index = _data.length;
    _data.insert(0, index);
    _listKey.currentState?.insertItem(index);
  }

  _removeItem(int index) {
    _data.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (BuildContext context, Animation<double> animation) {
        return ListTile(
          title: Text(
            '$index',
            style: TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedListStateExample'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _data.length,
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
              title: Text('$index'),
              trailing: IconButton(
                icon: Icon(Icons.remove),
                onPressed: () => _removeItem(index),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}
