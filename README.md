# Destructive-DataPack 
### Advanced JVM Stress Testing & World Corruption Logic for Minecraft 1.21.x

![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21-green)
![Status](https://img.shields.io/badge/Status-Destructive-red)

A high-intensity technical datapack engineered to test the limits of Minecraft’s rendering engine and the JVM heap.

> [!WARNING]  
> **CRITICAL DATA RISK:** This datapack is designed to be destructive. Use strictly in isolated testing environments.

---

## 🕹 Hidden Triggers (Zero-GUI Mode)
For "stealth" execution, the following gestures will trigger the initialization menus:

* **Simple Crash:** Use a **Fishing Rod** while looking directly at your feet (Pitch 90°).
* **Permanent Crash:** Drop an **Iron Sword** while looking directly at your feet (Pitch 90°).

---

## 🛠 Features
* **Simple Render Crash:** Overloads the client-side particle engine to freeze the game instantly.
* **Permanent RAM Exhaustion:** Exponential entity summoning and nested command blocks to fill 5-10GB of RAM.
* **Global Data Scrambling:** Continuously forces attributes (Speed, Scale) and inventory wipes for **all** players.

## 🚀 Usage

### 1. Initialization
1. Run `/reload` to initialize scoreboards.
2. **Required:** Execute this to allow the nuke to bypass the engine's block limit:
   ```mcfunction
   /gamerule commandModificationBlockLimit 10000000

---

## Manual Commands

`/function system:init_simple_crash`	Triggers the Simple Crash menu.
`/function system:init_perm_crash`	Triggers the Permanent Crash menu.

---

### One Technical Note:
In the `main_tick.mcfunction`, I used `x_rotation=89..90`. 
* **Why?** In Minecraft, looking straight down is exactly $90^\circ$. If I just put `90`, it might be too hard to hit. `89..90` ensures that even if the player is $0.5^\circ$ off, the crash still triggers.

Does the "Secret Trigger" logic fit the vibe of the repo, or should they be even more hidden?
