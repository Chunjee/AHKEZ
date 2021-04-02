Searches a region of the screen for an image.


## Arguments

| Argument       | Type         | Description  |
| :------------- | :----------- | :----------- |
| x1            | number       | Optional. (Default `0`) The X coordinate of the upper left corner of the rectangle to search |
| y1            | number       | Optional. (Default `0`) The Y coordinate of the upper left corner of the rectangle to search |
| x2            | number       | Optional. (Default `A_ScreenWidth`) The X coordinate of the lower right corner of the rectangle to search|
| y2            | number       | Optional. (Default `A_ScreenHeight`) The Y coordinate of the lower right corner of the rectangle to search|
| imageFile     | string       | Required. filepath of the image to search for|
| options       | string       | Optional. (Default `""`) |


## Returns
(object):	the x and y position of the first matching image, else `false` if none found
