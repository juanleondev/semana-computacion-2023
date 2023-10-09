import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForoScreen extends StatelessWidget {
  const ForoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foro'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ForoList(),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Escribe un mensaje',
            ),
            onSubmitted: (value) {
              FirebaseFirestore.instance.collection('foro').add({
                'email': FirebaseAuth.instance.currentUser?.email,
                'comment': value,
                'createdAt': DateTime.now(),
              });
              print(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class ForoList extends StatelessWidget {
  const ForoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CollectionReference foro = FirebaseFirestore.instance.collection('foro');
    return StreamBuilder(
        stream: foro.orderBy('createdAt', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }
          if (snapshot.hasData) {
            final docs = snapshot.data?.docs;
            return ListView.builder(
                itemCount: docs?.length ?? 0,
                itemBuilder: (context, index) {
                  final doc = docs?[index];
                  final name = doc?['email'];
                  final comment = doc?['comment'];
                  return ListTile(
                    title: Text(comment),
                    leading: CircleAvatar(
                      child: Text(name[0]),
                    ),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
