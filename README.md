# Model placer

It uses two wrenches to place a model in a given position. The main wrench is the carrot on a stick and the secondary wrench is the warped fungus on a stick. 

To obtain the wrenchs, use:
```hs
/function mdlt:commands/give
```

## Main wrench

### Right click

Rotate the following cycle:

- Place new
- Selection
- Move
- Rotate
- Delete

### Right click + sneak

Same cycle as above but in the opposite direction.

## Secondary wrench

The secondary wrench is used in conjunction with the main wrench. It is used to: confirm or has a specific action in the current mode.

Move, rotate and delete actions concern a selected model within a radius of less than 32 blocks. The selection is done by selecting the Selection mode with the main wrench and then select the model by right clicking looking at it.

| Mode | Righ Click | Right Click + Sneak |
| ---- | ---------- | ------------------- |
| Place new | Places the model located in the offhand | / |
| Selection | Selects the model closest to the player's vision | Reveal the origins of close models |
| Move | Moves the model in the block grid, where the player is looking | Moves the model outside the block grid, where the player is looking |
| Rotate | Rotates of 45° clockwise | Rotates of 45° counterclockwise |
| Delete | Deletes the latest selected model | / |


