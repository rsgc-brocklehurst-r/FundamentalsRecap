/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 400)

canvas.drawShapesWithBorders = false

// circle
canvas.fillColor = Color(hue: 10, saturation: 100, brightness: 90, alpha: 90)
canvas.drawEllipse(centreX: 50, centreY: 150, width: 150, height: 150)

// round rectangle
canvas.fillColor = Color(hue: 45, saturation: 100, brightness: 90, alpha: 90)
canvas.drawRoundedRectangle(bottomLeftX: 200, bottomLeftY: 185, width: 125, height: 140)

// rectangle
canvas.fillColor = Color(hue: 240, saturation: 100, brightness: 100, alpha: 90)
canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 25, width: 125, height: 350)

// triangle
canvas.fillColor = Color(hue: 70, saturation: 100, brightness: 75, alpha: 90)
var points : [NSPoint] = [] // create empty list (array) of type NSPoint
points.append(NSPoint(x: 275, y: 350) )
points.append(NSPoint(x: 375, y: 125) )
points.append(NSPoint(x: 475, y: 350) )
canvas.drawCustomShape(with: points)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
