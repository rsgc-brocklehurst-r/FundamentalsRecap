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
let canvas = Canvas(width: 400, height: 400)

// Replace this comment and add your code below
canvas.drawShapesWithFill = false
canvas.borderColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
canvas.defaultBorderWidth = 5

canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
for x in stride(from: 30, through: 400, by: 61) {
    canvas.drawEllipse(centreX: x, centreY: 370, width: 50, height: 50)
}
canvas.borderColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
for y in stride(from: 30, through: 400, by: 61) {
    canvas.drawEllipse(centreX: y, centreY: 370, width: 40, height: 40)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
