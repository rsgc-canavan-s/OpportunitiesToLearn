/*:
 # Mario
 
 Add your Mario solution (however far you got) to the space below.
 
 Then, commit your work.
 
 Finally, push your work to the remote origin for your repository on GitHub.com.
 
 We will go through this together.
 */

// Add your code below
func levelCost(heights: [Int], maxJump: Int) -> Int {
    var energy : Int = 0
    var previousHeight : Int = 0
    for distance in heights {
        let jumpHeight : Int = abs(distance - previousHeight) // calculating the current jump height
        if jumpHeight == 0 {
            energy += 1
        } else {
            
            if jumpHeight > maxJump {
                return -1
            } else {
                energy += jumpHeight * 2
            }
        }
        previousHeight = distance
        
    }
    return energy - 2
}
levelCost(heights: [1, 1, 3, 1, 1], maxJump: 2)

