# StickMaps Quickstart
Understand the basics in less than 25 images!


## Login in order to validate your license
After a successful validation, you can use **StickMaps** for 2 weeks without internet connection.

![QuickStart](images/quickstart/screen_1.png)

## Create a new file
For this example, we will chose to create a new project.

![QuickStart](images/quickstart/screen_2.png)

## Chose a name for your project and the save-location. 
In most cases you will want to name your project towards the name of the system you are surveying.
Ofcourse you can change both of them any time you want.

![QuickStart](images/quickstart/screen_3.png)

## Import survey data
For this example we will import some data from a Mnemo .dmp file
Please see our documentation for other importing methods and/or formats [here](pages/import/index.md "Data import")

![QuickStart](images/quickstart/screen_5.png)


## Select your .dmp file
Most of **StickMaps** file selectors will remember it's last used path.
The next time you want to open a .dmp file, the file selector will open in the same directory.

![QuickStart](images/quickstart/screen_6.png)

## Provide Survey details
Feel free to fill in every field of this screen, it will help you identify your survey later.
Yet remember: "Everything is optional", you can just skip through by clicking `Next`

- see [Menmo import](pages/import/mnemo.md)

![QuickStart](images/quickstart/screen_7.png)

## Select the lines to import
In general, you won't have to change anything in the default field, just select the lines you want to import.

![QuickStart](images/quickstart/screen_8.png)

## Verify each line
Apart from naming you line and adding additional details, **StickMaps** might ask you to verify some stations.
These stations have a lower than usual accuracy and **StickMaps** allows you to change it default behaviour.
If you want to know more about correcting in-accurate stations, see [Verify Lines](pages/import/mnemo.html#verify-lines).

![QuickStart](images/quickstart/screen_9.png)

## Import complete
After verifying your lines, you will be presented with a small overview dialog.
It shows you some details about the import, click `Finish` to complete your work.

![QuickStart](images/quickstart/screen_10.png)

## View you import inside the navigator
If the Navigator on the left side of your application window did not open automatically, you can do so by pressing `Ctrl+[space bar]` or go to the top-menu and chose `View -> toggle Navigator`.
The Navigator will hold all your data throughout the process of building your stickmap.

- see [Navigator](pages/interface/navigator.md)

![QuickStart](images/quickstart/screen_11.png)

## Adding your first line to the map
When you hover your mouse-pointer over your line, you will see the cursor change.
Hover over your first line, `mouse left-click and hold` and move your mouse into the map area.
You will see your cursor change again and right at the moment you enter your map, your line will be shown under your cursor.

- Depending on the direction you have set for this line, you will either use the first or the last station as the reference.
   To change the reference; `mouse right-click` your line and chose `edit line` and change the `Direction`.

![QuickStart](images/quickstart/screen_12.png)

## Dragging your map on the map
Now that your mouse-pointer resides within your map-view, you are provided with a preview of your line.
Choose teh approximate location of the start of the line.

- If you have the GPS-coordinates of the entrance available, it doesn't matter where you drop your line.

![QuickStart](images/quickstart/screen_13.png)

## Provide last details and accept
If you have the  GPS coordinates of the entrance available, this is the moment to use them.
Also, if you used a reel for entering you can add the amount of stations before the permanent line starts.
By doing so **StickMaps** will render your temporary line grey and dashed, making it easy to recognize.

![QuickStart](images/quickstart/screen_14.png)

## Close your first loop
Some people might have noticed that the main-line of the survey in this example is actually a huge loop and jumps back onto itself.
So lets close that loop by hovering the station we want to close and `press and hold Ctrl`.

![QuickStart](images/quickstart/screen_15.png)

## Depth-aware station snap
If you now `mouse left-click & hold` while moving your mouse, you will see that the line is following your cursor.
This is our basic loop-close algorithm, when closing the loop it will average the difference over every station until either the moving line connects to another station or it ends.
Now to complete our loop-close, hover a station that is in the same depth-range as the one you are hovering.
You will see it glow-up meaning you can connect your line at that place.

*\*Be aware that is the difference in depth between to stations is too big, it will *NOT* snap. 
To change the margin go to `top navigation -> file -> Preferences -> map` and change the `station max altitude difference` to a bigger number.*

![QuickStart](images/quickstart/screen_16.png)

## Remove stations
In our example, we took 2 extra measurements after connection to the main line helping us to identify the correct station.
Now that we connected our loop, we can remove those stations. Hover over the station, `mouse right-click` and chose `remove station`
Accept the dialog and repeat the process for the last station in the line.

![QuickStart](images/quickstart/screen_17.png)

![QuickStart](images/quickstart/screen_18.png)

## Mark our jump line
The loop we created contains a jump. The last 5 stations are actually temporary stations that we created while using our jump-spool.
Let's visualize this by: `mouse right-click` on your line in the map-view or within the navigator and chose `edit line`.
Change the "Stations after line ends" to 5 and click `Save`

![QuickStart](images/quickstart/screen_19.png)

## You can clearly see the difference
As you can see, it is very clear to anyone looking at your map that we have just marked a jump and approximately where to expect the start and end of it.
By consistently doing so, it becomes very easy to see the difference between a T or a Jump. Even Gaps can be marked this way al due they require you to either survey them as different lines (or import that line twice ;))

![QuickStart](images/quickstart/screen_20.png)

## Dropping markers
That last end of our loop is a side-mount passage and we wouldn't want to send people with back-mount and multiple stages in there.
It might also be beneficial to drop a marker at the entrance, so it is easy to recognise.
`mouse right-click` on an empty space on the map and choose `Drop marker`.
Chose an image, color and title and press `Save`

- You can drag Markers to different positions by `press & hold Ctrl` and then drag your marker around.
- You can edit and remove a marker by `mouse right-click` and chose the appropriate option. 

![QuickStart](images/quickstart/screen_21.png)

## Adding additional lines
Now that our first line is complete, we can start connection other lines to it.
Drag the second line from your `Navigator` into the map and drop it on top of the station that it connects to.
This will use the same depth-aware snapping as when we are closing loops, ensuring you chose the correct station.

![QuickStart](images/quickstart/screen_22.png)

## No coordinates this time
As we are connecting our line to an existing line, we won't be able to set the longitude/latitude.
We would be able to set the amoutn of temporary stations here but as this is an actual T, this time we won't do so.

![QuickStart](images/quickstart/screen_23.png)

## Share your map
What is a map worth if no-one uses it?
**CaveGuide** Is a mobile app that works as a viewer for **StickMaps** files.
By publishing your map in **StickMaps** it becomes available in **GaveGuide**.
We provide you a simple yet very power-full way of setting access-rights to your maps. 
When you publish your map, it will only be visible in **CaveGuide** and even if we would want to, we will not be able to load the shared map back into **StickMaps** due to missing data.

![QuickStart](images/quickstart/screen_24.png)

