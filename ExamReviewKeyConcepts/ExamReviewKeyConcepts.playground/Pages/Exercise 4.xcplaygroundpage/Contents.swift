//: [Previous](@previous)
//: # Exercise 4
//: ## Your goal
//: Reproduce this image:
//:
//: ![The Pixies](ThePixies.png "The Pixies")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 400)
canvas.fillColor = Color.green
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
for x in stride(from: 0, through: 400, by: 40) {
    for y in stride(from: 0, through: 400, by: 40) {
        if x + y <= 400 {
            canvas.fillColor = Color.white
        } else {
            canvas.fillColor = Color.green
        }
    canvas.drawEllipse(centreX: x, centreY: y, width: 35, height: 35)
    }
}
canvas.fillColor = Color.green
for x in stride(from: 0, through: 400, by: 40) {
    canvas.drawEllipse(centreX: x, centreY: 0, width: 35, height: 35)
    canvas.drawEllipse(centreX: 0, centreY: x, width: 35, height: 35)
}
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 400, width: 400, height: 200)

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
