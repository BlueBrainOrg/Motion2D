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

[![es](https://img.shields.io/badge/lang-es-yellow.svg)](https://github.com/GodotParadise/Motion2D/blob/main/locale/README.es-ES.md)

- - -

Is a versatile and customizable module designed to streamline 2D Nodes movement in Godot Engine.

Whether top-down, platformer or grid-based, this component offers the functionality you need without having to rewrite it yourself for each project. The movement can be made flexible with the exposed parameters and contains an internal API that facilitates the most common actions that can occur in a 2D game.

- [Requirements](#requirements)
- [✨Installation](#installation)
	- [Automatic (Recommended)](#automatic-recommended)
	- [Manual](#manual)
	- [CSharp version](#csharp-version)
- [🏃🏾GodotParadiseMotion](#godotparadisemotion)
	- [Exported parameters](#exported-parameters)
		- [Speed](#speed)
		- [Modifiers](#modifiers)
		- [Dash](#dash)
		- [Optional Signals](#optional-signals)
	- [Accessible normal variables](#accessible-normal-variables)
	- [Upon entered the scene tree:](#upon-entered-the-scene-tree)
	- [Chaining methods](#chaining-methods)
	- [Functions](#functions)
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
		- [Signals](#signals)
- [🚶🏽‍♀️Top-down Movement](#️top-down-movement)
	- [Getting Started](#getting-started)
- [🦘 Platformer Movement](#-platformer-movement)
	- [Exported parameters](#exported-parameters-1)
		- [Gravity](#gravity)
		- [Jump](#jump)
		- [Wall jump](#wall-jump)
		- [Wall slide](#wall-slide)
		- [Wall climb](#wall-climb)
	- [Accessible Normal Variables](#accessible-normal-variables-1)
	- [Upon entering the scene tree](#upon-entering-the-scene-tree)
	- [Functions](#functions-1)
		- [move()](#move-1)
		- [accelerate\_horizontally(direction: Vector2, delta: float = get\_physics\_process\_delta\_time())](#accelerate_horizontallydirection-vector2-delta-float--get_physics_process_delta_time)
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
	- [Signals](#signals-1)
- [🏁Grid Movement](#grid-movement)
	- [Getting Started](#getting-started-1)
	- [Once upon the scene tree](#once-upon-the-scene-tree)
	- [Exported parameters](#exported-parameters-2)
	- [Accessible normal parameters](#accessible-normal-parameters)
	- [Functions](#functions-2)
		- [move(direction: Vector2, valid\_position\_callback: Callable = \_default\_valid\_position\_callback)](#movedirection-vector2-valid_position_callback-callable--_default_valid_position_callback)
		- [follow\_path(moves: Array\[Vector2\], valid\_position\_callback: Callable = \_default\_valid\_position\_callback)](#follow_pathmoves-arrayvector2-valid_position_callback-callable--_default_valid_position_callback)
		- [teleport\_to(target\_position: Vector2, valid\_position\_callback: Callable = \_default\_valid\_position\_callback)](#teleport_totarget_position-vector2-valid_position_callback-callable--_default_valid_position_callback)
		- [snap\_body\_position(body: CharacterBody2D)](#snap_body_positionbody-characterbody2d)
		- [snap\_position(position: Vector2) -\> Vector2](#snap_positionposition-vector2---vector2)
	- [Signals](#signals-2)
- [✌️You are welcome to](#️you-are-welcome-to)
- [🤝Contribution guidelines](#contribution-guidelines)
- [📇Contact us](#contact-us)

# Requirements
📢 We don't currently give support to Godot 3+ as we focus on future stable versions from version 4 onwards
* Godot 4+

# ✨Installation
## Automatic (Recommended)
You can download this plugin from the official [Godot asset library](https://godotengine.org/asset-library/asset/2039) using the AssetLib tab in your godot editor. Once installed, you're ready to get started
##  Manual 
To manually install the plugin, create an **"addons"** folder at the root of your Godot project and then download the contents from the **"addons"** folder of this repository
## CSharp version
This plugin has also been written in C# and you can find it on [Motion2D-CSharp](https://github.com/GodotParadise/Motion2D-CSharp)


# 🏃🏾GodotParadiseMotion
⚠️ This is not a component intended for direct use. It serves as a foundational component for building others and contains common functionality that can be utilized by all.

This is the class where all the nodes extends from *(except the grid movement)* and you have access to all this variables and functions.

To use the components just add as childs in the scene looking for paradise in the editor:
![paradise-motion-nodes](https://github.com/GodotParadise/Motion2D/blob/main/images/paradise_motion_childs.png)

## Exported parameters
These parameters can be modified to achieve different behaviors. Below, we explain the purpose of each parameter and its impact on the component

### Speed
- Max Speed
- Acceleration
- Friction
- Air friction horizontal factor
- Air friction vertical factor

The **max speed** as the name say, defines the maximum reachable limit of speed that will be apply to the velocity.

The **acceleration** makes smoother to reach the maximum speed if you want to increase the juiciness of the movement. In case you don't want it just assign a zero value to it and the node will reach the maximum speed immediately

The **friction** brakes the node smoothly to give a sliding effect when changing directions or terminating motion. In case you don't want it just assign a zero value to it and the node will not decelerate using friction.

The **air friction** factor simulates friction for the character when in the air. This friction needs to be manually applied since it's not directly used within the component. It provides additional functionality to simulate air friction when necessary. The values of this factor apply horizontally to `velocity.x` and vertically to `velocity.y`

### Modifiers
This exported group is saved for the various modifiers that may be temporarily applied to the existing parameters
- Default temporary speed time

The **Default temporary speed time** In seconds, the amount of time a speed modification will endure. This value is being used on the function `change_speed_temporary()`

### Dash
- Dash speed multiplier
- Times can dash
- Dash Cooldown
- Dash duration
- Can dash while dashing
- 
The **dash speed multiplier** is applied on maximum speed value to achieve the dash effect and move immediately the node.

The **times can dash** defines the number of times a dash can be performed in a row after finishing the previous one.

The **dash cooldown** is the recovery time to use the dash again, this applies individually even if several can be performed. Each of the dashes has its own cooldown.

The **dash duration** turn off the gravity the amount in seconds defined to avoid unwanted diagonal directions to the ground when is dashing.

The **can dash while dashing** parameter determines whether the character can initiate another dash while already in the dashing state. It is enabled by default. When this parameter is set to false, the character must wait for the first dash to finish before performing a second one.

### Optional Signals
This group collect the signals that can affect the performance because of the number of times they can be executed in context. From here, you can enable or disable them:
- Max speed reached signal
- Stopped signal
- Knockback received signal *(true by default)*
  
## Accessible normal variables
- body: CharacterBody2D
- original_max_speed: float *(This value is used to return to MAX_SPEED after a modifier has been applied and this ends)*
- velocity: Vector2
- facing_direction: Vector2
- last_faced_direction: Vector2
- temporary_speed_timer: Timer
- dash_duration_timer: Timer
- dash_queue: Array[Vector2]
- is_dashing: bool

## Upon entered the scene tree:
When this node enter the scene tree happens multiple things:
- Creates the `coyote timer` that it will be used when coyote jump is enabled
- Creates the `dash duration timer` that disables gravity the time amount from the value `dash_gravity_time_disabled`

## Chaining methods
Almost every method makes it return to itself *(except those functions that return other values)* so you can accomplish thinks like the following:
```py
GodotParadisePlatformerMovement.apply_gravity()\
     .wall_climb(input_direction)\
     .wall_slide()\
     .move()
```

## Functions
### move()
The basic [move_and_slide](https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html#class-characterbody2d-method-move-and-slide) from godot engine, applies the velocity to the CharacterBody2D

### move_and_collide(delta: float = get_physics_process_delta_time()) -> KinematicCollision2D
Same as above but using [move_and_collide](https://docs.godotengine.org/en/stable/classes/class_physicsbody2d.html#class-physicsbody2d-method-move-and-collide), the motion vector used internally is the `body.velocity * delta`

### accelerate(direction: Vector2, delta: float = get_physics_process_delta_time())
When the `ACCELERATION` value is greater than zero, acceleration is applied to the movement. When this value is zero, applies the speed as constant.
If enabled, the `max_speed_reached` signal is emitted when the velocity reaches the `MAX_SPEED` value.

### decelerate(delta: float = get_physics_process_delta_time(), force_stop: bool = false)
The velocity is decelerated until it reaches `Vector2.ZERO` when the `FRICTION` value is provided. In the opposite case, the velocity is set to `Vector2.ZERO` instantaneously. This deceleration can be forced using the `force_stop` parameter.
When the velocity reaches `Vector2.ZERO`, and the `stopped` signal is enabled, it is emitted.

### accelerate_to_position(position: Vector2)
Accelerate to position defined as parameter, uses `accelerate()` function internally.

### apply_air_friction_horizontal(friction_factor: float = AIR_FRICTION_HORIZONTAL_FACTOR)
Apply horizontal air friction to the `velocity.x` when this value is greater than zero. The character does not need to return `is_on_floor()` and `is_on_wall()` to true.

### apply_air_friction_vertical(friction_factor: float = AIR_FRICTION_VERTICAL_FACTOR)
Apply vertical air friction to the `velocity.y` when this value is greater than zero. The character does not need to return `is_on_floor()` and `is_on_wall()` to true

### knockback(direction: Vector2, power: float)
Executes a **knockback** on the character with the provided direction and force parameters for this function. A `knockback_received` signal is emitted

### teleport_to_position(position: Vector2, valid_position_callback: Callable = _default_valid_position_callback)
This function immediately relocates the character to the specified position and emits a `teleported` signal. You can provide a callback as the second parameter to determine the validity of the target position. This callback receives both the `CharacterBody2D` and the target position of the function as parameters.
The `_default_valid_position_callback` always return true when no callable has been provided.

### change_speed_temporary(new_speed: float, time: float = DEFAULT_TEMPORARY_SPEED_TIME)
Change the maximum speed of the character over the specified duration in seconds, setting the new speed as the current speed. `temporary_speed_started` signal is emitted. 
When the timer reaches the timeout, a `temporary_speed_finished` signal is emitted, and the maximum speed **returns to the original value** before the function call.

### has_available_dashes() -> bool
Returns a boolean value confirming whether dashes are available

### can_dash(direction: Vector2 = Vector2.ZERO)
Returns a boolean value confirming if the character can dahs to the direction provided as parameter.

### dash(target_direction: Vector2 = facing_direction, speed_multiplier: float = DASH_SPEED_MULTIPLIER)
It internally checks whether it can execute the dash, and if it can, a speed boost is applied. The `dashed` signal is emitted when the dash could be executed.

### reset_dash_queue()
Force a clear on the `dash_queue` variable. This function is used internally but can also be applied manually in any case where you want to make dashes available again.

### Signals
You can listen a variety of signals from this component that allow you to react and perform other actions such as displaying animations or collecting statistics.
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
A top-down game does not need gravity so it is usually easier to implement. Here you can find a good set of movement

## Getting Started
At the moment this component is inherited from [GodotParadiseMotion](#godotparadisemotion) so it has the same functionality as it.

⚠️This component can only be used on CharacterBody2D node.

*Top-down games do not require extra functionality as they are not as complex in terms of movement compared to platform games, this page will be extended as soon as we identify any functionality specific to this game format.*

# 🦘 Platformer Movement
Platformer games are a convergence of numerous mechanics, making them an excellent learning opportunity for beginners.

Getting started
This component is inherited from [GodotParadiseMotion](#godotparadisemotion) so it has the same functionality as it.
In this illustration, we aim to comprehensively unravel the mechanics inherent in a platformer. The `GodotParadisePlatfomerMovement` simplifies these intricacies, allowing us to center our focus on the fundamental concepts of our game.

⚠️This component can only be used on CharacterBody2D node

## Exported parameters
These parameters can be modified to achieve different behaviors. Below, we explain the purpose of each parameter and its impact on the component.

### Gravity
The gravity value that applies to the character is automatically calculated on the variable `fall_gravity` explained in the section below.
- Maximum fall velocity
- Default gravity suspend duration
- Defaul temporary gravity time


The gravity value that applies to the character is **automatically calculated on the variable** `fall_gravity` explained in the [Jump](#jump) section below.

The gravity inside the component can be inverted using the `invert_gravity()` function. This inversion affects the behavior of all functions based on its activation. 

For instance, when gravity is reversed, **the positive y-axis becomes the upper direction**, and the **negative y-axis becomes the lower direction.** This change also updates [the up_direction](https://docs.godotengine.org/en/stable/classes/class_characterbody3d.html#class-characterbody3d-property-up-direction) property.

The **Maximum Fall Velocity** parameter defines the maximum velocity at which the character can fall. This affects the maximum value `velocity.y` vector component can reach.

The **Default gravity suspend duration** is the default duration in seconds for which gravity remains suspended when the `suspend_gravity_for_duration(duration: float)` function is used.

The **Default temporary gravity time** is the duration, in seconds, for which gravity will be disabled when the `change_gravity_temporary` function is used.

### Jump
We build the jump functionality inspired by the following videos:

- [Making a jump you can actually use in Godot](https://www.youtube.com/watch?v=IOe1aGY6hXA)
- [Math for Game Programmers: Building a Better Jump](https://www.youtube.com/watch?v=hG9SzQxaCm8&t=0s)

This allows us to prototype a jumping mechanism according to what we are looking for without wasting a lot of time.
- Jump height
- Jump time to peak
- Jump time to fall

The **jump height** is the height that our node can reach with a jump. This value is applied to internal calculations and affects the jump time to peak and jump time to fall.

The **jump time to peak** is the time the node takes to reach maximum height

The **jump time to fall** is the time the node takes to reach the floor again

Everytime one of this value are changed, a recalculation it's run on the following internal parameters:
- `jump velocity (calculated using jump height and time to peak)`
- `jump gravity (calculated using jump height and time to peak)`
- `fall gravity (calculated using jump height and time to fall)`

- ***Jump threshold***
- ***Allowed jumps***
- ***Height reduced by jump***
- ***jump_horizontal_boost***
- ***Coyote jump enabled***
- ***Coyote jump time window***

The **jump threshold** defines a specific position threshold that governs whether the node is eligible to perform a jump. This occurs **during descent as velocity.y incrementally builds.** When the predefined value is almost reached and jump capability remains, this action can be taken.

The **allowed jumps** define the number of jumps the node can do, ideal for implementing double or triple jumps.

The **height reduced by jump** is used to reduce the effectiveness of the following jumps after the first one and improve the balance of the game mechanics. **If you don't want to apply any reduction you can leave it at zero.**

The **jump horizontal boost** provides an additional thrust along the x-axis during a jump if it is greater than zero.

The **coyote jump** is based on the famous coyote from the Roadrunner cartoon series and allows you to jump in a defined time window when the node is falling. It is used to give a time margin to the player when he reaches the edge of a platform for example.

The **coyote jump time window** set the duration this functionality is active and you are allowed to jump while falling.

⚠️During the time window when the `coyote jump` is activated, the gravitational force is disabled.

### Wall jump
- Wall jump enabled
- Wall jump force
- Wall jump count as jump
- Maximum permisible wall angle

The **wall jump enabled** releases the possibility of jumping when the node collides with a wall.

By default, the **wall jump force** is equal to the jump_height. However, if you wish to specify a different force for wall jumps, you can define that value here.

The **wall jump count as jump** when activated, counts this jump to the stack of allowed jumps, i.e. if the node has 2 allowed jumps, jumping to the wall and jumping again will exhaust its attempts.

The **maximum permisible wall angle** defines the the angle of inclination that the wall can have to be considered a wall, this is useful for cases in which the wall has a slight inclination and we want to use a wall jump.


### Wall slide
- Wall slide enabled
- Override gravity on wall slide
- Wall slide gravity

The **wall slide** enabled allows the node to slide when on a wall according to the value applied on wall slide gravity until it reaches the floor. 

When `override gravity on wall slide` is true, overrides the fall gravity and apply instead the `wall_slide_gravity_value`.

In this state the node is able to do a wall jump so it can come in handy to allow the player to calculate distances or to glide to a certain point and jump.

### Wall climb
- Wall climb enabled
- Disable gravity on wall climb
- Wall climb speed (Up and Down)
- Wall climb fatigue knockback
- Time can climb
- Time disabled when timeout

The **wall climb enabled** releases the possibility of climb when the node is on a wall. When this happens, the gravity and wall sliding are disabled to move freely in the y-axis.

The **disable gravity on wall climb** disables gravity so that climbing has no resistance when going up. This behaviour is activated by default.

The **wall climb speed** defines the power of climb for the character, by default is the same value on both directions but can be changed and e.g. climb upwards at a slower speed than climbing downwards.

The **wall climb fatigue knockback** is the force applied when the time it can climb reachs the timeout to simulate fatigue. Uses the direction returned from `get_wall_normal()` as parameter to `knockback()` function. **Set value to zero** to to allow unlimited climbing

The **time can climb** defines a window time range where the character can climb and when it's finished the character can no longer climb the wall.

The **time disabled when timeout** defines the the period in which the wall climb will be disabled after the timeout has been reached. **Set a value of zero** to disable this behaviour.

## Accessible Normal Variables
- *gravity_enabled: bool*
- *is_inverted_gravity: bool*
- *is_wall_sliding: bool*
- *is_wall_climbing: bool*
- *jump_queue: Array[Vector2]*
- *suspend_gravity_timer: Timer*
- *coyote_timer: Timer*
- *wall_climb_timer: Timer*

## Upon entering the scene tree
- Initializes the `suspend gravity timer` for continuous use.
- Connects to the `jumped` signal.
- Connects to the `wall jumped` signal.
- Connects to the `wall climb started` signal

When the `jump()` function it's called and the character can jump the variables `is_wall_sliding` and `is_wall_climbing` are set to false.

When the `wall_jump()` function it's called the variables facing_direction and `last_faced_direction` are set with the `wall_normal` vector value and lastly it emits the `jumped` signal.

When the `is_wall_climbing` is set to true, disables the gravity if the exported variable `disable_gravity_on_wall_climb` is true and start the wall climb timer that simulates fatigue when it reaches timeout 

## Functions

### move()
Applies velocity to the character. This function activates the `coyote jump` if it detects, based on the provided parameters, that the character was on the ground and is no longer.

### accelerate_horizontally(direction: Vector2, delta: float = get_physics_process_delta_time())
Modifies the `velocity.x` value and apply acceleration if it's greater than zero. In this function, the direction vector is normalized, and the `last_faced_direction` is set to this value if it's not a `Vector2.ZERO`.

### decelerate_horizontally(delta: float = get_physics_process_delta_time(), force_stop: bool = false)
Modifies the `velocity.x` If `force_stop` is true, the `velocity.x` is set to zero abruptly. If the `friction` value is greater than zero, deceleration is applied gradually using the `FRICTION` value.

### get_gravity() -> float
Returns the current gravity force being applied, which is either `jump_gravity` or `fall_gravity`, depending on the sign of `velocity.y`, taking into account whether gravity is inverted.

### apply_gravity(delta: float = get_physics_process_delta_time())
If `gravity_enabled` is set to true, this function applies the value obtained from the `get_gravity()` function to `velocity.y`. It also considers whether gravity is inverted and retrieves the `fall_gravity` value while taking into account the maximum fall velocity.

### invert_gravity()
Inverts gravity based on the current value of `gravity_enabled`, switching it to the opposite state. This call emits the signal `inverted_gravity(inverted: bool)`

### suspend_gravity_for_duration(duration: float)
Disables gravity for the specified duration in seconds and re-enables it when the timeout is reached.

### is_withing_jump_threshold() -> bool
This function returns a boolean value indicating whether the character's `position.y` is within the valid threshold defined by the `jump_threshold` variable.

### is_falling() -> bool
Returns whether, with the current component values, the character is falling. It performs the following checks:
- Character is not on floor
- The velocity.y is greater than zero *(velocity.y less than zero when gravity is inverted)*
- Gravity is enabled

### can_jump() -> bool
Returns whether, with the current component values, the character can jump. It performs the following checks:
1. Checks if there are available jumps to perform.
2. Checks if the `Coyote jump` is active and enabled in the component.
3. Checks if the character is within the jump threshold defined in the exported variable `jump_velocity_threshold`.

If there are available jumps, it always returns true. Otherwise, it performs the other two checks to confirm if the jump can be executed.

### can_wall_jump() -> bool
Returns whether, with the current component values, the character can perform a wall jump. It essentially checks if the character is in contact with a wall and if there are available jumps to execute.

### jump(height: float = jump_height, bypass: bool = false)
Applies a jump by modifying the `velocity.y` with the `jump_velocity` value. If `bypass` is set to true, the `can_jump()` function is not called to determine if the jump can be executed; it essentially forces a jump.
If the character can jump, the global origin position of the jump is also added to the `jump_queue`, and the `jumped` signal is emitted.

### shorten_jump()
This function reduces the `velocity.y` while an actual jump is in progress. Its primary use is to adjust the jump based on the player's input.
Here, you can observe an example in action:

```py
if Input.is_action_just_pressed("jump"):
	godot_platformer_movement.jump()

if Input.is_action_just_released("jump"):
	godot_platformer_movement.shorten_jump()
```

### wall_jump(direction: Vector2, height: float = jump_height)
This is a preliminary step before calling the `jump()` function, where a direction for the character's jump is specified. By default, wall_normal is used as the direction. if `wall_jump_count_as_jump` variable is set to true, this jump is also added to the `jump_queue`

### can_wall_slide() -> bool
Returns whether, with the current component values, the character can perform a wall slide. It essentially checks if the character is in contact with a wall and `wall_slide_enabled` is set to true.

### wall_slide(delta: float = get_physics_process_delta_time())
Modify the value from `velocity.y` when the character is on the wall to simulate a sliding taking into account whether gravity is inverted. if `override_gravity_on_wall_slide` is set to true, applies the gravity value from `wall_slide_gravity`

### can_wall_climb() -> bool
Returns whether, with the current component values, the character can perform a wall climb. It essentially checks if the character is in contact with a wall and `wall_climb_enabled` is set to true.

### wall_climb(direction: Vector2)
This function receives a direction but only `Vector2.UP` and `Vector2.DOWN` trigger the climb movement. This also take into account whether gravity is inverted. When this function is being called, the gravity is disabled

### reset_jump_queue()
This function is primarily used internally but can be manually called to initiate a jump reset. If the `jump_queue` variable is not empty, it emits the `jumps_restarted` signal.

## Signals
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
Moving in a grid has never been easier; use this component to access this functionality.

## Getting Started
This component does not inherit from [GodotParadiseMotion][#godot-paradise-motion], so it does not have access to this functionality. Grid movement requires its own dedicated logic.

⚠️This component can only be used on CharacterBody2D node.

## Once upon the scene tree
When this node enter the scene tree happens multiple things:
- Snap the body position to align with the `TILE_SIZE` and prevent it from remaining in an invalid position.
- Connects to `moved` signal
- Connects to `flushed_recorded_grid_movements` signal

When the `move()` function is executed and emits the moved signal, the component performs the following calculations:

1. Records the movement in the `recorded_grid_movements` array if the maximum recorded grid movements value has not been exceeded.
2. Increments the `movements_count` by 1.
3. Emits the `movements_completed` signal when `movements_count` exceeds the `emit_signal_every_n_movements` value. The `movements_count` is then reset to zero.
4. If the `recorded_grid_movements` array exceeds the `max_recorded_grid_movement` value, this array is cleared, and the `flushed_recorded_grid_movements` signal is emitted.

## Exported parameters
- Tile size
- Max recorded grid movements
- Emit signal every 'n' movements

The **Tile size** this grid based movement, we recommend to be multiples of 2 but nothing happens if you used another tile size dimensions.

The **Max recorded grid movements** is the number of grid movements recorded before deletion *(set to 0 to keep them indefinitely)*

The **emit signal every n movements** is the number of movements to be performed before emitting a signal notification. The signal emitted is `movements_completed`

## Accessible normal parameters
- body: CharacterBody2D
- recorded_grid_movements: Array[Vector2]
- movements_count: int

## Functions
The `_default_valid_position_callback` is an internal function that always return true and keep the execution of movement when no custom function is passed as callback.

### move(direction: Vector2, valid_position_callback: Callable = _default_valid_position_callback)
The fundamental function that moves the character within a grid. It accepts a `direction` and a `callback` function, which can be used to implement custom functionality for detecting valid grid positions, among other things.

- If the callback returns true the movement is done and emit the signal `moved`
- If the callback returns false the movement is not done and emit the signal `move_not_valid`
  
### follow_path(moves: Array[Vector2], valid_position_callback: Callable = _default_valid_position_callback)
Executes a series of sequential moves, utilizing the `move()` function internally.

### teleport_to(target_position: Vector2, valid_position_callback: Callable = _default_valid_position_callback)
Moves instantly to the target position. The `_default_valid_position_callback` always return true

### snap_body_position(body: CharacterBody2D)
Snap the character to align with a nearby valid vector that maintains consistency with the tile size.

### snap_position(position: Vector2) -> Vector2
Similar to the previous description, but using the parameter of a specific position.

## Signals
The result parameter is defined on the next structure:
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

# ✌️You are welcome to
- [Give feedback](https://github.com/GodotParadise/Motion2D/pulls)
- [Suggest improvements](https://github.com/GodotParadise/Motion2D/issues/new?assignees=BananaHolograma&labels=enhancement&template=feature_request.md&title=)
- [Bug report](https://github.com/GodotParadise/Motion2D/issues/new?assignees=BananaHolograma&labels=bug%2C+task&template=bug_report.md&title=)

GodotParadise is available for free.

If you're grateful for what we're doing, please consider a donation. Developing GodotParadise requires massive amount of time and knowledge, especially when it comes to Godot. Even $1 is highly appreciated and shows that you care. Thank you!

- - -
# 🤝Contribution guidelines
**Thank you for your interest in Godot Paradise!**

To ensure a smooth and collaborative contribution process, please review our [contribution guidelines](https://github.com/GodotParadise/Motion2D/blob/main/CONTRIBUTING.md) before getting started. These guidelines outline the standards and expectations we uphold in this project.

**📓Code of Conduct:** We strictly adhere to the [Godot code of conduct](https://godotengine.org/code-of-conduct/) in this project. As a contributor, it is important to respect and follow this code to maintain a positive and inclusive community.

- - -

# 📇Contact us
If you have built a project, demo, script or example with this plugin let us know and we can publish it here in the repository to help us to improve and to know that what we do is useful.
