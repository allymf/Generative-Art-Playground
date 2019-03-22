//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, administerHormone(), collectOvules())
//#-end-hidden-code

//#-hidden-code

// This Won't be shown
import PlaygroundSupport
func administerHormone(){
    if let controller = PlaygroundPage.current.liveView as? PlaygroundLiveViewMessageHandler{
        
        //        let action = .string("inject")
        //        let target = .string("target")
        //        let message = .dictionary(["action": action, "target": target])
        
        controller.send(.string("injectHormone"))
    }
}

func collectOvules(){
    if let controller = PlaygroundPage.current.liveView as? PlaygroundLiveViewMessageHandler{
        controller.send(.string("extractOvules"))
    }
}
//#-end-hidden-code

/*:
 
 # Ovules Collection
 ## Estimulating
 
 ###
 
 In normal conditions, the woman will secrete FSH (Follicles Stimulation Hormone) to the ovaries in order to stimulate the ovary to maturate the follicles. In average, only one follicle gets fully mature. When it's on the right time, the brain releases an hormone that makes the ovulation to begin, then the follicle will rupture and release the egg.
 
 
 ###
 When assisting a fertilization, the doctor will administer FSH in the donor in a level that is higher than the natural, causing a controlled over stimulation on the ovary, that will result on much more follicles to get fully mature.
 
 ###
 Now it's your time to administer the hormone. Try the command below:
 - Example:
 `administerHormone()`
 */

/*#-editable-code Try administering the hormone*/ /*#-end-editable-code*/

/*:
 ## Collecting
 ###
 Once the follicles are mature, they are collected before ovulation. They ovules will be used later for the fertilization.
 ###
 Now it's your time again to collect the ovules. Try the command below:
 - Example:
 collectOvules()
 */
/*#-editable-code Try collecting ovules*/ /*#-end-editable-code*/
/*:
 [Next Page: Selecting the Right Spermatozoon](@next)
 */
