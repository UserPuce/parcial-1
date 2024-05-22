import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';

class ShopCart extends StatelessWidget {
  const ShopCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Carrito de Compras'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    title: const Text('Producto 1'),
                    subtitle: const Text('Cantidad: 1'),
                    trailing: const Text('\$10.00'),
                  ),
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                    title: const Text('Producto 2'),
                    subtitle: const Text('Cantidad: 2'),
                    trailing: const Text('\$20.00'),
                  ),
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                    title: const Text('Producto 3'),
                    subtitle: const Text('Cantidad: 1'),
                    trailing: const Text('\$15.00'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Total: \$45.00',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                // padding: const EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                // Implementar la funcionalidad de proceder al pago
              },
              child: const Text(
                'Proceder al Pago',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Productos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
        ],
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            context.go('/');
          } else if (index == 1) {
            context.go('/list-product');
          } else if (index == 2) {
            context.go('/shop-cart');
          }
        },
      ),
    );
  }
}
