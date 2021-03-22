/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~ Prog [V.V.V] ~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Developped using SS3DE :

    Blablabla about the project.

    DD/MM/YYYY > [V.V.V] :
    - Added something.
    - Added something else.

    DD/MM/YYYY > [V.V.V] :
    - Added something that wasn't before.
    - Fixed a bug.
    - Added something else.
    - Added something else again.

    BUGS : Active bugs in last version.
    NOTES : Notes.

    Contact : ...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */




















// ----------------- DECLARATIONS ----------------

// ---- global vars ----
let angleStep    :Float = 0.1
let positionStep :Float = 50.0
let FOVstep      :Float = 0.0001



//mobility
let STATE__IDLE           :Int8 =  0
let STATE__ROTATE_X_PLUS  :Int8 =  1
let STATE__ROTATE_X_MINUS :Int8 = -1
let STATE__ROTATE_Y_PLUS  :Int8 =  2
let STATE__ROTATE_Y_MINUS :Int8 = -2
let STATE__GO_FRONT       :Int8 =  3
let STATE__GO_BACK        :Int8 = -3
let STATE__GO_LEFT        :Int8 =  4
let STATE__GO_RIGHT       :Int8 = -4
let STATE__GO_UP          :Int8 =  5
let STATE__GO_DOWN        :Int8 = -5
var state                 :Int8 = STATE__IDLE




















// ---------------- EVENTS ----------------

//events
func SS3DE_event(_ event:UInt8){
	switch(event){



		case SS3DE_DISPLAY:

			//red half-frame
			SS3DE_setColor(255,  0,  0)
			SS3DE_rectangle(
				Int(  SS3DE_width_2/2), Int(  SS3DE_height_2/2),
				Int(3*SS3DE_width_2/2), Int(3*SS3DE_height_2/2),
				SS3DE_EMPTY
			)



		case SS3DE_KEYBOARD:
			if SS3DE_keyState == SS3DE_KEY_RELEASED {
				if SS3DE_key == SS3DE_KEY_U || //rotations
					SS3DE_key == SS3DE_KEY_u ||
					SS3DE_key == SS3DE_KEY_J ||
					SS3DE_key == SS3DE_KEY_j ||
					SS3DE_key == SS3DE_KEY_I ||
					SS3DE_key == SS3DE_KEY_i ||
					SS3DE_key == SS3DE_KEY_K ||
					SS3DE_key == SS3DE_KEY_k ||
					SS3DE_key == SS3DE_KEY_Z || //movements
					SS3DE_key == SS3DE_KEY_z ||
					SS3DE_key == SS3DE_KEY_S ||
					SS3DE_key == SS3DE_KEY_s ||
					SS3DE_key == SS3DE_KEY_Q ||
					SS3DE_key == SS3DE_KEY_q ||
					SS3DE_key == SS3DE_KEY_D ||
					SS3DE_key == SS3DE_KEY_d ||
					SS3DE_key == SS3DE_KEY_A ||
					SS3DE_key == SS3DE_KEY_a ||
					SS3DE_key == SS3DE_KEY_E ||
					SS3DE_key == SS3DE_KEY_e {
					state = STATE__IDLE
				}

			//"key pressed" events
			}else{
				switch(SS3DE_key){

					//rotations
					case SS3DE_KEY_U:
						state = STATE__ROTATE_X_PLUS
					case SS3DE_KEY_u:
						state = STATE__ROTATE_X_PLUS
					case SS3DE_KEY_J:
						state = STATE__ROTATE_X_MINUS
					case SS3DE_KEY_j:
						state = STATE__ROTATE_X_MINUS
					case SS3DE_KEY_I:
						state = STATE__ROTATE_Y_MINUS
					case SS3DE_KEY_i:
						state = STATE__ROTATE_Y_MINUS
					case SS3DE_KEY_K:
						state = STATE__ROTATE_Y_PLUS
					case SS3DE_KEY_k:
						state = STATE__ROTATE_Y_PLUS

					//movements
					case SS3DE_KEY_Z:
						state = STATE__GO_FRONT
					case SS3DE_KEY_z:
						state = STATE__GO_FRONT
					case SS3DE_KEY_S:
						state = STATE__GO_BACK
					case SS3DE_KEY_s:
						state = STATE__GO_BACK
					case SS3DE_KEY_Q:
						state = STATE__GO_LEFT
					case SS3DE_KEY_q:
						state = STATE__GO_LEFT
					case SS3DE_KEY_D:
						state = STATE__GO_RIGHT
					case SS3DE_KEY_d:
						state = STATE__GO_RIGHT
					case SS3DE_KEY_A:
						state = STATE__GO_UP
					case SS3DE_KEY_a:
						state = STATE__GO_UP
					case SS3DE_KEY_E:
						state = STATE__GO_DOWN
					case SS3DE_KEY_e:
						state = STATE__GO_DOWN

					//get some information
					case SS3DE_KEY_SPACE:
						print("Angle : (\(SS3DE_angleX),\(SS3DE_angleY),0.000000), Position : (\(SS3DE_position.x),\(SS3DE_position.y),\(SS3DE_position.z))");

					//fullScreen
					case SS3DE_KEY_F:
						SS3DE_fullScreen()
					case SS3DE_KEY_f:
						SS3DE_fullScreen()

					//FOV
					case SS3DE_KEY_PAGE_UP:
						let old_FOV = SS3DE_FOV
						SS3DE_FOV += FOVstep
						print("Increasing FOV from \(old_FOV) to \(SS3DE_FOV).")
					case SS3DE_KEY_PAGE_DOWN:
						let old_FOV = SS3DE_FOV
						SS3DE_FOV -= FOVstep
						print("Decreasing FOV from \(old_FOV) to \(SS3DE_FOV).")

					case SS3DE_KEY_ESCAPE:
						SS3DE_stop();
						print("SS3DE stopped.")

					default:
						break
				}
			}



		case SS3DE_MOUSE_CLICK:
			if(SS3DE_mouseState == SS3DE_MOUSE_RELEASED){
				print("Released mouse.")
			}else{
				switch(SS3DE_mouseButton){
					case SS3DE_LEFT_BUTTON:
						print("Left mouse button pressed at (\(SS3DE_mouseX)\(SS3DE_mouseY)).")
					case SS3DE_MIDDLE_BUTTON:
						print("Middle mouse button pressed at (\(SS3DE_mouseX)\(SS3DE_mouseY)).")
					case SS3DE_RIGHT_BUTTON:
						print("Right mouse button pressed at (\(SS3DE_mouseX)\(SS3DE_mouseY)).")
					default:
						break
				}
			}



		case SS3DE_MOUSE_MOVE:
			print("Moved mouse in (\(SS3DE_mouseX),\(SS3DE_mouseY)).")



		case SS3DE_MOUSE_SCROLL:
			switch(SS3DE_mouseScroll){
				case SS3DE_SCROLL_UP:
					print("Scrolling up at (\(SS3DE_mouseX),\(SS3DE_mouseY)).")
				case SS3DE_SCROLL_DOWN:
					print("Scrolling down at (\(SS3DE_mouseX),\(SS3DE_mouseY)).");
				default:
					break
			}



		case SS3DE_TIMER:

			//movement updates
			switch(state){
				case STATE__ROTATE_X_MINUS:
					SS3DE_addAngleX(-angleStep)
				case STATE__ROTATE_X_PLUS:
					SS3DE_addAngleX(angleStep)
				case STATE__ROTATE_Y_MINUS:
					SS3DE_addAngleY(-angleStep)
				case STATE__ROTATE_Y_PLUS:
					SS3DE_addAngleY(angleStep)

				case STATE__GO_FRONT:
					SS3DE_goStraight(positionStep, SS3DE_FRONT)
				case STATE__GO_BACK:
					SS3DE_goStraight(positionStep, SS3DE_BACK)

				case STATE__GO_LEFT:
					SS3DE_goStraight(positionStep, SS3DE_LEFT)
				case STATE__GO_RIGHT:
					SS3DE_goStraight(positionStep, SS3DE_RIGHT)

				case STATE__GO_UP:
					SS3DE_goStraight(positionStep, SS3DE_UP)
				case STATE__GO_DOWN:
					SS3DE_goStraight(positionStep, SS3DE_DOWN)

				default:
					break
			}
			SS3DE_refresh()



		case SS3DE_RESIZE:
			print("Resized screen from (\(SS3DE_width),\(SS3DE_height)) to (\(SS3DE_newWidth),\(SS3DE_newHeight)).")



		default:
			break
	}
}




















// ---------------- EXECUTION ----------------

//init SS3DE
SS3DE_init("SS3DE [0.1.1]", 1280,640)
SS3DE_setTimer(100)



//build scene
buildScene()



//go in an interresting place + look at an interresting direction
SS3DE_addAngleX(1.800000)
SS3DE_addAngleY(6.499996)
SS3DE_position.x = -200
SS3DE_position.y =  600
SS3DE_position.z = -1150



//launch main loop
print("Starting SS3DE")
SS3DE_start()
