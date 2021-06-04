# Representación de datos en las pantallas de Flutter

En Web, antes de crear una página decidimos si esta será **estática o dinámica**. Una página estática sería aquella que contiene información que no será modificada por ninguna acción provocada por el usuario, mientras que en una dinámica si.

En Flutter estas se denominan **StatelessWidget y StatefulWidget**, todas nuestras pantallas deberán extender de una de estas dos clases de Flutter.

Las pantallas **StatelessWidget** solo se pintarán una vez cuando navegamos a estas. (esto no se produce al navegar mediante la función _pop_, usualmente en los botones de volver atrás, dado que esta recupera la pantalla de la pila del historial).

Las pantallas **StatefulWidget** harán lo que las anteriores, pero además, cuentan con un método extra que nos permite repintarla cuando queramos actualizando datos.

## Buenas prácticas en Flutter.

- **Al crear pantallas, separar la parte lógica** (donde realizamos las peticiones para obtener los datos como su tratamiento antes de representarlos) **de los Widgets.**
- **Fragmentar las pantallas en widgets más pequeños empleando clases, no funciones.**


## Métodos de representación de datos en las pantallas

- **Podemos implementarlo todo en la pantalla** (no recomendado, la pantalla siempre será StatefulWidget).
- **Podemos separar la lógica y emplear streams como medio de comunicación** (debemos emplear los StreamBuilder para repintar la pantalla).
- **Podemos implementar el Patrón Bloc.** (crear condicionales para identificar que debe hacer la pantalla para cada uno los diferentes estados)
- **Podemos implementar el Patrón Provider.** (emplear Consumer, ChangeNotifier y ChangeNotifierProvider)

El método de los **Streams** es recomendable para **pequeñas aplicaciones** que no tenga una lógica muy extensa o complicada. Mientras que **los patrones** se emplearían en **aplicaciones medianas o grandes** indiferentemente.

# Pasos para levantar la aplicacion

- Instalar Dart y Flutter: [pasos](https://flutter.dev/docs/get-started/install)
- usar el comando `flutter pub get` para descargar los paquetes necesarios (equivalente a `npm install`)
- `flutter run` (levanta el emulador, si tenemos uno, con la app)