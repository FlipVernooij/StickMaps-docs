# Introduction

**StickMaps** is a program to create stick-maps using compass-based survey data.
It is ideal for (underwater) cave survey, creating path based maps of archaeological sites or other points of interest.
**StickMaps** main focus is to provide simple and fun solutions for visualizing survey data in a practical and usable way.

- Clean and straight-forward interface.
- Natural Drag&Drop based user-interaction.
- Dynamic data visualisation.
- Supporting various import methods and devices.

## Batteries included?
**StickMaps** is not a "Batteries included" application, meaning that we intentionally will not support all your needs.
For instance, if you want to produce a map based on your stickmap, we think you will be better off using a tool like 
[InkScape](https://inkscape.org/) or [Illustrator](https://www.adobe.com/products/illustrator.html) for that.
This allows us to focus on the features we value most and keep our program clean, simple and fun to work with.

## Contributing
**StickMaps** values your feedback, we are a new product and are working on improvements on a daily basis.
We are happy to implement you suggestion and requests into our roadmap.

## Roadmap

1) Drop markers
    - users should be able to drop markers anywhere on their map in order to mark [POI's](https://en.wikipedia.org/wiki/Point_of_interest)
    - users should be able to choice an icon and add a label text to their marker.
    - users should be able to remove their marker.
2) Offline usage
   - users should be allowed to use the application offline (within the possibilities provided by ArcGIS)
3) Import **StickMaps** save-file(.stk) files into another **StickMaps** save-file(.stk)
   - users should be allowed to import one file into another, meaning that they can "merge" to separate stickmaps into a single map.
   - the imported stickmap should display as a single grouped entity in the "imported data" item in the navigator
   - the imported stickmap should be able to be dropped as a single entity onto the map (using the existing coordinates)
   - the imported stickmap should exist of exactly the same data as a non-imported stickmap.
4) Data visualiser
   - users should be able to visualize provided data within the import process using a specialized widget.
   - users should be able to color and/or shape lines/stations based on tags, contacts, dates, depths or any other provided information.
5) Support more devices and file-types
   - users should be able to import .tml files.
   - users should be able to connect to their [Mnemo](https://www.arianesline.com/mnemo/) directly.
   - users should be able to connect to their [Sinapsi](https://www.suex.it/en/sinapsi/).
   - users should be able to import .csv files.
6) Image overlays
   - users should be allowed to drop and scale images on the map.
   - the images should display between the map and the stickmap symbols.
7) Further Esri ArcGIS integration
   - users should be allowed to import their own feature layers from their arcGIS account.
   - users should be able to export their stickmaps as a arcGIS feature layer.
