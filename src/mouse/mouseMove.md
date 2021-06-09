> `mouseMove(x, y, [speed, relative])`

Used to join two or more arrays. This method does not change the existing arrays, but returns a new array, containing the values of the joined arrays.


#### Arguments
| Argument       | Type         | Description  |
| :------------- | :----------- | :----------- |
|  x,y           | number       | Optional. (Default `0`)  The x/y coordinates to move the mouse to, which can be expressions. Coordinates are relative to the active window unless CoordMode was used to change that |
|  speed         | number       | Optional. (Default `0`)  The speed to move the mouse in the range 0 (fastest) to 100 (slowest), which can be an expression. A speed of `0` will move the mouse instantly |
|  relative      | boolean      | Optional. (Default `false`)  If omitted, the x and y coordinates will be treated as absolute values. To change this behavior, specify the `true` |


#### Returns
(array): A new Array instance.
