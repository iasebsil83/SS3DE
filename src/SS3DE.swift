// ----------------- IMPORTATIONS ----------------

//standard
import Foundation












/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SS3DE [0.1.1] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        Simple Swift 3Dimensional Engine

    Developped using freeglut3 (or just GLUT), a graphical 2D/3D engine.

    To install glut on linux-apt systems, just install the package :
                               freeglut3-dev

        This library is a Swift adaptation of another library I made in C which
    name is S3DE. For more information about S3DE, please check out here :
                    https://github.com/iasebsil83/S3DE

        Altought GLUT has a 3D engine implemented inside, SS3DE uses only the
    2D engine of GLUT and gives it a third dimension manually. This was made
    like this to make the engine the more SIMPLE.

        The whole 2D engine of SS3DE is made from SS2DE (which is another
    library I made). You can check it out at :
                      https://github.com/iasebsil83/SS2DE

        This implies that all you can do with SS2DE is possible with SS3DE too.
    You can use SS3DE as a 3D engine, 2D engine or both as you want.
    BE CAREFUL ! Always add your plaks AFTER SS3DE_init()

    18/02/2021 > [0.1.0] :
    - Created SS3DE.

    22/03/2021 > [0.1.1] :
    - Added SS3DE_MOUSE_SCROLL event.
    - Removed some useless importations.

    BUGS : It seems that only half of objects are correctly rendered.
    NOTES : .

    Contact     : i.a.sebsil83@gmail.com
    Youtube     : https://www.youtube.com/user/IAsebsil83
    GitHub repo : https://github.com/iasebsil83

    Let's Code !                                  By I.A.
******************************************************************************************
    LICENCE :
    SS3DE
    Copyright (C) 2021  Sebastien SILVANO
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program.

    If not, see <https://www.gnu.org/licenses/>.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */












// ----------------- DECLARATIONS ----------------

//keyboard events
let SS3DE_KEY_PRESSED  :UInt8 = 0
let SS3DE_KEY_RELEASED :UInt8 = 1



//function keys
let SS3DE_KEY_F1  :UInt16 = 0x101
let SS3DE_KEY_F2  :UInt16 = 0x102
let SS3DE_KEY_F3  :UInt16 = 0x103
let SS3DE_KEY_F4  :UInt16 = 0x104
let SS3DE_KEY_F5  :UInt16 = 0x105
let SS3DE_KEY_F6  :UInt16 = 0x106
let SS3DE_KEY_F7  :UInt16 = 0x107
let SS3DE_KEY_F8  :UInt16 = 0x108
let SS3DE_KEY_F9  :UInt16 = 0x109
let SS3DE_KEY_F10 :UInt16 = 0x10a
let SS3DE_KEY_F11 :UInt16 = 0x10b
let SS3DE_KEY_F12 :UInt16 = 0x10c



//command keys
let SS3DE_KEY_ESCAPE    :UInt16 = 0x01b
let SS3DE_KEY_END       :UInt16 = 0x16b
let SS3DE_KEY_HOME      :UInt16 = 0x16a
let SS3DE_KEY_PAGE_UP   :UInt16 = 0x168
let SS3DE_KEY_PAGE_DOWN :UInt16 = 0x169
let SS3DE_KEY_DELETE    :UInt16 = 0x07f
let SS3DE_KEY_BACKSPACE :UInt16 = 0x008
let SS3DE_KEY_INSERT    :UInt16 = 0x16c



//combination keys
let SS3DE_KEY_LEFT_SHIFT  :UInt16 = 0x170
let SS3DE_KEY_RIGHT_SHIFT :UInt16 = 0x171
let SS3DE_KEY_LEFT_CTRL   :UInt16 = 0x172
let SS3DE_KEY_RIGHT_CTRL  :UInt16 = 0x173
let SS3DE_KEY_LEFT_ALT    :UInt16 = 0x174



//special characters
let SS3DE_KEY_BACK_QUOTE  :UInt16 = 0x0b2
let SS3DE_KEY_AMPERSAND   :UInt16 = 0x026
let SS3DE_KEY_DBL_QUOTE   :UInt16 = 0x022 //double quote
let SS3DE_KEY_QUOTE       :UInt16 = 0x027
let SS3DE_KEY_UNDERSCORE  :UInt16 = 0x05f
let SS3DE_KEY_TAB         :UInt16 = 0x009
let SS3DE_KEY_CIRCUMFLEX  :UInt16 = 0x05e
let SS3DE_KEY_DOLLAR      :UInt16 = 0x024
let SS3DE_KEY_LESS_THAN   :UInt16 = 0x03c //<
let SS3DE_KEY_GREA_THAN   :UInt16 = 0x03e //>
let SS3DE_KEY_COMA        :UInt16 = 0x02c
let SS3DE_KEY_SEMI_COLON  :UInt16 = 0x03b
let SS3DE_KEY_COLON       :UInt16 = 0x03a
let SS3DE_KEY_EXCLAMATION :UInt16 = 0x021
let SS3DE_KEY_SPACE       :UInt16 = 0x020
let SS3DE_KEY_RETURN      :UInt16 = 0x00d
let SS3DE_KEY_TILDE       :UInt16 = 0x07e
let SS3DE_KEY_HASHTAG     :UInt16 = 0x023
let SS3DE_KEY_PARENTH_B   :UInt16 = 0x028 //parentheses begin
let SS3DE_KEY_PARENTH_E   :UInt16 = 0x029 //            end
let SS3DE_KEY_BRACKETS_B  :UInt16 = 0x05b //brackets begin
let SS3DE_KEY_BRACKETS_E  :UInt16 = 0x05d //         end
let SS3DE_KEY_BRACES_B    :UInt16 = 0x07b //braces begin
let SS3DE_KEY_BRACES_E    :UInt16 = 0x07d //       end
let SS3DE_KEY_POINT       :UInt16 = 0x02e
let SS3DE_KEY_PARAGRAPH   :UInt16 = 0x0a7
let SS3DE_KEY_DEGREE      :UInt16 = 0x0b0
let SS3DE_KEY_PIPE        :UInt16 = 0x07c
let SS3DE_KEY_BACKSLASH   :UInt16 = 0x05c
let SS3DE_KEY_AT          :UInt16 = 0x040
let SS3DE_KEY_POUND       :UInt16 = 0x0a3
let SS3DE_KEY_DIERESIS    :UInt16 = 0x0a8
let SS3DE_KEY_BLOCK       :UInt16 = 0x0a4
let SS3DE_KEY_ACUTE       :UInt16 = 0x060
let SS3DE_KEY_MU          :UInt16 = 0x0b5
let SS3DE_KEY_QUESTION    :UInt16 = 0x03f



//numbers & maths
let SS3DE_KEY_0        :UInt16 = 0x030
let SS3DE_KEY_1        :UInt16 = 0x031
let SS3DE_KEY_2        :UInt16 = 0x032
let SS3DE_KEY_3        :UInt16 = 0x033
let SS3DE_KEY_4        :UInt16 = 0x034
let SS3DE_KEY_5        :UInt16 = 0x035
let SS3DE_KEY_6        :UInt16 = 0x036
let SS3DE_KEY_7        :UInt16 = 0x037
let SS3DE_KEY_8        :UInt16 = 0x038
let SS3DE_KEY_9        :UInt16 = 0x039
let SS3DE_KEY_PLUS     :UInt16 = 0x02b
let SS3DE_KEY_MINUS    :UInt16 = 0x02d
let SS3DE_KEY_ASTERISK :UInt16 = 0x02a
let SS3DE_KEY_SLASH    :UInt16 = 0x02f
let SS3DE_KEY_EQUAL    :UInt16 = 0x03d
let SS3DE_KEY_PERCENT  :UInt16 = 0x025



//arrows
let SS3DE_KEY_LEFT  :UInt16 = 0x164
let SS3DE_KEY_UP    :UInt16 = 0x165
let SS3DE_KEY_RIGHT :UInt16 = 0x166
let SS3DE_KEY_DOWN  :UInt16 = 0x167



//capital letters
let SS3DE_KEY_A :UInt16 = 0x041
let SS3DE_KEY_B :UInt16 = 0x042
let SS3DE_KEY_C :UInt16 = 0x043
let SS3DE_KEY_D :UInt16 = 0x044
let SS3DE_KEY_E :UInt16 = 0x045
let SS3DE_KEY_F :UInt16 = 0x046
let SS3DE_KEY_G :UInt16 = 0x047
let SS3DE_KEY_H :UInt16 = 0x048
let SS3DE_KEY_I :UInt16 = 0x049
let SS3DE_KEY_J :UInt16 = 0x04a
let SS3DE_KEY_K :UInt16 = 0x04b
let SS3DE_KEY_L :UInt16 = 0x04c
let SS3DE_KEY_M :UInt16 = 0x04d
let SS3DE_KEY_N :UInt16 = 0x04e
let SS3DE_KEY_O :UInt16 = 0x04f
let SS3DE_KEY_P :UInt16 = 0x050
let SS3DE_KEY_Q :UInt16 = 0x051
let SS3DE_KEY_R :UInt16 = 0x052
let SS3DE_KEY_S :UInt16 = 0x053
let SS3DE_KEY_T :UInt16 = 0x054
let SS3DE_KEY_U :UInt16 = 0x055
let SS3DE_KEY_V :UInt16 = 0x056
let SS3DE_KEY_W :UInt16 = 0x057
let SS3DE_KEY_X :UInt16 = 0x058
let SS3DE_KEY_Y :UInt16 = 0x059
let SS3DE_KEY_Z :UInt16 = 0x05a

//minimal letters
let SS3DE_KEY_a :UInt16 = 0x061
let SS3DE_KEY_b :UInt16 = 0x062
let SS3DE_KEY_c :UInt16 = 0x063
let SS3DE_KEY_d :UInt16 = 0x064
let SS3DE_KEY_e :UInt16 = 0x065
let SS3DE_KEY_f :UInt16 = 0x066
let SS3DE_KEY_g :UInt16 = 0x067
let SS3DE_KEY_h :UInt16 = 0x068
let SS3DE_KEY_i :UInt16 = 0x069
let SS3DE_KEY_j :UInt16 = 0x06a
let SS3DE_KEY_k :UInt16 = 0x06b
let SS3DE_KEY_l :UInt16 = 0x06c
let SS3DE_KEY_m :UInt16 = 0x06d
let SS3DE_KEY_n :UInt16 = 0x06e
let SS3DE_KEY_o :UInt16 = 0x06f
let SS3DE_KEY_p :UInt16 = 0x070
let SS3DE_KEY_q :UInt16 = 0x071
let SS3DE_KEY_r :UInt16 = 0x072
let SS3DE_KEY_s :UInt16 = 0x073
let SS3DE_KEY_t :UInt16 = 0x074
let SS3DE_KEY_u :UInt16 = 0x075
let SS3DE_KEY_v :UInt16 = 0x076
let SS3DE_KEY_w :UInt16 = 0x077
let SS3DE_KEY_x :UInt16 = 0x078
let SS3DE_KEY_y :UInt16 = 0x079
let SS3DE_KEY_z :UInt16 = 0x07a



//non-ASCII letters
let SS3DE_KEY_A_ACCENT_E :UInt16 = 0x0e9 //acute accentuated E
let SS3DE_KEY_G_ACCENT_E :UInt16 = 0x0e8 //grave accentuated E
let SS3DE_KEY_G_ACCENT_A :UInt16 = 0x0e0 //grave accentuated A
let SS3DE_KEY_G_ACCENT_U :UInt16 = 0x0f9 //grave accentuated U
let SS3DE_KEY_CEDILLA_C  :UInt16 = 0x0e7



//event constants
let SS3DE_KEYBOARD     :UInt8 = 0
let SS3DE_MOUSE_CLICK  :UInt8 = 1
let SS3DE_MOUSE_MOVE   :UInt8 = 2
let SS3DE_MOUSE_SCROLL :UInt8 = 3
let SS3DE_DISPLAY      :UInt8 = 4
let SS3DE_RESIZE       :UInt8 = 5
let SS3DE_TIMER        :UInt8 = 6



//mouse constants
let SS3DE_MOUSE_PRESSED  :UInt8 = 0
let SS3DE_MOUSE_RELEASED :UInt8 = 1
let SS3DE_LEFT_BUTTON    :UInt8 = 0
let SS3DE_MIDDLE_BUTTON  :UInt8 = 1
let SS3DE_RIGHT_BUTTON   :UInt8 = 2
let SS3DE_SCROLL_UP      :UInt8 = 3
let SS3DE_SCROLL_DOWN    :UInt8 = 4



//drawing
let SS3DE_EMPTY :UInt8 = 0
let SS3DE_FILL  :UInt8 = 1



//3D constants
let SS3DE_RENDER_DISTANCE    :Int32  = 1000000000 //in pixels
let SS3DE_SKYCOLOR           :UInt32 = 16777215  //RGBA color corresponding to (0,255,255,255) (perfect cyan)
let SS3DE_TEXT_FOR_FLOAT     :Int32 = 46
let SS3DE_BACKSCENE_LIMIT    :Int32 = 0 //max z coordinate for the scene behind you
let SS3DE_FRONT              :UInt8 = 0 //    to be rendered (in pixels)
let SS3DE_BACK               :UInt8 = 1
let SS3DE_LEFT               :UInt8 = 2
let SS3DE_RIGHT              :UInt8 = 3
let SS3DE_UP                 :UInt8 = 4
let SS3DE_DOWN               :UInt8 = 5
let SS3DE_STL_BICOLOR_ENABLE :Bool = true
let SS3DE_STL_AMPLIFICATION :Float = 25.0



//3D point
struct XYZ{
	var x :Float = 0.0
	var y :Float = 0.0
	var z :Float = 0.0
}



//3D plaks
struct Plak{
	var points :[XYZ] = [XYZ]()
	var color  :UInt32 = 0
}












// ---------------- INITIALISATION ----------------

//window
var SS3DE_window               :Int32 = -1
var SS3DE_timedExecution_delay :Int32 = -1



//event variables
var SS3DE_mouseState  :UInt8  = 0 //mouse
var SS3DE_mouseButton :UInt8  = 0
var SS3DE_mouseScroll :UInt8  = 0
var SS3DE_mouseX      :UInt32 = 0
var SS3DE_mouseY      :UInt32 = 0
var SS3DE_keyState    :UInt8  = 0 //keyboard
var SS3DE_key         :UInt16 = 0
var SS3DE_newWidth    :UInt32 = 0 //resize
var SS3DE_newHeight   :UInt32 = 0
var SS3DE_width       :UInt32 = 0
var SS3DE_height      :UInt32 = 0



//3D engine
var SS3DE_width_2     :UInt32 = 0
var SS3DE_height_2    :UInt32 = 0
var SS3DE_colorBuffer :UnsafeMutableRawPointer? = nil
var SS3DE_depthBuffer :UnsafeMutableRawPointer? = nil



//basic attributes
var SS3DE_angleX :Float = 0.0
var SS3DE_angleY :Float = 0.0
var SS3DE_cosX   :Float = 0.0
var SS3DE_sinX   :Float = 0.0
var SS3DE_cosY   :Float = 0.0
var SS3DE_sinY   :Float = 0.0
var SS3DE_position = XYZ(
	x: 0.0,
	y: 0.0,
	z: 0.0
)
var SS3DE_FOV :Float = 0.001



//plaks
var SS3DE_plaks :[Plak] = [Plak]()












// ---------------- 3D ENGINE ----------------

//space rotations & movements
func SS3DE_addAngleX(_ angle:Float){
	SS3DE_angleX += angle

	//recalculate cos & sin
	SS3DE_cosX = cos(SS3DE_angleX)
	SS3DE_sinX = sin(SS3DE_angleX)
}

func SS3DE_addAngleY(_ angle:Float){
	SS3DE_angleY += angle

	//recalculate cos & sin
	SS3DE_cosY = cos(SS3DE_angleY)
	SS3DE_sinY = sin(SS3DE_angleY)
}

func SS3DE_goStraight(_ distance:Float, _ direction:UInt8){
	switch(direction){
		case SS3DE_FRONT:
			//temporarily broken
			//SS3DE_position.x += distance*SS3DE_sinY
			//SS3DE_position.y += distance*SS3DE_cosY*SS3DE_sinX
			//SS3DE_position.z += distance*SS3DE_cosY*SS3DE_cosX
			SS3DE_position.z += distance
		case SS3DE_BACK:
			//temporarily broken
			//SS3DE_position.x -= distance*SS3DE_sinY
			//SS3DE_position.y -= distance*SS3DE_cosY*SS3DE_sinX
			//SS3DE_position.z -= distance*SS3DE_cosY*SS3DE_cosX
			SS3DE_position.z -= distance
		case SS3DE_LEFT:
			//temporarily broken
			//SS3DE_position.x -= distance*SS3DE_cosY
			//SS3DE_position.y += distance*SS3DE_sinY*SS3DE_sinX
			//SS3DE_position.z += distance*SS3DE_sinY*SS3DE_cosX
			SS3DE_position.x -= distance
		case SS3DE_RIGHT:
			//temporarily broken
			//SS3DE_position.x += distance*SS3DE_cosY
			//SS3DE_position.y -= distance*SS3DE_sinY*SS3DE_sinX
			//SS3DE_position.z -= distance*SS3DE_sinY*SS3DE_cosX
			SS3DE_position.x += distance
		case SS3DE_UP:
			//temporarily broken
			//SS3DE_position.x -= distance*SS3DE_cosY
			//SS3DE_position.y += distance*SS3DE_sinY*SS3DE_cosX
			//SS3DE_position.z -= distance*SS3DE_sinY*SS3DE_sinX
			SS3DE_position.y += distance
		case SS3DE_DOWN:
			//temporarily broken
			//SS3DE_position.x += distance*SS3DE_cosY
			//SS3DE_position.y -= distance*SS3DE_sinY*SS3DE_cosX
			//SS3DE_position.z += distance*SS3DE_sinY*SS3DE_sinX
			SS3DE_position.y -= distance
		default:
			print("RUNTIME ERROR > SS3DE.swift : SS3DE_goStraight() : Unknown direction \"\(direction)\".")
	}
}



//render engine
func SS3DE_real(_ pnt:XYZ) -> XYZ {
	//centralizing to (0,0,0) from SS3DE_position
	//temporarily broken
	//point.x -= SS3DE_position.x
	//point.y -= SS3DE_position.y
	//point.z -= SS3DE_position.z
	var point = pnt

	//temporary variables
	let x :Float = point.x
	let y :Float = point.y
	var z :Float = point.z

	//y rotation build
	point.x = z*SS3DE_sinY + x*SS3DE_cosY
	      z = z*SS3DE_cosY - x*SS3DE_sinY

	//x rotation build
	point.y = z*SS3DE_sinX + y*SS3DE_cosX
	point.z = z*SS3DE_cosX - y*SS3DE_sinX

	//S3DE_goStraight() alternative
	point.x -= SS3DE_position.x
	point.y -= SS3DE_position.y
	point.z -= SS3DE_position.z

	//perspective
	if point.z > 0 {
		let FOVcoef :Float = expf(-SS3DE_FOV*point.z)

		//x
		if point.x > Float(SS3DE_width_2) {
			point.x = Float(SS3DE_width_2) + FOVcoef*( Float(point.x) - Float(SS3DE_width_2) )
		}else if point.x < Float(SS3DE_width_2) {
			point.x = Float(SS3DE_width_2) - FOVcoef*( Float(SS3DE_width_2) - Float(point.x) )
		}

		//y
		if point.y > Float(SS3DE_height_2) {
			point.y = Float(SS3DE_height_2) + FOVcoef*( Float(point.y) - Float(SS3DE_height_2) )
		}else if point.y < Float(SS3DE_height_2) {
			point.y = Float(SS3DE_height_2) - FOVcoef*( Float(SS3DE_height_2) - Float(point.y) )
		}
	}

	return point
}

func SS3DE_getRealZ(_ p:[XYZ], _ x:Int32,_ y:Int32) -> Float { //get the z corresponding to the point (x,y,?) of the plak
	//                                                        //with x and y as real coordinates on the screen
	//                                                                                                      ------->   ------->
	let a = (p[1].y - p[0].y)*(p[2].z - p[0].z) - (p[1].z - p[0].z)*(p[2].y - p[0].y) //vectorial product : p[0]p[1] ^ p[0]p[2]
	let b = (p[2].x - p[0].x)*(p[1].z - p[0].z) - (p[2].z - p[0].z)*(p[1].x - p[0].x)
	let c = (p[1].x - p[0].x)*(p[2].y - p[0].y) - (p[1].y - p[0].y)*(p[2].x - p[0].x)
	let d = -(a*p[0].x + b*p[0].y + c*p[0].z)           //p[0] belongs to the plan
	//so we have plan's equation : a*x + b*y + c*z + d = 0 (useful to find the z corresponding to an x and y)
	var result = a*Float(x) + b*Float(y) + d
	result = -result
	return result/c
}

func SS3DE_getLine(_ x1:Int32,_ y1:Int32, _ x2:Int32,_ y2:Int32) -> UnsafeMutableRawPointer { //create a chain of coordinates following the patern :
	//get differences in x and y                                                              //    int 0 : chain length
	let difX :Int32 = abs(x2-x1)                                                              //    int 1,2 : x and y coordinates of first pixel
	let difY :Int32 = abs(y2-y1)                                                              //    int 3,4 : x and y coordinates of second pixel ...

	//void line
	if difX == 0 && difY == 0 {
		let line = UnsafeMutableRawPointer.allocate(
			byteCount: MemoryLayout<Int32>.stride,
			alignment: MemoryLayout<Int32>.alignment
		)

		//set length
		line.storeBytes(
			of: Int32(0),
			as: Int32.self
		)

		return line
	}

	//non-void line
	if difX >= difY {

		//prepare line
		let line = UnsafeMutableRawPointer.allocate(
			byteCount: MemoryLayout<Int32>.stride * (1 + 2*Int(difX)),
			alignment: MemoryLayout<Int32>.alignment
		)

		//set length
		line.storeBytes(
			of: difX,
			as: Int32.self
		)

		//init line vars
		var x :Float = Float(x1)
		var y :Float = Float(y1)
		let stepX :Float = (x2 > x1) ? Float(1) : Float(-1)
		let stepY :Float = Float(y2-y1)/Float(difX) //not using difY : sign is important !

		//for each coordinate
		for p in 0..<difX {

			//store coordinate
			//line[1 + 2*p] = x
			line.advanced(
				by: (1 + 2*Int(p)) * MemoryLayout<Int32>.stride
			).storeBytes(
				of: Int32(x),
				as: Int32.self
			)
			//line[2 + 2*p] = y
			line.advanced(
				by: (2 + 2*Int(p)) * MemoryLayout<Int32>.stride
			).storeBytes(
				of: Int32(y),
				as: Int32.self
			)
			x += stepX
			y += stepY
		}

		return line

	}else{

		//prepare line
		let line = UnsafeMutableRawPointer.allocate(
			byteCount: MemoryLayout<Int32>.stride * (1 + 2*Int(difY)),
			alignment: MemoryLayout<Int32>.alignment
		)

		//set length
		line.storeBytes(
			of: difY,
			as: Int32.self
		)

		//init line vars
		var x :Float = Float(x1)
		var y :Float = Float(y1)
		let stepX :Float = Float(x2-x1)/Float(difY) //not using difY : sign is important !
		let stepY :Float = (y2 > y1) ? 1 : -1

		//for each coordinate
		for p in 0..<difY {

			//store coordinate
			//line[1 + 2*p] = x
			line.advanced(
				by: (1 + 2*Int(p)) * MemoryLayout<Int32>.stride
			).storeBytes(
				of: Int32(x),
				as: Int32.self
			)
			//line[2 + 2*p] = y
			line.advanced(
				by: (2 + 2*Int(p)) * MemoryLayout<Int32>.stride
			).storeBytes(
				of: Int32(y),
				as: Int32.self
			)
			x += stepX
			y += stepY
		}

		return line
	}
}

func SS3DE_render(_ p:Plak){

	//get real points
	var realPoints :[XYZ] = []
	realPoints.append( SS3DE_real(p.points[0]) )
	realPoints.append( SS3DE_real(p.points[1]) )
	realPoints.append( SS3DE_real(p.points[2]) )

	//get main line (the first one)
	let line_01 = SS3DE_getLine(
		Int32(realPoints[0].x), Int32(realPoints[0].y),
		Int32(realPoints[1].x), Int32(realPoints[1].y)
	)

	//for each pixel in main line
	var jx :Int32
	var jy :Int32
	for i in 0..<line_01.load(as: Int32.self) {

		//get line from current pixel to third point
		let line_i2 = SS3DE_getLine(
			//line_01[1 + 2*i]
			line_01.advanced(
				by: (1 + 2*Int(i)) * MemoryLayout<Int32>.stride
			).load(as: Int32.self),
			//line_01[2 + 2*i]
			line_01.advanced(
				by: (2 + 2*Int(i)) * MemoryLayout<Int32>.stride
			).load(as: Int32.self),
			Int32(realPoints[2].x), Int32(realPoints[2].y)
		)

		//for each pixel in current line
		for j in 0..<line_i2.load(as: Int32.self) {
			//line_i2[1 + 2*j]
			jx = line_i2.advanced(
				by: (1 + 2*Int(j)) * MemoryLayout<Int32>.stride
			).load(as: Int32.self)
			//line_i2[2 + 2*j]
			jy = line_i2.advanced(
				by: (2 + 2*Int(j)) * MemoryLayout<Int32>.stride
			).load(as: Int32.self)

			//if this pixel is inside the screen
			if SS3DE_inScreen(jx,jy) {

				//compare with currently stored in depth buffer
				let newZ :Float = SS3DE_getRealZ(realPoints, jx,jy)
				let depthBuffer_olddValue = SS3DE_depthBuffer!.advanced(
					by: ( Int(jy)*Int(SS3DE_width) + Int(jx)) * MemoryLayout<Float>.stride
				).load(as: Float.self)
				if( Int32(newZ) > SS3DE_BACKSCENE_LIMIT && newZ < depthBuffer_olddValue ){

					//set new depth at this coordinate
					SS3DE_depthBuffer!.advanced(
						by: ( Int(jy)*Int(SS3DE_width) + Int(jx)) * MemoryLayout<Float>.stride
					).storeBytes(
						of: newZ,
						as: Float.self
					)

					//set new color at this coordinate
					SS3DE_colorBuffer!.advanced(
						by: ( Int(jy)*Int(SS3DE_width) + Int(jx)) * MemoryLayout<UInt32>.stride
					).storeBytes(
						of: p.color,
						as: UInt32.self
					)
				}
			}
		}

		//free current line
		line_i2.deallocate()
	}

	//free main line & realpoints
	line_01.deallocate()
}












// ---------------- PLAKS MANAGEMENT ----------------
func SS3DE_addPlak(
	_ x0:Float,_ y0:Float,_ z0:Float,
	_ x1:Float,_ y1:Float,_ z1:Float,
	_ x2:Float,_ y2:Float,_ z2:Float,
	_ color:UInt32 //in RGBA format (see S3DE_setPixelRGBA())
){
	//create new plak
	let lastIndex = SS3DE_plaks.count
	SS3DE_plaks.append(Plak())

	//create the 3 points inside new plak
	SS3DE_plaks[lastIndex].points.append(XYZ())
	SS3DE_plaks[lastIndex].points.append(XYZ())
	SS3DE_plaks[lastIndex].points.append(XYZ())

	//set new plak values
	SS3DE_plaks[lastIndex].points[0].x = x0; SS3DE_plaks[lastIndex].points[0].y = y0; SS3DE_plaks[lastIndex].points[0].z = z0
	SS3DE_plaks[lastIndex].points[1].x = x1; SS3DE_plaks[lastIndex].points[1].y = y1; SS3DE_plaks[lastIndex].points[1].z = z1
	SS3DE_plaks[lastIndex].points[2].x = x2; SS3DE_plaks[lastIndex].points[2].y = y2; SS3DE_plaks[lastIndex].points[2].z = z2
	SS3DE_plaks[lastIndex].color = color
}

func SS3DE_delPlak(_ index:Int32){

	//error cases
	if index < 0 || index >= SS3DE_plaks.count {
		print("RUNTIME ERROR > SS3DE.swift : SS3DE_delPlak() : Incorrect plak index \"\(index)\".")
		return
	}

	//remove element
	SS3DE_plaks.remove(at: Int(index))
}

func SS3DE_getPlak(_ index:Int32) -> Plak? {

	//error cases
	if index < 0 || index >= SS3DE_plaks.count {
		print("RUNTIME ERROR > SS3DE.swift : S3DE_getPlak() : Incorrect plak index \"\(index)\".\n")
		return nil
	}

	return SS3DE_plaks[Int(index)]
}












// ---------------- PLAKS / STL FILE CONVERSIONS ----------------
/*func SS3DE_strcmpN(_ s1:String, _ s2:String, _ N:Int32) -> Bool {

	//error cases
	if(s1.endIndex <= N || s2.endIndex <= N){
		print("RUNTIME ERROR > SS3DE.swift : SS3DE_strcmpN() : At least one string is too short (\"\(s1)\" & \"\(s2)\", \(N) characters needed).")
		return false
	}

	//compare the first N characters
	for c in 0..N {
		if s1[c] != s2[c] {
			return false
		}
	}
	return true
}

func SS3DE_addPlaksFromSTL(_ fileName:String, _ dx:Int32,_ dy:Int32,_ dz:Int32, _ color:UInt32){

	//file management
	FILE* f = fopen(fileName,"r")
	if f == nil {
		print("RUNTIME ERROR > SS3DE.swift : SS3DE_addPlaksFromSTL() : No file \"\(fileName)\" found.")
		return
	}

	//get file length
	fseek(f, 0, SEEK_END)
	let file_len :Int32 = ftell(f)
	fseek(f, 0, SEEK_SET) //<=> rewind(f);

	//init text buffer
	var text:String = ""

	//read from file
	fgets(text, file_len, f)
	fscanf(f, "%[^!]", text)
	fclose(f)

	//prepare variables for analysis
	var line_start :Int32 = 0
	var vertexNbr  :Int32 = 0 //0:(x1,y1,z1), 1:(x2,y2,z2), 2:(x3,y3,z3)
	var cooNbr     :Int32 = 0 //0:x, 1:y, 2:z
	var x1 :Float = 0.0; var y1 :Float = 0.0; var z1 :Float = 0.0
	var x2 :Float = 0.0; var y2 :Float = 0.0; var z2 :Float = 0.0
	var x3 :Float = 0.0; var y3 :Float = 0.0; var z3 :Float = 0.0
	var floatText :String= "" //malloc(S3DE_TEXT_FOR_FLOAT)

	//analysis
	for c in 0..<file_len {
		if text[c] == '\n' { //analyse line (from text[line_start] until text[c-1] included)

			//start plak registration
			if SS3DE_strcmpN(text[line_start..], "  outer loop", 12) {
				vertexNbr = 1;
			}
			else if SS3DE_strcmpN(text[line_start..], "  vertex ",9) {

				switch(vertexNbr){
					case 1:
						//forward until the first number
						line_start += 9

						//register first point
						var i=0
						while line_start+i <= c {

							if(text[line_start+i] == ' ' || text[line_start+i] == '\n'){
								//separation found
								switch(cooNbr){
									case 0: //x
										x1 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dx)
										cooNbr += 1
									case 1: //y
										y1 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dy)
										cooNbr += 1
									case 2: //z
										z1 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dz)
										cooNbr = 0
								}

								//reset floatText
								floatText = ""
							}else{
								floatText.append(text[line_start+i])
							}

							i += 1
						}
						vertexNbr += 1

					case 2:
						//forward until the first number
						line_start += 9

						//register second point
						var i=0
						while line_start+i <= c {

							if(text[line_start+i] == ' ' || text[line_start+i] == '\n'){
								//separation found
								switch(cooNbr){
									case 0: //x
										x2 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dx)
										cooNbr += 1
									case 1: //y
										y2 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dy)
										cooNbr += 1
									case 2: //z
										z2 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dz)
										cooNbr = 0
								}

								//reset floatText
								floatText = ""
							}else{
								floatText.append(text[line_start+i])
							}

							i += 1
						}
						vertexNbr += 1

					case 3:
						//forward until the first number
						line_start += 9

						//register third point
						var i=0
						while line_start+i <= c {

							if text[line_start+i] == ' ' || text[line_start+i] == '\n' {
								//separation found
								switch(cooNbr){
									case 0: //x
										x3 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dx)
										cooNbr += 1
									case 1: //y
										y3 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dy)
										cooNbr += 1
									case 2: //z
										z3 = atof(floatText)*SS3DE_STL_AMPLIFICATION + Float(dz)
										cooNbr = 0
								}

								//reset floatText
								floatText = ""
							}else{
								floatText.append(text[line_start+i])
							}

							i += 1
						}

						//terminate registration of the plak
						if SS3DE_STL_BICOLOR_ENABLE {
							if SS3DE_plaksNbr%2 == 0 {
								SS3DE_addPlak(
									x1,y1,z1,
									x2,y2,z2,
									x3,y3,z3, color //regular color
								)
							}else{
								SS3DE_addPlak(
									x1,y1,z1,
									x2,y2,z2,
									x3,y3,z3, (~color)|255 //opposite color
								)
							}
						}else{
							SS3DE_addPlak(
								x1,y1,z1,
								x2,y2,z2,
								x3,y3,z3, color //regular color
							)
						}
						vertexNbr = 0
				}
			}
			line_start = c+1
		}
	}
}

func S3DE_saveSTLfromPlaks(_ fileName:String){

	//file management
	UnsafeMutablePointer<FILE> f = fopen(fileName, "w")
	if f == nil {
		print("RUNTIME ERROR > SS3DE.swift : SS3DE_saveSTLfromPlaks() : Unable to create or edit file \"\(fileName)\".")
		return
	}

	//export
	fprintf(f,"solid \n")
	for p in 0..<SS3DE_plaks.count {
		var tempP = SS3DE_getPlak(p)
		current = tempP.points
		fprintf(f," facet normal %f %f %f\n", //                    ------------------->   ------------------->
			Float(                          //vectorial product : current[0]current[1] ^ current[0]current[2]
				(current[1].y - current[0].y)*(current[2].z - current[0].z) -
				(current[1].z - current[0].z)*(current[2].y - current[0].y)
			) / SS3DE_STL_AMPLIFICATION,
			Float(
				(current[2].x - current[0].x)*(current[1].z - current[0].z) -
				(current[2].z - current[0].z)*(current[1].x - current[0].x)
			) / SS3DE_STL_AMPLIFICATION,
			Float(
				(current[1].x - current[0].x)*(current[2].y - current[0].y) -
				(current[1].y - current[0].y)*(current[2].x - current[0].x)
			) / SS3DE_STL_AMPLIFICATION
		)
		fprintf(f,"  outer loop\n")
		fprintf(f,"  vertex %f %f %f\n",
			Float(current[0].x) / SS3DE_STL_AMPLIFICATION,
			Float(current[0].y) / SS3DE_STL_AMPLIFICATION,
			Float(current[0].z) / SS3DE_STL_AMPLIFICATION
		)
		fprintf(f,"  vertex %f %f %f\n",
			Float(current[1].x) / SS3DE_STL_AMPLIFICATION,
			Float(current[1].y) / SS3DE_STL_AMPLIFICATION,
			Float(current[1].z) / SS3DE_STL_AMPLIFICATION
		)
		fprintf(f,"  vertex %f %f %f\n",
			Float(current[2].x) / SS3DE_STL_AMPLIFICATION,
			Float(current[2].y) / SS3DE_STL_AMPLIFICATION,
			Float(current[2].z) / SS3DE_STL_AMPLIFICATION
		)
		fprintf(f,"  endloop\n")
		fprintf(f," endfacet\n\n")
	}
	fprintf(f,"endsolid \n")

	//terminate
	fflush(f)
	fclose(f)
}*/












// ---------------- LOCAL EVENT HANDLERS (S2DEL) ----------------

//timed executions
func SS3DEL_timedExecution(_ i:Int32){
	if i < 0 {
		SS3DE_refresh()
	}else{
		if SS3DE_timedExecution_delay >= 0 {
			glutTimerFunc(
				UInt32(SS3DE_timedExecution_delay),
				SS3DEL_timedExecution,
				SS3DE_timedExecution_delay
			)
			SS3DE_event(SS3DE_TIMER)
		}
	}
}



//display
func SS3DEL_display(){

	//clear screen
	glFlush()
	glClearColor(0.0, 0.0, 0.0, 0.0)
	glClear( UInt32(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT) )

	//color & depth buffers reset
	var index = 0
	for _ in 0..<SS3DE_height {
		for _ in 0..<SS3DE_width {
			//SS3DE_colorBuffer[index] = SS3DE_SKYCOLOR;
			SS3DE_colorBuffer!.advanced(
				by: index * MemoryLayout<UInt32>.stride
			).storeBytes(
				of: SS3DE_SKYCOLOR,
				as: UInt32.self
			)
			//SS3DE_depthBuffer[index] = Float.greatestFiniteMagnitude;
			SS3DE_depthBuffer!.advanced(
				by: index * MemoryLayout<Float>.stride
			).storeBytes(
				of: Float.greatestFiniteMagnitude,
				as: Float.self
			)
			index += 1
		}
	}

	//screen rendering
	for p in 0..<SS3DE_plaks.count {
		if
			//abs(SS3DE_plaks[p].points[0].x - SS3DE_position.x) < SS3DE_RENDER_DISTANCE && //disable this optimization rule because
			//abs(SS3DE_plaks[p].points[0].y - SS3DE_position.y) < SS3DE_RENDER_DISTANCE && //of SS3DE_position is not always correct
			//abs(SS3DE_plaks[p].points[0].z - SS3DE_position.z) < SS3DE_RENDER_DISTANCE && //due to SS3DE_goStraight() arrangements
			//abs(SS3DE_plaks[p].points[1].x - SS3DE_position.x) < SS3DE_RENDER_DISTANCE &&
			//abs(SS3DE_plaks[p].points[1].y - SS3DE_position.y) < SS3DE_RENDER_DISTANCE &&
			//abs(SS3DE_plaks[p].points[1].z - SS3DE_position.z) < SS3DE_RENDER_DISTANCE &&
			//abs(SS3DE_plaks[p].points[2].x - SS3DE_position.x) < SS3DE_RENDER_DISTANCE &&
			//abs(SS3DE_plaks[p].points[2].y - SS3DE_position.y) < SS3DE_RENDER_DISTANCE && //needs the WHOLE plak inside
			//abs(SS3DE_plaks[p].points[2].z - SS3DE_position.z) < SS3DE_RENDER_DISTANCE && //RENDER_DISTANCE zone
			(
				Int32( SS3DE_real(SS3DE_plaks[p].points[0]).z ) > SS3DE_BACKSCENE_LIMIT ||
				Int32( SS3DE_real(SS3DE_plaks[p].points[1]).z ) > SS3DE_BACKSCENE_LIMIT ||
				Int32( SS3DE_real(SS3DE_plaks[p].points[2]).z ) > SS3DE_BACKSCENE_LIMIT
			)
		{
			SS3DE_render(SS3DE_plaks[p])
		}
	}

	//3D screen displaying
	SS3DE_imageRGBA(
		0,0,
		SS3DE_width, SS3DE_height,
		SS3DE_colorBuffer!
	)

	//extern program display
	SS3DE_event(SS3DE_DISPLAY)
	glutSwapBuffers()
}



//keyboard
func SS3DEL_keyPressed(_ g:UInt8, _ x:Int32, _ y:Int32){
	SS3DE_key = UInt16(g)
	SS3DE_keyState = SS3DE_KEY_PRESSED
	SS3DE_event(SS3DE_KEYBOARD)
}

func SS3DEL_keyPressed_special(_ keyCode:Int32, _ x:Int32,_ y:Int32){
	SS3DE_key = 0b1_0000_0000 + UInt16(keyCode & 0xff)
	SS3DE_keyState = SS3DE_KEY_PRESSED
	SS3DE_event(SS3DE_KEYBOARD)
}

func SS3DEL_keyReleased(_ g:UInt8, _ x:Int32,_ y:Int32){
	SS3DE_key = UInt16(g)
	SS3DE_keyState = SS3DE_KEY_RELEASED
	SS3DE_event(SS3DE_KEYBOARD)
}

func SS3DEL_keyReleased_special(_ keyCode:Int32, _ x:Int32,_ y:Int32){
	SS3DE_key = 0b1_0000_0000 + UInt16(keyCode & 0xff)
	SS3DE_keyState = SS3DE_KEY_RELEASED
	SS3DE_event(SS3DE_KEYBOARD)
}



//mouse
func SS3DEL_mouseButton(_ button:Int32, _ state:Int32, _ x:Int32,_ y:Int32){
	SS3DE_mouseX = UInt32(x)
	SS3DE_mouseY = SS3DE_height - UInt32(y)
	SS3DE_mouseState = UInt8(state)

	//scroll
	if button == 3 || button == 4 {
		if state == SS3DE_MOUSE_PRESSED {
			SS3DE_mouseScroll = UInt8(button)
			SS3DE_event(SS3DE_MOUSE_SCROLL)
		}
	}else{
		SS3DE_mouseButton = UInt8(button)
		SS3DE_event(SS3DE_MOUSE_CLICK)
	}
}

func SS3DEL_mouseMoved(_ x:Int32,_ y:Int32){
	SS3DE_mouseX = UInt32(x)
	SS3DE_mouseY = SS3DE_height - UInt32(y)
	usleep(UInt32(1))
	if SS3DE_mouseScroll == 0 {
		SS3DE_event(SS3DE_MOUSE_MOVE)
	}else{
		SS3DE_mouseScroll = UInt8(0)
	}
}



//window reshape
func SS3DEL_reshape(_ newWidth:Int32,_ newHeight:Int32){

	//raise event with old values
	SS3DE_newWidth  = UInt32(newWidth)
	SS3DE_newHeight = UInt32(newHeight)
	SS3DE_event(SS3DE_RESIZE)
	SS3DE_width     = UInt32(newWidth)
	SS3DE_height    = UInt32(newHeight)

	//set new values
	SS3DE_width    = UInt32(newWidth)
	SS3DE_width_2  = UInt32(newWidth/2)
	SS3DE_height   = UInt32(newHeight)
	SS3DE_height_2 = UInt32(newHeight/2)

	//reallocate color & depth buffers
	SS3DE_colorBuffer!.deallocate()
	SS3DE_depthBuffer!.deallocate()
	SS3DE_colorBuffer = UnsafeMutableRawPointer.allocate(
		byteCount: Int(SS3DE_width * SS3DE_height) * MemoryLayout<UInt32>.stride,
		alignment: MemoryLayout<UInt32>.alignment
	)
	SS3DE_depthBuffer = UnsafeMutableRawPointer.allocate(
		byteCount: Int(SS3DE_width * SS3DE_height) * MemoryLayout<Float>.stride,
		alignment: MemoryLayout<Float>.alignment
	)

	//set buffer default values
	var index = 0
	for _ in 0..<SS3DE_height {
		for _ in 0..<SS3DE_width {
			//SS3DE_colorBuffer[index] = SS3DE_SKYCOLOR;
			SS3DE_colorBuffer!.advanced(
				by: index * MemoryLayout<UInt32>.stride
			).storeBytes(
				of: SS3DE_SKYCOLOR,
				as: UInt32.self
			)
			//SS3DE_depthBuffer[index] = Float.greatestFiniteMagnitude;
			SS3DE_depthBuffer!.advanced(
				by: index * MemoryLayout<Float>.stride
			).storeBytes(
				of: Float.greatestFiniteMagnitude,
				as: Float.self
			)
			index += 1
		}
	}

	//reshape
	glViewport(0,0, newWidth,newHeight)
	glMatrixMode( UInt32(GL_PROJECTION) )
	glLoadIdentity()
	glOrtho(0.0, Double(newWidth), 0.0, Double(newHeight), -1.0, 1.0)
	glMatrixMode( UInt32(GL_MODELVIEW) )
	SS3DE_refresh()
}












// ---------------- UTILITIES ----------------

//useful
func SS3DE_refresh(){
	glutPostRedisplay()
}

func SS3DE_fullScreen(){
	glutFullScreen()
}

func SS3DE_setColor(_ r:Int, _ g:Int, _ b:Int){
	glColor3f(Float( Double(r)/255.0 ), Float( Double(g)/255.0 ), Float( Double(b)/255.0 ))
}

func SS3DE_setThickness(_ thickness:Float){
	glPointSize(thickness)
	glLineWidth(thickness)
}

func SS3DE_inScreen(_ x:Int32,_ y:Int32) -> Bool {
	return x >= 0 && x < SS3DE_width && y >= 0 && y < SS3DE_height
}



//graphics
func SS3DE_point(_ x1:Int, _ y1:Int){
	glBegin( UInt32(GL_POINTS) )
		glVertex2f(Float(x1), Float(y1))
	glEnd()
}

func SS3DE_line(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int){
	glBegin( UInt32(GL_LINES) )
		glVertex2f(Float(x1), Float(y1))
		glVertex2f(Float(x2), Float(y2))
	glEnd()
}

func SS3DE_triangle(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int, _ x3:Int,_ y3:Int, _ filled:UInt8){
	if filled != 0 {
		glBegin( UInt32(GL_TRIANGLES) )
			glVertex2f(Float(x1), Float(y1))
			glVertex2f(Float(x2), Float(y2))
			glVertex2f(Float(x3), Float(y3))
		glEnd()
	}else{
		SS3DE_line(x1,y1, x2,y2)
		SS3DE_line(x2,y2, x3,y3)
		SS3DE_line(x3,y3, x1,y1)
	}
}

func SS3DE_rectangle(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int, _ filled:UInt8){
	if filled != 0 {
		glBegin( UInt32(GL_QUADS) )
			glVertex2f(Float(x1), Float(y1))
			glVertex2f(Float(x2), Float(y1))
			glVertex2f(Float(x2), Float(y2))
			glVertex2f(Float(x1), Float(y2))
		glEnd()

		//GPU weakness : remove diagonals
		var thickness:Float = 0
		glGetFloatv( UInt32(GL_LINE_WIDTH), &thickness)
		glLineWidth(1.0)
		SS3DE_line(x1,y1, x2,y2)
		glLineWidth(thickness)
	}else{
		SS3DE_line(x1,y1, x2,y1)
		SS3DE_line(x2,y1, x2,y2)
		SS3DE_line(x2,y2, x1,y2)
		SS3DE_line(x1,y2, x1,y1)
	}
}

func SS3DE_quad(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int, _ x3:Int,_ y3:Int, _ x4:Int,_ y4:Int, _ filled:UInt8){
	if filled != 0 {
		glBegin( UInt32(GL_QUADS) )
			glVertex2f(Float(x1), Float(y1))
			glVertex2f(Float(x2), Float(y2))
			glVertex2f(Float(x3), Float(y3))
			glVertex2f(Float(x4), Float(y4))
		glEnd()

		//GPU weakness : remove diagonals
		var thickness:Float = 0
		glGetFloatv( UInt32(GL_LINE_WIDTH), &thickness)
		glLineWidth(1.0)
		SS3DE_line(x1,y1, x3,y3)
		glLineWidth(thickness)
	}else{
		SS3DE_line(x1,y1, x2,y2)
		SS3DE_line(x2,y2, x3,y3)
		SS3DE_line(x3,y3, x4,y4)
		SS3DE_line(x4,y4, x1,y1)
	}
}



//text
func SS3DE_text(_ text:String, _ size:Double, _ x:Int,_ y:Int){

	//moving over display (use of the 3rd dimension)
	glPushMatrix()
	glTranslatef(Float(x), Float(y), 0.0)
	glScalef(Float(size), Float(size), Float(size))

	//write text character per character
	for c in text{
		glutStrokeCharacter(nil, Int32( Array(String(c).utf8)[0] ) )
	}
	glPopMatrix()
}



//images
func SS3DE_imageRGBA(_ x:Int,_ y:Int, _ width:UInt32,_ height:UInt32, _ data:UnsafeMutableRawPointer?){
	glRasterPos2i(Int32(x), Int32(y))

	if data != nil {
		glDrawPixels(
			Int32(width), Int32(height),
			UInt32(GL_RGBA),
			UInt32(GL_UNSIGNED_INT_8_8_8_8),
			data
		)
	}
}

func SS3DE_setPixelRGBA(_ r:Int, _ g:Int, _ b:Int, _ a:Int) -> UInt32 {

	return (
		UInt32( (r << 24) & 0xff000000 ) |
		UInt32( (g << 16) & 0x00ff0000 ) |
		UInt32( (b <<  8) & 0x0000ff00 ) |
		UInt32(  a        & 0x000000ff )
	)
}



//timed executions
func SS3DE_setTimer(_ ms:Int32){
	if SS3DE_timedExecution_delay < 0 && ms >= 0 {
		glutTimerFunc(
			UInt32(ms),
			SS3DEL_timedExecution,
			ms
		)
	}

	//set new timedExecution delay
	SS3DE_timedExecution_delay = ms
}












// ---------------- BASICS -----------------

//init
func SS3DE_init(_ name:String, _ width:UInt32,_ height:UInt32){

	//init window
	var argc :Int32 = 1
	glutInit(&argc, nil)
	glutInitDisplayMode( UInt32(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH) )
	glutInitWindowPosition(0,0)
	glutInitWindowSize(Int32(SS3DE_width), Int32(SS3DE_height))
	SS3DE_window = glutCreateWindow(name)

	//some settings
	glHint( UInt32(GL_PERSPECTIVE_CORRECTION_HINT), UInt32(GL_NICEST))
	glDepthFunc ( UInt32(GL_LEQUAL) )
	glShadeModel( UInt32(GL_SMOOTH) )
	glBlendFunc( UInt32(GL_SRC_ALPHA), UInt32(GL_ONE_MINUS_SRC_ALPHA) )
	glEnable( UInt32(GL_BLEND) )
	glHint( UInt32(GL_POINT_SMOOTH_HINT  ), UInt32(GL_NICEST) )
	glHint( UInt32(GL_LINE_SMOOTH_HINT   ), UInt32(GL_NICEST) )
	glHint( UInt32(GL_POLYGON_SMOOTH_HINT), UInt32(GL_NICEST) )
	glEnable( UInt32(GL_POINT_SMOOTH  ) )
	glEnable( UInt32(GL_LINE_SMOOTH   ) )
	glEnable( UInt32(GL_POLYGON_SMOOTH) )
	glEnable( UInt32(GL_NORMALIZE     ) )
	glutSetKeyRepeat(GLUT_KEY_REPEAT_OFF)

	//math init
	SS3DE_cosX = cos(SS3DE_angleX)
	SS3DE_sinX = sin(SS3DE_angleX)
	SS3DE_cosY = cos(SS3DE_angleY)
	SS3DE_sinY = sin(SS3DE_angleY)

	//init color & depth buffers
	SS3DE_width    = width
	SS3DE_width_2  = width/2
	SS3DE_height   = height
	SS3DE_height_2 = height/2
	SS3DE_colorBuffer = UnsafeMutableRawPointer.allocate(
		byteCount: Int(SS3DE_width * SS3DE_height) * MemoryLayout<UInt32>.stride,
		alignment: MemoryLayout<UInt32>.alignment
	)
	SS3DE_depthBuffer = UnsafeMutableRawPointer.allocate(
		byteCount: Int(SS3DE_width * SS3DE_height) * MemoryLayout<Float>.stride,
		alignment: MemoryLayout<Float>.alignment
	)

	//set buffer default values
	var index = 0
	for _ in 0..<SS3DE_height {
		for _ in 0..<SS3DE_width {
			//SS3DE_colorBuffer[index] = S3DE_SKYCOLOR;
			SS3DE_colorBuffer!.advanced(
				by: index * MemoryLayout<UInt32>.stride
			).storeBytes(
				of: SS3DE_SKYCOLOR,
				as: UInt32.self
			)
			//SS3DE_depthBuffer[index] = Float.greatestFiniteMagnitude;
			SS3DE_depthBuffer!.advanced(
				by: index * MemoryLayout<Float>.stride
			).storeBytes(
				of: Float.greatestFiniteMagnitude,
				as: Float.self
			)
			index += 1
		}
	}

	//set local SS3DE event handlers (SS3DEL)
	glutDisplayFunc      (SS3DEL_display            )
	glutKeyboardFunc     (SS3DEL_keyPressed         )
	glutSpecialFunc      (SS3DEL_keyPressed_special )
	glutKeyboardUpFunc   (SS3DEL_keyReleased        )
	glutSpecialUpFunc    (SS3DEL_keyReleased_special)
	glutMouseFunc        (SS3DEL_mouseButton        )
	glutMotionFunc       (SS3DEL_mouseMoved         )
	glutPassiveMotionFunc(SS3DEL_mouseMoved         )
	glutReshapeFunc      (SS3DEL_reshape            )
}



//start - stop
func SS3DE_start(){
	glutMainLoop()
}

func SS3DE_stop(){

	//free 3D engine memory
	SS3DE_colorBuffer!.deallocate()
	SS3DE_depthBuffer!.deallocate()
	for _ in 0..<SS3DE_plaks.count {
		SS3DE_delPlak( Int32(SS3DE_plaks.count-1) )
	}

	//stop 2D engine
	glutDestroyWindow(SS3DE_window)
}
