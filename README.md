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
* **Simple Render Crash:** Overloads the server-side particle engine to freeze the game instantly.
* **Permanent RAM Exhaustion:** Exponential entity summoning and nested command blocks to fill RAM.
* **Global Data Scrambling:** Continuously forces attributes (Speed, Scale etc.) and inventory wipes for **all** players. This feature exists and will work in both modes: Simple AND Pernament.

## 🚀 Usage

### 1. Initialization
1. Run `/reload` to initialize scoreboards, or let someone restart the server.
2. If you dont have op:
  - If you want pernament crash:
    1) Get a fishing rod, face straight down, and throw it.

  - If you want Simple, quick crash:
    1) Get an iron sword, face straight down, and throw it.
3. If you DO have op, then go to the "Manual Commands" section to manually run them or you can also do as guided you above.

---

## Manual Commands

`/function system:init_simple_crash`	Triggers the Simple Crash menu.
`/function system:init_perm_crash`	Triggers the Permanent Crash menu.

---

##Few Technical Notes:

In the `main_tick.mcfunction`, I used `x_rotation=89..90`. 
* **Why?** In Minecraft, looking straight down is exactly $90^\circ$. If I just put `90`, it might be too hard to hit. `89..90` ensures that even if the player is $0.5^\circ$ off, the crash still triggers.

This will crash the server side, since all the logics and commands all running in server side.

---

## How does it work?

**Simple Mode**
- Crash players client side by letting the server force players clients to render super complex particles around every entity existing in the current world.
- By utilizing loop logic with unlimited time, a specific entity can exponentially replicate itself, centering on all other entities in the world.
This model represents standard discrete exponential growth. Every existing entity A generates a new entity A at every tick (1/20th of a second):

$$
N(t) = 1 \times 2^t
$$

In conclution, simple mode will crash the server *instantly fast* before ram resources can even be saved into disks. Nagatively, therefore the server will/high posibillity to be back to normal after a reboot.


**Perm Mode**
- Perm mode will delete chunks randomly as where random 50 entities in the world are standing. Perm mode will also render a massive paricle effect cloud around where every player is.
- Theoriotically, This is slow enough to let the server to save resources from ram to disk, causing pernament chunks delections. While crashing players client side by letting the server force players clients to render super complex particles around every entity existing in the current world.
