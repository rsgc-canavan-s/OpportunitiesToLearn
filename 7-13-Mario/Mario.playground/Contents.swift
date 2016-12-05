/*:
 # Mario
 
 Add your Mario solution (however far you got) to the space below.
 
 Then, commit your work.
 
 Finally, push your work to the remote origin for your repository on GitHub.com.
 
 We will go through this together.
 */

// Add your code below
func levelCost(heights: [Int], maxJump: Int) -> Int {
    var unfinishable : Int = -1
    var energy : Int = 0
    var jumpHeight : Int = 0
    var previousElement : Int = 0
    for distance in heights {
        let difference : Int = distance - previousElement
        if difference < 0 {
            difference * -1
        }
        jumpHeight += difference * 2
        if jumpHeight > maxJump {
            break
        }
        previousElement = distance
        if jumpHeight == 0 {
            energy += 1
        } else {
            energy += jumpHeight
        }
    }
    if jumpHeight > maxJump {
        return unfinishable
    }
}
