# Map view
The map view represents the main window in our application.

![Map view](images/map/main.png "Map view")


## Map interaction:

### Move the map
As with manny map applications **StickMaps** allows you to move arround on the map as you would expect:

- Use the arrow keys (`← ↑ ↓ →`) to move the map around.
- Of course, you can also use your mouse by `mouse left-click & drag`.

### Zoom the map
Zoom In and Out works as you would expect.

- Use the keys `-` and `=` to zoom In and Out. (lowercase - / + )
- Or, use the `mouse scroll-wheel`.

### Rotate the map
**StickMaps** also supports rotating the map.

- Use keys `A` and `D` to rotate the map, reset it to default North-Up using key `S`.


### Adding your first line

`mouse left-click and drag` your line from the `Navigator -> Imported data` into the `Map view`.

![Drag line](images/map/dragLine.png "Drag line")

Find the approximate location of the entrance and let go of the mouse button.
If you know the exact GPS location, you can just drop the line anywhere on the map and provide the GPS coordinates in the Popup dailog.

![Gps line dialog](images/map/dropGpsLine.png "Gps line dialog")

### Adding additional lines
Just like your first line, `mouse left-click and drag` your line from the `Navigator -> Imported data` into the `Map view`.
But now put your mouse cursor on top of the station that you want to connect your line too.
If the depths are approximately the same*, the station wil light up and you can safely drop your line.

![Drag line](images/map/dropSnapLine.png "Drag line")

Your line will now be connected to the selected station.

![Line dialog](images/map/dropLine.png "Line dialog")

### Adding markers
**StickMaps** allows you to place markers anywhere on the map. 
You can use them to mark a point of interest, place warning or just leave a "note" on your map.
Just `mouse right-click` and choose `Drop marker`

![Drop marker dialog](images/map/dropMarker.png "Drop marker dialog")

Choose an Icon, color and Title, then `Save`. Your marker will now be visible:

![markers shown](images/map/markers.png "Markers shown")


## Context menu's
Our MapView relies heavily on so-called "context menu's".
If you hover any item (a station, a map, a marker or just an empty area on the map) and `mouse right-click` 
a specialized menu will pop-up next to your cursor offering you specific functionalities.

Hovering a station, line or marker will allow you to:
- Edit the item
- Remove the item
- Copy the Longitude/Latitude of the item.

When hovering empty space, you can:
- Drop a marker
- Copy the Longitude/Latitude of the item.
- Go to the last copied Longitude/Latitude.


## Close loops and move markers.
![Loop close](images/map/loopClose.png "Loop close")


Both are done using the same technique:
### For stations:
 - hover the station that you want to connect with the other (static) station.
 - Press `Ctrl` and hold
 - `mouse left-click` and `drag` your cursor towards the other (static) station
 - Once your cursor reaches a station, it will compare the altitudes allowing you to connect the lines if they are within a reasonable distance of eachother.
 - Once dropped, both stations are merged and the lines are looped.

### For markers:
- hover the marker.
- Press `Ctrl` and hold.
- `mouse left-click` and `drag` your cursor towards the new location of the marker.
