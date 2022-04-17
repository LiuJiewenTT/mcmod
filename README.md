# mcmod
 Plug in some mods for launchers that works differently.

In other words, it's just a management tool.

Make efforts to build a better world is encouraged, you should have rights to manage your own PC and files inside it!!!

## WARNING

==The author is not responsible for any inappropriate use of the program. Make sure you know what you're doing.==

## Suggestions

1. Store things in **a specific folder** as there isn't a link for it. And **BE SURE YOU WILL REMEMBER IT**.
2. `rc` and `run.bat` are always in the **same** directory. Make sure this is your case.
3. Create your own batch file as mentioned below to improve convenience.

## How to use

==Before you **first run** of this program, you should make a simple adjustment as **setup process**.==

### Adjustment you should make

Please follow steps below:

1. Open run.bat using whatever text editor, like notepad. (You may right-click or open ribbon and choose 'Edit' option.)
2. Go to the end of file, there is a number after term `LSS`, see? Well, the initial value of **20** is probably **not big enough** for majority of PCs. Hence, you may consider my configuration of setting this value to **1000**.
   1. Explanation: This number is the checking times after first insertion.
3. Save and close.

### Start

1. Every time **before you start a game**, please make sure all mods in `rc` directory is what you want for the world.

2. Drag folder `mods` upon `run.bat` , then press any key to get it into working state.

   1. The information you see before asked to enter a key is about:

      1. Path of this program
      2. Path of "dragged" folder:  `mods` of the game.
      3. Working-relate things: path of file `wat`
      4. Working-relate things: path of folder `rc`

   2. After you press a key, the program would print lots of `exist`. This is normal.

      1. If you don't see this, maybe it's about authentication: the program doesn't have enough level to operate file. And in this case, the program would go wrong. Thus, please be sure to store this program in trivial places that don't need special access.

   3. **You may use command-line instead of dragging.** In other words, you can write a `.bat` file like this:

      ```bat
      @echo off
      %~dp0run.bat (complete the path with your own)\.minecraft\mods
      ```

      **Then the only thing you need to do every time is to run this batch file.** 
      So easy and great, right?

3. In the launcher of game, start your game.

4. After you start the game, the program would begin to work, i.e. inserting mods in `rc` into `mods`. Then you should see mods working for the game. If not, go through setup procedures and adjust the value.

   1. The program should check some number of times before automatically quitting.
      i.e. The number you set is 1000, then it would check 1000 times and then exit.

## Notice

Current version of program will go wrong is any path has a blank in it. But for most common use of this program, there shouldn't be any blank in path. This means no accident to use the program. So, take it ease. If you have minority needs you can develop another version of it (This project is currently under Apache 2.0 license).

Also, there already exist further versions of it in the world, but the author haven't upload. Please be patient, they would come up soon. The name of successor project would be declare later.