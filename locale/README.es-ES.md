<p align="center">
	<img width="256px" src="https://github.com/GodotParadise/Motion2D/blob/main/icon.jpg" alt="GodotParadiseMotion2D logo" />
	<h1 align="center">Godot Paradise Motion2D</h1>
	
[![LastCommit](https://img.shields.io/github/last-commit/GodotParadise/Motion2D?cacheSeconds=600)](https://github.com/GodotParadise/Motion2D/commits)
[![Stars](https://img.shields.io/github/stars/godotparadise/Motion2D)](https://github.com/GodotParadise/Motion2D/stargazers)
[![Total downloads](https://img.shields.io/github/downloads/GodotParadise/Motion2D/total.svg?label=Downloads&logo=github&cacheSeconds=600)](https://github.com/GodotParadise/Motion2D/releases)
[![License](https://img.shields.io/github/license/GodotParadise/Motion2D?cacheSeconds=2592000)](https://github.com/GodotParadise/Motion2D/blob/main/LICENSE.md)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat&logo=github)](https://github.com/godotparadise/Motion2D/pulls)
[![](https://img.shields.io/discord/1167079890391138406.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/XqS7C34x)
[![Kofi](https://badgen.net/badge/icon/kofi?icon=kofi&label)](https://ko-fi.com/bananaholograma)

</p>

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/GodotParadise/Motion2D/blob/main/README.md)

- - -

Es un módulo versátil y personalizable diseñado para agilizar el movimiento de Nodos 2D en Godot Engine.

Ya sea top-down, platformer o grid-based, este componente ofrece la funcionalidad que necesitas sin tener que reescribirlo tú mismo para cada proyecto. El movimiento puede hacerse flexible con los parámetros expuestos y contiene una API interna que facilita las acciones más comunes que pueden ocurrir en un juego 2D.

- [Requerimientos](#requerimientos)
- [✨Instalacion](#instalacion)
	- [Automatica (Recomendada)](#automatica-recomendada)
	- [Manual](#manual)
	- [CSharp version](#csharp-version)
- [🏃🏾GodotParadiseMotion](#godotparadisemotion)
	- [Parámetros exportados](#parámetros-exportados)
		- [Speed](#speed)
		- [Modificadores](#modificadores)
		- [Dash](#dash)
		- [Señales opcionales](#señales-opcionales)
	- [Variables accessibles](#variables-accessibles)
	- [Cuando entra en el arbol de escenas](#cuando-entra-en-el-arbol-de-escenas)
	- [Encadenando métodos](#encadenando-métodos)
	- [Funciones](#funciones)
		- [move()](#move)
		- [move\_and\_collide(delta: float = get\_physics\_process\_delta\_time()) -\> KinematicCollision2D](#move_and_collidedelta-float--get_physics_process_delta_time---kinematiccollision2d)
		- [accelerate(direction: Vector2, delta: float = get\_physics\_process\_delta\_time())](#acceleratedirection-vector2-delta-float--get_physics_process_delta_time)
		- [decelerate(delta: float = get\_physics\_process\_delta\_time(), force\_stop: bool = false)](#deceleratedelta-float--get_physics_process_delta_time-force_stop-bool--false)
		- [accelerate\_to\_position(position: Vector2)](#accelerate_to_positionposition-vector2)
		- [apply\_air\_friction\_horizontal(friction\_factor: float = AIR\_FRICTION\_HORIZONTAL\_FACTOR)](#apply_air_friction_horizontalfriction_factor-float--air_friction_horizontal_factor)
		- [apply\_air\_friction\_vertical(friction\_factor: float = AIR\_FRICTION\_VERTICAL\_FACTOR)](#apply_air_friction_verticalfriction_factor-float--air_friction_vertical_factor)
		- [knockback(direction: Vector2, power: float)](#knockbackdirection-vector2-power-float)
		- [teleport\_to\_position(position: Vector2, valid\_position\_callback: Callable = \_default\_valid\_position\_callback)](#teleport_to_positionposition-vector2-valid_position_callback-callable--_default_valid_position_callback)
		- [change\_speed\_temporary(new\_speed: float, time: float = DEFAULT\_TEMPORARY\_SPEED\_TIME)](#change_speed_temporarynew_speed-float-time-float--default_temporary_speed_time)
		- [has\_available\_dashes() -\> bool](#has_available_dashes---bool)
		- [can\_dash(direction: Vector2 = Vector2.ZERO)](#can_dashdirection-vector2--vector2zero)
		- [dash(target\_direction: Vector2 = facing\_direction, speed\_multiplier: float = DASH\_SPEED\_MULTIPLIER)](#dashtarget_direction-vector2--facing_direction-speed_multiplier-float--dash_speed_multiplier)
		- [reset\_dash\_queue()](#reset_dash_queue)
	- [Señales](#señales)
- [🚶🏽‍♀️Top-down Movement](#️top-down-movement)
	- [Como empezar](#como-empezar)
- [🦘 Platformer Movement](#-platformer-movement)
	- [Como empezar](#como-empezar-1)
	- [Parámetros exportados](#parámetros-exportados-1)
		- [Gravity](#gravity)
		- [Jump](#jump)
		- [Wall jump](#wall-jump)
		- [Wall slide](#wall-slide)
		- [Wall climb](#wall-climb)
	- [Variables accessibles](#variables-accessibles-1)
	- [Al entrar en el árbol de escenas](#al-entrar-en-el-árbol-de-escenas)
	- [Funciones](#funciones-1)
		- [move()](#move-1)
		- [acelera\_horizontalmente(direction: Vector2, delta: float = get\_physics\_process\_delta\_time())](#acelera_horizontalmentedirection-vector2-delta-float--get_physics_process_delta_time)
		- [decelerate\_horizontally(delta: float = get\_physics\_process\_delta\_time(), force\_stop: bool = false)](#decelerate_horizontallydelta-float--get_physics_process_delta_time-force_stop-bool--false)
		- [get\_gravity() -\> float](#get_gravity---float)
		- [apply\_gravity(delta: float = get\_physics\_process\_delta\_time())](#apply_gravitydelta-float--get_physics_process_delta_time)
		- [invert\_gravity()](#invert_gravity)
		- [suspend\_gravity\_for\_duration(duration: float)](#suspend_gravity_for_durationduration-float)
		- [is\_withing\_jump\_threshold() -\> bool](#is_withing_jump_threshold---bool)
		- [is\_falling() -\> bool](#is_falling---bool)
		- [can\_jump() -\> bool](#can_jump---bool)
		- [can\_wall\_jump() -\> bool](#can_wall_jump---bool)
		- [jump(height: float = jump\_height, bypass: bool = false)](#jumpheight-float--jump_height-bypass-bool--false)
		- [shorten\_jump()](#shorten_jump)
		- [wall\_jump(direction: Vector2, height: float = jump\_height)](#wall_jumpdirection-vector2-height-float--jump_height)
		- [can\_wall\_slide() -\> bool](#can_wall_slide---bool)
		- [wall\_slide(delta: float = get\_physics\_process\_delta\_time())](#wall_slidedelta-float--get_physics_process_delta_time)
		- [can\_wall\_climb() -\> bool](#can_wall_climb---bool)
		- [wall\_climb(direction: Vector2)](#wall_climbdirection-vector2)
		- [reset\_jump\_queue()](#reset_jump_queue)
	- [Señales](#señales-1)
- [🏁Grid Movement](#grid-movement)
	- [Como empezar](#como-empezar-2)
	- [Una vez en el árbol de escena](#una-vez-en-el-árbol-de-escena)
	- [Parámetros exportados](#parámetros-exportados-2)
	- [Variables accessibles](#variables-accessibles-2)
	- [Funciones](#funciones-2)
		- [move(direction: Vector2, valid\_position\_callback: Callable = \_default\_valid\_position\_callback)](#movedirection-vector2-valid_position_callback-callable--_default_valid_position_callback)
		- [follow\_path(moves: Array\[Vector2\], valid\_position\_callback: Callable = \_default\_valid\_position\_callback)](#follow_pathmoves-arrayvector2-valid_position_callback-callable--_default_valid_position_callback)
		- [teleport\_to(target\_position: Vector2, valid\_position\_callback: Callable = \_default\_valid\_position\_callback)](#teleport_totarget_position-vector2-valid_position_callback-callable--_default_valid_position_callback)
		- [snap\_body\_position(body: CharacterBody2D)](#snap_body_positionbody-characterbody2d)
		- [snap\_position(position: Vector2) -\> Vector2](#snap_positionposition-vector2---vector2)
	- [Señales](#señales-2)
- [✌️Eres bienvenido a](#️eres-bienvenido-a)
- [🤝Normas de contribución](#normas-de-contribución)
- [📇Contáctanos](#contáctanos)

# Requerimientos
📢 No ofrecemos soporte para Godot 3+ ya que nos enfocamos en las versiones futuras estables a partir de la versión 4.
* Godot 4+

# ✨Instalacion
## Automatica (Recomendada)
Puedes descargar este plugin desde la [Godot asset library](https://godotengine.org/asset-library/asset/2039) oficial usando la pestaña AssetLib de tu editor Godot. Una vez instalado, estás listo para empezar
## Manual 
Para instalar manualmente el plugin, crea una carpeta **"addons"** en la raíz de tu proyecto Godot y luego descarga el contenido de la carpeta **"addons"** de este repositorio
## CSharp version
Este plugin ha sido escrito también en CSharp y puedes encontrarlo en [Motion2D-CSharp](https://github.com/GodotParadise/Motion2D-CSharp)



# 🏃🏾GodotParadiseMotion
⚠️ No se trata de un componente destinado al uso directo. Sirve como componente base para construir otros y contiene funcionalidad común que puede ser utilizada por todos.

Esta es la clase de donde se extienden todos los nodos *(excepto el movimiento de grid)* y tiene acceso a todas sus variables y funciones.

Para usar los componentes, buscalos en el editor al añadir un nuevo nodo a la escena:
![paradise-motion-nodes](https://github.com/GodotParadise/Motion2D/blob/main/images/paradise_motion_childs.png)

## Parámetros exportados
Estos parámetros pueden modificarse para lograr distintos comportamientos. A continuación, explicamos el propósito de cada parámetro y su impacto en el componente

### Speed
- Max Speed
- Acceleration
- Friction
- Air friction horizontal factor
- Air friction vertical factor

La **max speed**, como su nombre indica, define el límite máximo de velocidad alcanzable que se aplicará a la velocidad.

La **acceleration** hace más suave alcanzar la velocidad máxima si quieres aumentar la jugosidad del movimiento. En caso de que no lo desees simplemente asígnale un valor cero y el nodo alcanzará la velocidad máxima inmediatamente.

La **friction** frena el nodo suavemente para dar un efecto de deslizamiento al cambiar de dirección o terminar el movimiento. En caso de que no lo desees, simplemente asígnale un valor cero y el nodo no desacelerará usando la fricción.

El factor **air friction** simula la fricción del personaje cuando está en el aire. Esta fricción necesita ser aplicada manualmente ya que no se usa directamente dentro del componente. Proporciona una funcionalidad adicional para simular la fricción del aire cuando sea necesario. Los valores de este factor se aplican horizontalmente a `velocidad.x` y verticalmente a `velocidad.y`.

### Modificadores
Este grupo exportado se guarda para los distintos modificadores que pueden aplicarse temporalmente a los parámetros existentes
- Default temporary speed time

El **Default temporary speed time** En segundos, la cantidad de tiempo que durará una modificación de velocidad. Este valor se utiliza en la función `change_speed_temporary()`.

### Dash
- Dash speed multiplier
- Times can dash
- Dash Cooldown
- Dash duration
- Can dash while dashing

El **dash speed multiplier** se aplica sobre el valor de velocidad máxima para conseguir el efecto dash y mover inmediatamente el nodo.

Las **times can dash** define el número de veces que se puede hacer un salto seguido después de terminar el anterior.

El **dash cooldown** es el tiempo de recuperación para volver a usar el dash, este se aplica individualmente aunque se puedan realizar varios. Cada uno de los dash tiene su propio cooldown.

La **dash duration** desactiva la gravedad la cantidad en segundos definida para evitar direcciones diagonales no deseadas hacia el suelo cuando se está dasheando.

El parámetro **can dash while dashing** determina si el personaje puede iniciar otro dash mientras ya se encuentra en el estado de dashing. Está activado por defecto. Cuando este parámetro se establece en false, el personaje debe esperar a que el primer dash termine antes de realizar un segundo.

### Señales opcionales
Este grupo recoge las señales que pueden afectar al rendimiento por el número de veces que se pueden ejecutar en contexto. Desde aquí, puedes activarlas o desactivarlas:

- Max speed reached signal
- Stopped signal
- Knockback received signal *(true por defecto)*


## Variables accessibles
- body: CharacterBody2D
- original_max_speed: float *(este valor se usa para devolver el valor original de MAX_SPEED cuando se aplica un modificador temporal y termina)*
- velocity: Vector2
- facing_direction: Vector2
- last_faced_direction: Vector2
- temporary_speed_timer: Timer
- dash_duration_timer: Timer
- dash_queue: Array[Vector2]
- is_dashing: bool


## Cuando entra en el arbol de escenas
Cuando este nodo entra al arbol de escena suceden multiples cosas:
- Crea el `coyote timer` que se usará cuando se habilite el salto coyote
- Crea el `dash duration timer` que desactiva la gravedad la cantidad de tiempo del valor `dash_gravity_time_disabled`.

## Encadenando métodos
Casi todos los métodos se devuelven a si mismos *(excepto aquellas funciones que devuelven otros valores)* por lo que puedes lograr cosas como las siguientes:
```py
GodotParadisePlatformerMovement.apply_gravity()\
     .wall_climb(input_direction)\
     .wall_slide()\
     .mover()
```

## Funciones
### move()
El movimiento básico [move_and_slide](https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#class-characterbody2d-method-move-and-slide) de Godot, aplica la velocidad al nodo CharacterBody2D

### move_and_collide(delta: float = get_physics_process_delta_time()) -> KinematicCollision2D
Mismo que el anterior pero usa [move_and_collide](https://docs.godotengine.org/en/stable/classes/class_physicsbody2d.html#class-physicsbody2d-method-move-and-collide), el motion vector usado internamente es `body.velocity * delta`

### accelerate(direction: Vector2, delta: float = get_physics_process_delta_time())
Cuando el valor `ACCELERATION` es mayor que cero, se aplica aceleración al movimiento. Cuando este valor es cero, se aplica la velocidad como constante.
Si está habilitada, la señal `max_speed_reached` se emite cuando la velocidad alcanza el valor `MAX_SPEED`.

### decelerate(delta: float = get_physics_process_delta_time(), force_stop: bool = false)
La velocidad se desacelera hasta alcanzar el valor `Vector2.ZERO` cuando se proporciona el valor `FRICTION`. En el caso contrario, la velocidad se pone a `Vector2.ZERO` instantáneamente. Esta deceleración puede forzarse mediante el parámetro `force_stop`.
Cuando la velocidad alcanza el valor `Vector2.ZERO`, se emite la señal `stopped`.

### accelerate_to_position(position: Vector2)
Acelera a la posición definida como parámetro, utiliza internamente la función `accelerate()`.

### apply_air_friction_horizontal(friction_factor: float = AIR_FRICTION_HORIZONTAL_FACTOR)
Aplica la fricción horizontal del aire a la `velocity.x` cuando este valor es mayor que cero. No es necesario que devuelva `is_on_floor()` y `is_on_wall()` a verdadero.

### apply_air_friction_vertical(friction_factor: float = AIR_FRICTION_VERTICAL_FACTOR)
Aplica fricción vertical del aire a la `velocity.y` cuando este valor es mayor que cero. No es necesario que el carácter devuelva `is_on_floor()` y `is_on_wall()` a verdadero.

### knockback(direction: Vector2, power: float)
Ejecuta un **knockback** sobre el personaje con los parámetros de dirección y fuerza proporcionados para esta función. Se emite una señal `knockback_received`.

### teleport_to_position(position: Vector2, valid_position_callback: Callable = _default_valid_position_callback)
Esta función reubica inmediatamente al personaje en la posición especificada y emite una señal `teleported`. Puede proporcionar una llamada de retorno como segundo parámetro para determinar la validez de la posición de destino. Esta llamada de retorno recibe como parámetros el `CharacterBody2D` y la posición de destino de la función.
El callback `_default_valid_position_callback` siempre devuelve true cuando no se ha proporcionado un callable.

### change_speed_temporary(new_speed: float, time: float = DEFAULT_TEMPORARY_SPEED_TIME)
Cambia la velocidad máxima del personaje durante la duración especificada en segundos, estableciendo la nueva velocidad como la velocidad actual. Se emite la señal `temporary_speed_started`. 
Cuando el temporizador alcanza el tiempo de espera, se emite una señal `temporary_speed_finished`, y la velocidad máxima **vuelve al valor original** antes de la llamada a la función.

### has_available_dashes() -> bool
Devuelve un valor booleano que confirma si los dashes están disponibles

### can_dash(direction: Vector2 = Vector2.ZERO)
Devuelve un valor booleano que confirma si el carácter puede dahs a la dirección proporcionada como parámetro.

### dash(target_direction: Vector2 = facing_direction, speed_multiplier: float = DASH_SPEED_MULTIPLIER)
Comprueba internamente si puede ejecutar el dash, y si puede, se aplica un incremento de velocidad. La señal `dashed` se emite cuando el guión puede ser ejecutado.

### reset_dash_queue()
Fuerza una limpieza en la variable `dash_queue`. Esta función se utiliza internamente, pero también se puede aplicar manualmente en cualquier caso en el que se desee que los dashes vuelvan a estar disponibles.

## Señales
Desde este componente se pueden escuchar diversas señales que permiten reaccionar y realizar otras acciones, como mostrar animaciones o recopilar estadísticas.
- *max_speed_reached*
- *stopped*
- *knockback_received(direction: Vector2, power: float)*
- *temporary_speed_started(previous_speed: float, current_speed: float)* 
- *temporary_speed_finished signal teleported(from: Vector2, to: Vector2)* 
- *dashed(position: Vector2)* 
- *finished_dash(initial_position: Vector2, final_position: Vector2)* 
- *dash_free_from_cooldown(dash_position: Vector2, current_dash_queue: Array[Vector2])*
- *dash_restarted*

# 🚶🏽‍♀️Top-down Movement
Un juego top-down no necesita gravedad, por lo que suele ser más fácil de implementar. Aquí puedes encontrar un buen conjunto de movimiento.

## Como empezar
Por el momento este componente es heredado de [GodotParadiseMotion](#godotparadisemotion) por lo que tiene la misma funcionalidad que este.

⚠️Este componente sólo se puede utilizar en el nodo CharacterBody2D.

*Los juegos top-down no requieren funcionalidad extra ya que no son tan complejos en términos de movimiento en comparación con los juegos de plataformas, esta página será ampliada tan pronto como identifiquemos cualquier funcionalidad específica para este formato de juego.*

# 🦘 Platformer Movement
Los juegos de plataformas son una convergencia de numerosas mecánicas, lo que los convierte en una excelente oportunidad de aprendizaje para los principiantes.

## Como empezar
Este componente se hereda de [GodotParadiseMotion](#godotparadisemotion) por lo que tiene la misma funcionalidad que éste.
En esta ilustración, pretendemos desentrañar de forma exhaustiva la mecánica inherente a un juego de plataformas. El `GodotParadisePlatfomerMovement` simplifica estas complejidades, permitiéndonos centrarnos en los conceptos fundamentales de nuestro juego.

⚠️Este componente sólo se puede utilizar en CharacterBody2D nodo

## Parámetros exportados
Estos parámetros pueden modificarse para conseguir diferentes comportamientos. A continuación, explicamos el propósito de cada parámetro y su impacto en el componente.

### Gravity
El valor de gravedad que se aplica al personaje se calcula automáticamente sobre la variable `fall_gravity` explicada en la sección siguiente.
- Maximum fall velocity
- Default gravity suspend duration
- Defaul temporary gravity time

El valor de gravedad que se aplica al personaje es **automáticamente calculado sobre la variable** `fall_gravity` explicada en la sección [Jump](#jump) más abajo.

La gravedad dentro del componente puede ser invertida usando la función `invert_gravity()`. Esta inversión afecta al comportamiento de todas las funciones basadas en su activación. 

Por ejemplo, cuando se invierte la gravedad, **el eje y positivo se convierte en la dirección superior**, y el **eje y negativo se convierte en la dirección inferior.** Este cambio también actualiza la propiedad [the up_direction](https://docs.godotengine.org/en/stable/classes/class_characterbody3d.html#class-characterbody3d-property-up-direction).

El parámetro **Maximum Fall Velocity** define la velocidad máxima a la que puede caer el personaje. Esto afecta al valor máximo que puede alcanzar el componente vectorial `velocity.y`.

La **Default gravity suspend duration** es la duración por defecto en segundos durante la cual la gravedad permanece suspendida cuando se utiliza la función `suspend_gravity_for_duration(duration: float)`.

El **Default temporary gravity time** es la duración, en segundos, en la que la gravedad sera deshabilitada cuando se usa la función `change_gravity_temporary`

### Jump
Hemos construido la funcionalidad de salto inspirado en los siguientes videos:

- [Making a jump you can actually use in Godot](https://www.youtube.com/watch?v=IOe1aGY6hXA)
- [Math for Game Programmers: Building a Better Jump](https://www.youtube.com/watch?v=hG9SzQxaCm8&t=0s)

Esto nos permite crear un prototipo de mecanismo de salto acorde con lo que buscamos sin perder mucho tiempo.
- Jump height
- Jump time to peak
- Jump time to fall

La **jump height* es la altura que nuestro nodo puede alcanzar con un salto. Este valor se aplica a los cálculos internos y afecta al tiempo de salto hasta el pico y al tiempo de salto hasta la caída.

El **jump time to peak** es el tiempo que tarda el nodo en alcanzar la altura máxima.

El **jump time to fall** es el tiempo que tarda el nodo en llegar de nuevo al suelo

Cada vez que se cambia uno de estos valores, se realiza un recálculo de los siguientes parámetros internos:
- `jump velocity (calculated using jump height and time to peak)`
- `jump gravity (calculated using jump height and time to peak)`
- `fall gravity (calculated using jump height and time to fall)`

- ***Jump threshold***
- ***Allowed jumps***
- ***Height reduced by jump***
- ***jump_horizontal_boost***
- ***Coyote jump enabled***
- ***Coyote jump time window***

El **jump threshold** define un umbral de posición específico que gobierna si el nodo es elegible para realizar un salto. Esto ocurre **durante el descenso a medida que aumenta la velocidad.y.** Cuando casi se alcanza el valor predefinido y queda capacidad de salto, se puede realizar esta acción.

Los **allowed jumps** definen el número de saltos que puede realizar el nodo, ideal para implementar saltos dobles o triples.

La **height reduced by jump** se utiliza para reducir la efectividad de los siguientes saltos tras el primero y mejorar el equilibrio de la mecánica del juego. **Si no quieres aplicar ninguna reducción puedes dejarlo a cero.**

El **jump horizontal boost** proporciona un empuje adicional a lo largo del eje x durante un salto si es mayor que cero.

El **coyote jump** se basa en el famoso coyote de la serie de dibujos animados Correcaminos y permite saltar en una ventana de tiempo definida cuando el nodo está cayendo. Se utiliza para dar un margen de tiempo al jugador cuando llega al borde de una plataforma, por ejemplo.

La **coyote jump time window** establece la duración en la que esta funcionalidad está activa y te permite saltar mientras caes.

⚠️Durante la ventana de tiempo en la que se activa el `coyote jump`, la fuerza gravitatoria se desactiva.

### Wall jump
- Wall jump enabled
- Wall jump force
- Wall jump count as jump
- Maximum permisible wall angle

El **wall jump enabled** libera la posibilidad de saltar cuando el nodo colisiona con una pared.

Por defecto, la **wall jump force** es igual a la altura_de_salto. Sin embargo, si desea especificar una fuerza diferente para los saltos de pared, puede definir ese valor aquí.

El **wall jump count as jump** cuando se activa, cuenta este salto a la pila de saltos permitidos, es decir, si el nodo tiene 2 saltos permitidos, saltar a la pared y volver a saltar agotará sus intentos.

El **maximum permisible wall angle** define el ángulo de inclinación que puede tener la pared para ser considerada una pared, esto es útil para casos en los que la pared tiene una ligera inclinación y queremos usar un salto de pared.

### Wall slide
- Wall slide enabled
- Override gravity on wall slide
- Wall slide gravity

El **wall slide** habilitado permite al nodo deslizarse cuando está en una pared según el valor aplicado en gravedad de deslizamiento por pared hasta que alcanza el suelo. 

Cuando `override gravity on wall slide` es verdadero, anula la gravedad de caída y aplica en su lugar el valor `wall_slide_gravity_value`.

En este estado el nodo es capaz de realizar un salto de pared por lo que puede resultar útil para permitir al jugador calcular distancias o deslizarse hasta un punto determinado y saltar.

### Wall climb
- Wall climb enabled
- Disable gravity on wall climb
- Wall climb speed (Up and Down)
- Wall climb fatigue knockback
- Time can climb
- Time disabled when timeout

La opción **wall climb enabled** libera la posibilidad de escalar cuando el nodo se encuentra sobre una pared. Cuando esto ocurre, la gravedad y el deslizamiento por la pared se desactivan para moverse libremente en el eje y.

El **disable gravity on wall climb** desactiva la gravedad para que la escalada no tenga resistencia al subir. Este comportamiento está activado por defecto.

La **wall climb speed** define la potencia de escalada del personaje, por defecto es el mismo valor en ambas direcciones pero se puede cambiar y por ejemplo escalar hacia arriba a menor velocidad que hacia abajo.

La **wall climb fatigue knockback** es la fuerza aplicada cuando el tiempo que puede escalar alcanza el tiempo límite para simular la fatiga. Utiliza la dirección devuelta por `get_wall_normal()` como parámetro de la función `knockback()`. **Establece el valor a cero** para permitir la escalada ilimitada.

El **time can climb** define un rango de tiempo ventana donde el personaje puede escalar y cuando termina el personaje ya no puede escalar la pared.

El **time disabled when timeout** define el periodo en el que se desactivará la escalada de muros una vez alcanzado el tiempo de espera. **Establece un valor de cero** para desactivar este comportamiento.

## Variables accessibles
- *gravity_enabled: bool*
- *is_inverted_gravity: bool*
- *is_wall_sliding: bool*
- *is_wall_climbing: bool*
- *jump_queue: Array[Vector2]*
- *suspend_gravity_timer: Timer*
- *coyote_timer: Timer*
- *wall_climb_timer: Timer*

## Al entrar en el árbol de escenas
- Inicializa el `suspend gravity timer` para uso continuo.
- Se conecta a la señal `jumped`.
- Se conecta a la señal `wall jumped`.
- Se conecta a la señal `wall climb started`.

Cuando la función `jump()` es llamada y el personaje puede saltar las variables `is_wall_sliding` y `is_wall_climbing` se ponen a false.

Cuando se llama a la función `wall_jump()` las variables facing_direction y `last_faced_direction` se establecen con el valor del vector `wall_normal` y por último emite la señal `jumped`.

Cuando el valor de `is_wall_climbing` es true, desactiva la gravedad si la variable exportada `disable_gravity_on_wall_climb` es true e inicia el temporizador de escalada que simula la fatiga cuando alcanza el tiempo de espera.

## Funciones
### move()
Aplica velocidad al personaje. Esta función activa el `coyote jump` si detecta, basándose en los parámetros proporcionados, que el personaje estaba en el suelo y ya no lo está.

### acelera_horizontalmente(direction: Vector2, delta: float = get_physics_process_delta_time())
Modifica el valor de `velocity.x` y aplica aceleración si es mayor que cero. En esta función, el vector de dirección se normaliza, y el `last_faced_direction` se establece a este valor si no es un `Vector2.ZERO`.

### decelerate_horizontally(delta: float = get_physics_process_delta_time(), force_stop: bool = false)
Modifica la `velocity.x` Si `force_stop` es verdadero, la `velocity.x` se pone a cero bruscamente. Si el valor de `friction` es mayor que cero, la deceleración se aplica gradualmente usando el valor de `FRICTION`.

### get_gravity() -> float
Devuelve la fuerza de gravedad actual que se está aplicando, que es `gravity_jump` o `gravity_fall`, dependiendo del signo de `velocity.y`, teniendo en cuenta si la gravedad está invertida.

### apply_gravity(delta: float = get_physics_process_delta_time())
Si `gravity_enabled` es verdadero, esta función aplica el valor obtenido de la función `get_gravity()` a `velocity.y`. También considera si la gravedad está invertida y recupera el valor de `fall_gravity` teniendo en cuenta la velocidad máxima de caída.

### invert_gravity()
Invierte la gravedad basándose en el valor actual de `gravity_enabled`, cambiándolo al estado opuesto. Esta llamada emite la señal `inverted_gravity(inverted: bool)`.

### suspend_gravity_for_duration(duration: float)
Desactiva la gravedad durante la duración especificada en segundos y la vuelve a activar cuando se alcanza el tiempo de espera.

### is_withing_jump_threshold() -> bool
Esta función devuelve un valor booleano que indica si la `position.y` del personaje está dentro del umbral válido definido por la variable `jump_threshold`.

### is_falling() -> bool
Devuelve si, con los valores actuales de los componentes, el nodo está cayendo. Realiza las siguientes comprobaciones:
- El personaje no está en el suelo
- La velocidad.y es mayor que cero *(velocidad.y menor que cero cuando la gravedad está invertida)*
- La gravedad está activada

### can_jump() -> bool
Devuelve si, con los valores actuales de los componentes, el personaje puede saltar. Realiza las siguientes comprobaciones:
1. Comprueba si hay saltos disponibles para realizar.
2. Comprueba si el `coyote jump` está activo y habilitado en el componente.
3. Comprueba si el personaje está dentro del umbral de salto definido en la variable exportada `jump_velocity_threshold`.

Si hay saltos disponibles, siempre devuelve verdadero. En caso contrario, realiza las otras dos comprobaciones para confirmar si se puede ejecutar el salto.

### can_wall_jump() -> bool
Devuelve si, con los valores actuales de los componentes, el personaje puede realizar un salto de pared. Esencialmente comprueba si el personaje está en contacto con una pared y si hay saltos disponibles para ejecutar.

### jump(height: float = jump_height, bypass: bool = false)
Aplica un salto modificando la `velocity.y` con el valor `jump_velocity`. Si el valor de `bypass` es verdadero, no se llama a la función `can_jump()` para determinar si se puede ejecutar el salto, sino que se fuerza el salto.
Si el personaje puede saltar, la posición de origen global del salto se añade a la cola de saltos y se emite la señal `jumped`.

### shorten_jump()
Esta función reduce la `velocity.y` mientras se está produciendo un salto. Su uso principal es ajustar el salto basado en la entrada del jugador.
Aquí puedes ver un ejemplo en acción:

```py
if Input.is_action_just_pressed("jump"):
	godot_platformer_movement.jump()

if Input.is_action_just_released("jump"):
	godot_platformer_movement.shorten_jump()
```
### wall_jump(direction: Vector2, height: float = jump_height)
Este es un paso preliminar antes de llamar a la función `jump()`, donde se especifica una dirección para el salto del personaje. Si la variable `wall_jump_count_as_jump` se establece en true, este salto también se añade a la `jump_queue`.

### can_wall_slide() -> bool
Devuelve si, con los valores actuales de los componentes, el personaje puede realizar un deslizamiento por la pared. Esencialmente comprueba si el personaje está en contacto con una pared y `wall_slide_enabled` está a true.

### wall_slide(delta: float = get_physics_process_delta_time())
Modifica el valor de `velocity.y` cuando el personaje está en la pared para simular un deslizamiento teniendo en cuenta si la gravedad está invertida. si `override_gravity_on_wall_slide` está a true, aplica el valor de gravedad de `wall_slide_gravity`.

### can_wall_climb() -> bool
Devuelve si, con los valores actuales de los componentes, el personaje puede escalar una pared. Esencialmente comprueba si el personaje está en contacto con una pared y `wall_climb_enabled` está a true.

### wall_climb(direction: Vector2)
Esta función recibe una dirección pero solo `Vector2.UP` y `Vector2.DOWN` activan el movimiento de escalada. También tiene en cuenta si la gravedad está invertida. Cuando se llama a esta función, la gravedad está desactivada.

### reset_jump_queue()
Esta función se utiliza principalmente a nivel interno, pero puede ser llamada manualmente para iniciar un reinicio de saltos. Si la variable `jump_queue` no está vacía, emite la señal `jumps_restarted`.

## Señales
- *gravity_changed(enabled: bool)* 
- *inverted_gravity(inverted: bool)* 
- *temporary_gravity_started(previous_gravity: float, current_gravity: float)* 
- *temporary_gravity_finished
- *jumped(position: Vector2)* 
- *wall_jumped(normal: Vector2, position: Vector2)* 
- *allowed_jumps_reached(jump_positions: Array[Vector2])* 
- *jumps_restarted* 
- *coyote_time_started* 
- *coyote_time_finished* 
- *wall_slide_started*
- *wall_slide_finished* 
- *wall_climb_started* 
- *wall_climb_finished*

# 🏁Grid Movement
Moverse en una cuadrícula nunca ha sido tan fácil; utiliza este componente para acceder a esta funcionalidad.

## Como empezar
Este componente no hereda de [GodotParadiseMotion][#godot-paradise-motion], por lo que no tiene acceso a esta funcionalidad. El movimiento de grid requiere su propia lógica dedicada.

⚠️Este componente sólo puede utilizarse en el nodo CharacterBody2D.

## Una vez en el árbol de escena
Cuando este nodo entra en el árbol de escena ocurren varias cosas:
- Ajusta la posición del cuerpo para alinearlo con el `TILE_SIZE` y evitar que permanezca en una posición inválida.
- Se conecta a la señal `moved`
- Se conecta a la señal `flushed_recorded_grid_movements`

Cuando se ejecuta la función `move()` y emite la señal moved, el componente realiza los siguientes cálculos:

1. Registra el movimiento en el array `recorded_grid_movements` si no se ha superado el valor máximo de movimientos de grid registrados.
2. Incrementa el `movements_count` en 1.
3. Emite la señal `movements_completed` cuando `movements_count` supera el valor `emit_signal_every_n_movements`. El `movements_count` se pone a cero.
4. Si la matriz `recorded_grid_movements` supera el valor `max_recorded_grid_movement`, esta matriz se borra y se emite la señal `flushed_recorded_grid_movements`.

## Parámetros exportados
- Tile size
- Max recorded grid movements
- Emit signal every 'n' movements

El **Tile size** este movimiento basado en la grid, recomendamos que sea múltiplo de 2 pero no pasa nada si usas otro tamaño de baldosa.

El **Max recorded grid movements** es el número de movimientos de la grid grabados antes de ser borrados *(poner a 0 para mantenerlos indefinidamente)*

El **emit signal every n movements** es el número de movimientos a realizar antes de emitir una señal de notificación. La señal emitida es `movements_completed`.


## Variables accessibles
- body: CharacterBody2D
- recorded_grid_movements: Array[Vector2]
- movements_count: int

## Funciones
El `_default_valid_position_callback` es una función interna que siempre devuelve true y mantiene la ejecución del movimiento cuando no se pasa ninguna función personalizada como callback.

### move(direction: Vector2, valid_position_callback: Callable = _default_valid_position_callback)
La función fundamental que mueve el carácter dentro de una grid. Acepta una `direction` y una función `callback`, que puede utilizarse para implementar funcionalidades personalizadas para detectar posiciones válidas en el grid, entre otras cosas.

- Si el callback devuelve true el movimiento se realiza y emite la señal `moved`.
- Si el callback devuelve false el movimiento no se ha realizado y emite la señal `move_not_valid`.

### follow_path(moves: Array[Vector2], valid_position_callback: Callable = _default_valid_position_callback)
Ejecuta una serie de movimientos secuenciales, utilizando internamente la función `move()`.

### teleport_to(target_position: Vector2, valid_position_callback: Callable = _default_valid_position_callback)
Se mueve instantáneamente a la posición objetivo. El `_default_valid_position_callback` siempre devuelve true

### snap_body_position(body: CharacterBody2D)
Ajusta el personaje para alinearlo con un vector válido cercano que mantenga la consistencia con el tamaño del mosaico.

### snap_position(position: Vector2) -> Vector2
Similar a la descripción anterior, pero utilizando el parámetro de una posición específica.

## Señales
La estructura del parámetro `result` esta definido como:
```py
result := {
	"from": original_position, 
	"to": next_position, 
	"direction": direction
}
	
```
- *moved(result: Dictionary)* 
- *move_not_valid(result: Dictionary)*
- *flushed_recorded_grid_movements(recorded_movements: Array[Dictionary])*
- *movements_completed(movements: Array[Dictionary])*


# ✌️Eres bienvenido a
- [Give feedback](https://github.com/GodotParadise/Motion2D/pulls)
- [Suggest improvements](https://github.com/GodotParadise/Motion2D/issues/new?assignees=BananaHolograma&labels=enhancement&template=feature_request.md&title=)
- [Bug report](https://github.com/GodotParadise/Motion2D/issues/new?assignees=BananaHolograma&labels=bug%2C+task&template=bug_report.md&title=)

GodotParadise esta disponible de forma gratuita.

Si estas agradecido por lo que hacemos, por favor, considera hacer una donación. Desarrollar los plugins y contenidos de GodotParadise requiere una gran cantidad de tiempo y conocimiento, especialmente cuando se trata de Godot. Incluso 1€ es muy apreciado y demuestra que te importa. ¡Muchas Gracias!

- - -
# 🤝Normas de contribución
**¡Gracias por tu interes en GodotParadise!**

Para garantizar un proceso de contribución fluido y colaborativo, revise nuestras [directrices de contribución](https://github.com/godotparadise/Motion2D/blob/main/CONTRIBUTING.md) antes de empezar. Estas directrices describen las normas y expectativas que mantenemos en este proyecto.

**📓Código de conducta:** En este proyecto nos adherimos estrictamente al [Código de conducta de Godot](https://godotengine.org/code-of-conduct/). Como colaborador, es importante respetar y seguir este código para mantener una comunidad positiva e inclusiva.
- - -


# 📇Contáctanos
Si has construido un proyecto, demo, script o algun otro ejemplo usando nuestros plugins haznoslo saber y podemos publicarlo en este repositorio para ayudarnos a mejorar y saber que lo que hacemos es útil.
