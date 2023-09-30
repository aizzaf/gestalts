import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bukus/bloc/bukus_bloc.dart';

import 'repositories/bukus/bukus_repositories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (_) => BukusRepository(),
        child: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BukusBloc(
        RepositoryProvider.of<BukusRepository>(context),
      )..add(LoadBukusEvent()),
      child: BlocBuilder<BukusBloc, BukusState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('6'),
            ),
            body: switch (state) {
              BukusInitial() => const Center(
                  child: CircularProgressIndicator(),
                ),
              BukusLoaded() => ListView.builder(
                  itemCount: state.bukus.length,
                  itemBuilder: (_, index) => Card(
                    color: Colors.blue,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      title: Text(
                        state.bukus[index].title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        state.bukus[index].priceRent,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              BukusError() => Center(
                  child: Text(state.error),
                ),
            },
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      context.read<BukusBloc>().add(LoadBukusEvent());
                    },
                    child: const Icon(Icons.youtube_searched_for),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: FloatingActionButton(
                      onPressed: () {
                        context.read<BukusBloc>().add(LoadBukusRangeEvent());
                      },
                      child: const Icon(Icons.filter_9_plus_rounded)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
