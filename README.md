# Glimmerwood Quest

**Glimmerwood Quest** is a 2D side-scrolling continuous runner created in GameMaker Studio.

The player controls Arkos, an adventurer journeying through Glimmerwood to purify the forest from a corrupting dragon. Players progress through increasingly difficult zones, collect magical flowers, avoid obstacles, fight enemies, and use special abilities to survive.

## About

Glimmerwood Quest combines fast-paced runner gameplay with light combat, resource management, and stage-based progression. Magical flowers act as both a progression resource and an ability cost, encouraging players to balance survival, collection, and skill usage as the game becomes more challenging.

The game was developed as a group project. I worked as the sole programmer and contributed to the game design.

## Features

- 2D side-scrolling continuous runner gameplay
- Four zones with increasing difficulty
- Magical flower collection and progression system
- Core player actions: jump, slide, and attack
- Unlockable abilities, including shield, magnet, and missile
- Environmental hazards and enemy obstacles
- Multiple enemy types, including bats, slimes, witches, and a dragon boss
- Procedurally generated tiles and obstacles
- Dynamic background and environment transitions
- Player and enemy state machine systems

## Technical Highlights

- Implemented player movement using a state machine for normal movement, jumping, falling, sliding, and attacking
- Created a slash attack system that prevents the same target from being hit multiple times during one attack
- Built modular ability objects with duration, collision, and alarm-based lifetime management
- Used inheritance to organise shared obstacle and enemy behaviour
- Implemented enemy state machines for different enemy types and boss attack patterns
- Developed manager objects for abilities, spawning, sound, background transitions, environment updates, and gameplay progression
- Added procedural spawning for tiles and obstacles to improve replayability

## Built With

- GameMaker Studio
- GameMaker Language

## Gameplay Overview

Players run through Glimmerwood while collecting magical flowers, avoiding hazards, defeating enemies, and using abilities strategically. As the player advances through each zone, the game introduces faster map speeds, more complex layouts, new enemies, and more demanding obstacle patterns.

The final zone features a dragon boss encounter with unique attack patterns, including fireball volleys and a tail swipe attack. The game ends when the player loses all hearts or successfully defeats the source of corruption.

## My Contribution

I served as the sole programmer for the project, implementing the core gameplay systems, player controls, procedural generation, abilities, enemy behaviours, boss mechanics, visual transitions, and manager object architecture. I also contributed to the overall game design and helped bring the team’s vision into a polished playable experience.
