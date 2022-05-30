# Roadmap
While we like to be transparent about our goals, please understand that this is a technical document.
The order of this list is based on implementation-requirements which might seem un-natural to you.

- ### Full re-rendering of the map

  Future functionalities will require full map-redraws (changing geo data, advanced closures, imports ect.) but as a user 
  you do not want to wait for this to complete, nor do you want to suddenly have your map changing while working on it. 
  
  This implementation will allow full map-redraws without interruption the user work-flow.
  
  - A redraw should be calculated in a separate thread and only applied if the user chooses too.
  - User should see a button that indicates a map-redraw being available (Only AFTER pre-processing it).
  - When user clicks redraw button, the full map should instantly redraw without interrupting the UI-thread.
  - All functionalities should remain available no matter which redraw status indicated.
  - Action(-dialogs) should have the options of bypassing the button and forcing a ?blocking? redraw.

- ### CRUD functionality on map stations

  A user should be able to create, search, edit and remove any station they want, depending on users action a full map-redraw should be triggered.

  - A user should be able to change any location related data on a station already existing on the map.
  - GPS-based stations should move all non-GPS stations that are connected, making it possible to change/correct the entrance position of a map.
  - Above statement goes for the "edit dialog" option too, changing the lng/lat should move the system as a hole.
  - A user should be able to add a station on an already existing line.
  - ~~A user should be able to remove a station on an already existing line.~~ ***\- Added version 0.42***
  
- ### Import **StickMaps**-file(.stk) files into another **StickMaps** file

  As a user I will want to be able to import an existing .stk file into my current project. 
  This would make it possible to create connect multiple previously separate systems together or even create one huge map with all caves in the world.

  - users should be allowed to import one file into another, meaning that they can "merge" two separate stickmaps into a single map.
  - the imported stickmap should exist of exactly the same data as a non-imported stickmap.

- ### Support more devices and file-types

  Now that we can import a file into another file, supporting other formats will be much easier.
  Allowing user to import their existing surveys will most probably boost our online presence.
  

  - users should be able to connect to their [Sinapsi](https://www.suex.it/en/sinapsi/).
  - users should be able to import .tml files. [Ariane](https://www.arianesline.com/ariane/)
  - users should be able to import .csv files.
  - ~~users should be able to connect to their [Mnemo](https://www.arianesline.com/mnemo/) directly.~~ **\- Not possible**
  
  - ### Offline usage

      Currently, no effort has been put in offline usage and so it is unknown what the current possibilities are.
      Yet as a user, it happens more often the sometimes that you want to process your survey without having internet available.

       - determine the current offline functionalities
       - ensure users can use all off **StickMaps** functionalities except for map-imagery.
       - allow users to prepare offline areas in order to make map-imagery available. (within the possibilities provided by ArcGIS)

  - ### Search functionality navigator

      In the process of creating a map, a user provides an excessive amount of information. 
      All of this information should be searchable using a simple text-based keyword search-query.

      - User should be able to search for stations, lines and survey within the navigator.
      - Search query should filter navigator data, allowing for multiple results.
      - ~~User should be able to zoom/center mapview on a specific station from within the navigator~~ ***\- Added version 0.40***
  
  - ### Data visualiser

      Extending existing search functionalities, we should now allow users to visualize their data based on user-provided parameters

       - users should be able to color and/or shape lines/stations based on tags, contacts, dates, depths or any other provided information.
       - users should be able to create a textual report included total length's, accuracy, possible leads, surveyors and so on.

  - ### Further Esri ArcGIS integration

      While **StickMaps** fully integrated the ArcGIS api apart from the map-imagery none of their front-end functionalities 
      have been fully implemented. 

      - users should be allowed/endorsed to use their own (free) ArcGIS account.
      - users should be allowed to import their own feature layers from their arcGIS account.
      - users should be able to export their stick-maps as a arcGIS feature layer.
      - exported feature-layers should be fully compatible with arcGIS own analytic-tools.
  
  - ### Image overlays

      Do you have your own drone images? Do you maybe have a jpeg with a huge cave-system or some other image data you 
      would like to overlay with your map? This feature will enable you to do so.

      - users should be allowed to drop and scale images on the map.
      - the images should display between the map and the stick-map symbols.

  - ### Least-squares loop closures

    Now that we came so far, we should be able to average inaccuracies using te most proper mathematical-algorithm.
    While there are multiple options, least-squares is accepted as the best possible solution.
    There are multiple applications claiming to have implemented this algorithm yet doing so correctly might
    not be as easy as it sounds.

    - Loop-closures should implement the least-squares algorithm.
    - After a loop-closure the hole map should be re-generated but redrawn only on request.
  
  - ### Release 50k, 100k and 250k and ?500k+? versions of **StickMaps**

      Start smart, grow big. We have a lot of power under the hood, and we want to bring that to good use.
      Imagine a single file that holds all caves known to humanity, we are up for the challenge, -are you?

      - Research ArcGIS api functionalities related to indexing and path-finding (don't reinvent the wheel)
      - implement hot/cold logic (in-sight/out-of-sight separation)
      - implement proper BTree, Hash and GIST indexes
      - loop-indexing for realtime path-finding
      - optimize search-speeds
  
  - ### Multi-player version?

    Wouldn't it be cool to work with all your dive-buddies on the same map?
    
