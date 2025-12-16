# 3D Ludo Game 🎲

A visually stunning, fully-functional 3D Ludo board game built with Three.js - all in a single HTML file!

## 🎮 Game Overview

This is a complete implementation of the classic Ludo board game with a beautiful 3D interface. The game features smooth animations, particle effects, sound feedback, and an intuitive user interface.

## ✨ Features

- **3D Graphics**: Stunning 3D board with realistic lighting and shadows
- **Multiple Players**: Play with 2 or 4 players
- **Complete Game Logic**: 
  - Roll dice to move tokens
  - Need a 6 to start from base
  - Capture opponent tokens
  - Safe zones on the board
  - Home stretch path for each player
  - Win by getting all 4 tokens to the center
- **Visual Effects**:
  - Animated 3D dice with realistic rolling
  - Smooth token movement with arc animations
  - Particle effects and ambient lighting
  - Player-specific color highlights
  - Glowing effects on active player tokens
- **Sound Effects**: Audio feedback for rolls, moves, and captures using Web Audio API
- **Interactive Controls**:
  - Mouse drag to rotate view
  - Scroll to zoom in/out
  - Click tokens to select and move

## 🎯 How to Play

1. **Setup**: 
   - Choose number of players (2 or 4)
   - Click "Start Game" button

2. **Taking Turns**:
   - Click "ROLL DICE" to roll
   - Click on any of your tokens to move them
   - Each player takes turns in order: Red → Green → Yellow → Blue

3. **Game Rules**:
   - Roll a **6** to bring a token out from base
   - Rolling a **6** gives you another turn
   - Land on opponent tokens to send them back to base
   - Move around the board and enter your colored home path
   - Get all 4 tokens to the center to win!

4. **Path Structure**:
   - **Main Path**: 52 positions around the board (51 steps to complete)
   - **Home Path**: 5 colored squares leading to center
   - **Total Journey**: 57 steps from start to finish

## 🛠️ Technical Details

**Built With**:
- **Three.js**: 3D graphics rendering
- **Vanilla JavaScript**: Game logic and interactions
- **CSS3**: Modern UI styling with gradients and animations
- **Web Audio API**: Dynamic sound generation
- **OrbitControls**: Interactive camera movement

**Architecture**:
- Single-file application (index.html)
- No build tools or dependencies required
- Uses ES6 modules via CDN (Three.js from unpkg)
- Fully responsive and works on modern browsers

**Key Components**:
- Scene setup with PBR materials and lighting
- Raycasting for token selection
- Path-based movement system
- Game state management
- Animation system for smooth transitions

## 🚀 Getting Started

1. Simply open `index.html` in a modern web browser
2. No installation or build process required!
3. Works best in Chrome, Firefox, Safari, or Edge

## 🎨 Design Philosophy

This game was **vibe-coded** - designed with a focus on:
- Aesthetic appeal and smooth user experience
- Futuristic UI with gradient effects
- Satisfying animations and feedback
- Intuitive controls without tutorials

## 📝 Game State

The game tracks:
- Current player turn
- Dice roll value
- Token positions (base, main path, home path, or finished)
- Steps taken from start
- Tokens at home vs. active vs. finished
- Win conditions

## 🎪 Future Enhancements

Potential additions:
- AI opponents
- Online multiplayer
- Custom board themes
- Power-ups and special tiles
- Tournament mode
- Save/load game state

## 📄 License

Free to use and modify for personal and educational purposes.

---

**Enjoy the game!** 🎲✨
