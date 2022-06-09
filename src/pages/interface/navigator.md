# Navigator
Apart from the map itself, the Navigator will be the interface element you use most.
You can show and/or hide the widget using `Ctrl+Space` or `View -> Toggle Navigator`

![navigator](images/navigator/page_1.png "Navigator")


## Introduction
Your navigator is a directory-style representation of all your survey(-related) data within your project.
After importing your survey, you will find your survey within the navigator's `Imported data` folder.
Everytime you drag a line from the `Imported data` folder to the map view, the line will automatically be moved from the `Imported data` folder to the `Map data` folder.
After removing a line from the `Map data` folder or the map itself, it will show-up in the `Imported data` folder.
This means that all lines that are visible on your map are available within the `Map data` folder.
All lines that where imported but not visible on the map are available from within the `Imported data` folder.

### Available mouse actions
- `Double-click` anny folder to see their contents.
- `right-click` anny folder to show the context-menu displaying available options for that folder.
- `left-click + mouse move` line-folders within the `Imported data` folder to drag them into the `Map window`.
- `double click` stations-icons within the `Map data` folder to center them on your map.
- `double click` stations-icons within the `Imported data` folder to display the edit-station dialog.
- `right-click` station-icons to show the context-menu displaying all available options.

## Imported data
This folder will hold all your imported surveys.

### Drag your line into the map-window.
All line-items found in the Navigator -> `Imported data` -> `[your survey]` folder, are draggable.
You can recognize these folders by the cursor changing to a "draggable cursor" when you hover them

 ![cursor](images/navigator/drag_hover.png "cursor")

When you hover your line, click and hold your left-mouse button en simply move your mouse towards the map-window.
You will see your line displayed on the mapview, following your mouse cursor where-ever you move it.
![Drag&Drop](images/navigator/page_2.png "Drag&Drop")

When your mouse hovers already existing stations on your map, it will compare its altitude with the line you are dragging.
If both are within a reasonable margin of each other* the existing station will light up indicating that you can connect your line to the given station.
When you drop your line on the map without an existing station lighting up, you will create an GPS based line.

When you import your line, you have set the survey direction for that line.
 - Direction IN will make you Drag&Drop the line using the FIRST station as the main reference.
 - Direction OUT will use the LAST station as its main reference.

You can always change the direction for your line by hovering your line folder and `right-click` -> `edit line`.

*\*see `file -> preferences, Map -> Station max altitude difference`*

## Provide optional information
![Drop dialog](images/navigator/page_3.png "Dailog")

After dropping a line on the map, a dialog will show up.

| field name | description | available |
| ----------- | ----------- | --------- |
| Latitude | The latitude of the dropped station | Only editable when line is not connected to existing station |
| Longitude | The longitude of the dropped station | Only editable when line is not connected to existing station |
| Stations before line starts | When your line starts with a jump or reel, how many stations are connected with a temporary line? | Always available |
| Stations before line ends | When your line ends with a jump, how many stations are connected with a temporary line? | Always available |


### Stations before line starts / Stations before line ends
Temporary lines will be displayed in a dotted grey line, making jumps or reelings instantly visible.
The example below shows a line where "Stations before line starts " is set to 2.
 
![Stations before line starts](images/navigator/page_4.png "Stations before line starts")

## Map data
This folder will hold all your items displayed on the map.
As sometimes it is easier to find and/or access your items through the navigator rather than directly on the map **StickMaps** allows you to do so.

### Editing stations
It is currently not possible to edit position related data for a station that exists on the map.
Future versions of **StickMaps** will most likely do support such a feature.

### Center station on map
`Double-click` a station-icon or `Right-click` a station-icon and select `goto Station`, your station should now be centered on the map window.


