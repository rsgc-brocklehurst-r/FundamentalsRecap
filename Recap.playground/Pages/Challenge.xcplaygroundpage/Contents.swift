/*:
 [Previous](@previous)
 
 # Challenge
 
 Mr. Gordon was at IKEA a few weeks ago and noticed this pattern:
 
 ![pattern.jpg](pattern.jpg "pattern")
 
 Use any of the concepts you have learned so far in this course to reproduce the wallpaper pattern shown above.
 
 - note: The photo was not taken "straight on" against the wall, so the image has perspective.  You do not need to reproduce that part of the image.  In other words, no need to create the appearance of "depth", just reproduce colours and shapes.
 
 - callout(Hint): Look for elements of repetition in the pattern. Try to reproduce a portion of the image, then simply *repeat* the pattern.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 480, height: 450)

// Replace this comment and add your code below
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 10
canvas.defaultLineWidth = 10


for x in stride(from: 40, through: 500, by: 80) {
    canvas.borderColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: 400, width: 60, height: 60)
    canvas.borderColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: 400, width: 41, height: 41)
    canvas.borderColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: 400, width: 21, height: 21)
}
for y in stride(from: 0, through: 500, by: 80) {
    canvas.borderColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
    canvas.drawEllipse(centreX: y, centreY: 300, width: 21, height: 21)
    canvas.borderColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
    canvas.drawEllipse(centreX: y, centreY: 300, width: 41, height: 41)
    canvas.borderColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
    canvas.drawEllipse(centreX: y, centreY: 300, width: 60, height: 60)
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
