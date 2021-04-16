# Dashboard Design

## Presentation Link
[Presentation Page](https://briancatter.github.io/p2BrianCatter/)

## Project Link
[Dashboard Design](https://github.com/briancatter/p2BrianCatter)

## Some Example Dashboards

Let's go over some existing dashboards you might have seen if you've been in a car before today.

### Honda Civic

<img src="https://s38.wheelsage.org/picture/h/honda/civic_sedan/honda_civic_sedan_3029.jpeg" alt="Civic" width="600" height="400">

This Civic dashboard is simple and easy to understand, and it has a nice unifying color scheme, but it has very little specific information readily available. I can tell that the oil temperature is fine, but I don't know what it is. I can tell I have gas left, but I don't know how many miles that gets me. I assume much of this information is in menus accessed from the steering wheel, but there is so little information on screen normally that the menu system must be very deep or very broad, with only a small space within the tachometer and under the digital speed reading to display more.

### Toyota Supra

<img src="https://img.17qq.com/images/phgsgfwwmsy.jpeg" alt="Supra" width="600" height="450">

The Supra is the "driver's car" and it shows: there is very little information given to the driver via the dashboard, which seems to imply that the kind of person driving this car is knowledgeable enough about the vehicle that they don't need many of the readouts provided to more amateur drivers, such as miles remaining, fuel consumption rate, and any other form of auxiliary digital information. In some circles, this is considered a pro for the vehicle, but for the average driver, this dashboard simply does not provide enough information to be useful. However, as a result, it is extremely easy to read and understand.

### Volkswagen Passat

<img src="https://lh3.googleusercontent.com/proxy/hpG43lEGOWGRSaGKJCuvoGCzNY86V20i87CILFkqnk6pz7SHgaM--FSm6NL9bWh2Czmdk5N4cAESqlDH1vIZszAWQAlVlPXLJr8xb8QHHX-nndFCe_PSYxfPVg2u" alt="Passat" width="600" height="400">

Volkswagen's upper trim Passats move some of the functionality of the infotainment system into the gauge cluster. While it does seem nice to have navigation in the same place as your speed, heading, and fuel, it also makes the dashboard very busy. In fact, each circular gauge on the edge of the dashboard is actually at least 3 gauges combined, and it takes some reading and squinting to make out what everything does. Due to the claustrophobic, symmetrical design, even after looking at it for some time I still found myself mistaking some gauges for others.

### Kia Optima

<img src="https://www.assignmentx.com/wp-content/uploads/2012/09/KIA-OPTIMA-Hybrid4.jpg.jpg" alt="Optima" width="600" height="350">

The hybrid Optima models are similarly designed with the opposite problem. While the Passat had virtually no empty space as much of the dash was a screen that could be used to display warnings, the Optima leaves a great deal of space empty just for displaying various warning lights that could have been relegated to the screen to make it larger and thus more readable. However, I still believe this design is superior to squishing everything as close together as possible as with the Passat.

### Chevrolet Silverado

<img src="https://content.instructables.com/ORIG/FJN/2D2N/HKM9407W/FJN2D2NHKM9407W.jpg?auto=webp" alt="Silverado" width="600" height="350">

Of the five designs listed here, I think this is the strongest. There are a suitable number of gauges for important information, and no dash space is wasted on auxiliary information that is less necessary. Comparatively, it's much like the Supra dashboard if it had just a few more gauges to monitor the health of various parts of the vehicle. The average driver shouldn't have any issue parsing the information given the lack of wasted space, and only a couple small spaces at the top are needed for warning lights. The biggest issue I have with this design is simply that warning lights are not easily understood by first time drivers, which is where newer cars with their digital displays would have this beaten.

## Common Usage

Obviously, the most common reason someone looks at their dashboard is to check their speed. Beyond that, other important features include checking RPM so you can gauge how much power your engine is providing at any given moment, fuel gauge to know how much longer you can drive, and engine temperature as a diagnostic tool and emergency warning system. Less importantly, but nowadays just as commonly, cars will provide information such as tire pressure, oil life, inspection timers, fuel consumption rate, trip meters, compasses, approximate miles remaining, phone connections, radio controls, navigation controls, and on and on, following the trend of all technology to become smarter and more connected.

Most of the controls for the smarter features vehicles come with now are relegated to buttons on the steering wheel, be they in the form of push buttons, four way levers, dials, or even voice controls that all assist in navigating a menu system that can range from trivially simple to needlessly complex depending on the amount of information available to the vehicle. Occasionally, some vehicles retain the control systems of the past in the form of physical reset buttons in the dash, typically used only for resetting trip meters or changing the clock settings. More rarely, some dash control buttons are hidden away from most users, such as the Passat's tire pressure reset button that is hidden up inside the glove box. Newer control schemes are typically simple to understand how they work, but can be quite difficult to actually navigate through due to the depth of information, often leading to spending much longer than necessary traversing through menus to find what you're looking for. In contrast, older designs normally have 2 to 3 buttons, but they are normally unlabelled to save space on the dashboard, leaving the user to make assumptions and experiment to discover the functionality of the buttons, or less commonly, read the manual.

I think most issues with car dashboards can be solved by removing user interactivity entirely. By making the trip meter automatic and limiting what information the vehicle needs to display, we can create a streamlined and simple experience that supplies drivers with all the information they need to drive safely and monitor the health of the vehicle effectively. As such, it is my belief that the only information a dashboard should need to display is fuel remaining, current speed, current RPM, oil temperature, outside temperature, miles driven lifetime, miles driven this trip, and a handful of warning lights including the check engine light, the parking brake light, and the tire pressure.

## Prototype

<img src="https://github.com/briancatter/p2BrianCatter/blob/main/PrototypeDashboard.jpg" alt="Prototype Design" width="800" height="400">

My lack of artistic ability aside, the most noticeable thing about this design in hindsight is the complete overabundance of warning lights. While this is a pretty common design trope for vehicle dashboards, it just strikes me as unattractive, and this would be the only major departure from my prototype that pops up in the final design. Disregarding the warning light situation, I think the rest of the information displayed is important and appropriately sized, but there isn't anything holding any of the design elements together, and everything appears to just be floating in a void around each other. Solving this issue ended up taking most of my design time for the product.

## Final Design

<img src="https://github.com/briancatter/p2BrianCatter/blob/main/p2BrianCatter.gif" alt="Prototype Design" width="750" height="450">

While not shown in this GIF, the warning light situation was resolved by leaving space for several plain English warnings at the top of the dash, removing the possibility of new drivers not understanding the symbology. The result is a much cleaner design, leaving the primary space on the dash for the most important gauges and readouts, along with the blinkers/hazard lights. Most of the information on the dash has secondary measurement capabilities, e.g. the fuel meter turns from green to red as it reduces, the oil temperature gradually changes to red the farther it moves from optimal temperature in either direction, and the outside temperature reading becomes an icy blue color when it drops under 40 degrees Farenheit. Additionally, to compromise for people who prefer digital or analog speed and RPM readouts, the digital reading simply follows the analog needle around the gauge, providing the feel of an older vehicle combined with the precision of a newer one without the need for a very busy design full of text all over the gauge.
