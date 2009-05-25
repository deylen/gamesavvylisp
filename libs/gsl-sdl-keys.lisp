;;;		Copyright (c) William Whitty 2009
;;;
;;;	This file is part of GSL. 
;;;
;;;	GSL is free software: you can redistribute it and/or modify
;;;     it under the terms of the GNU General Public License as published by
;;;     the Free Software Foundation, either version 3 of the License, or
;;;     (at your option) any later version.
;;;
;;;     GSL is distributed in the hope that it will be useful,
;;;     but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;     GNU General Public License for more details.
;;;
;;;     You should have received a copy of the GNU General Public License
;;;     along with GSL.  If not, see <http://www.gnu.org/licenses/>.

;;Special keys;;{{{
(const  +SDLK-UNKNOWN+		 0)
(const  +SDLK-FIRST+		 0)
(const  +SDLK-BACKSPACE+	 8)
(const  +SDLK-TAB+		 9)
(const  +SDLK-CLEAR+		 12)
(const  +SDLK-RETURN+		 13)
(const  +SDLK-PAUSE+		 19)
(const  +SDLK-ESCAPE+		 27)
(const  +SDLK-SPACE+		 32)
(const  +SDLK-EXCLAIM+		 33)
(const  +SDLK-QUOTEDBL+		 34)
(const  +SDLK-HASH+		 35)
(const  +SDLK-DOLLAR+		 36)
(const  +SDLK-AMPERSAND+	 38)
(const  +SDLK-QUOTE+		 39)
(const  +SDLK-LEFTPAREN+	 40)
(const  +SDLK-RIGHTPAREN+	 41)
(const  +SDLK-ASTERISK+		 42)
(const  +SDLK-PLUS+		 43)
(const  +SDLK-COMMA+		 44)
(const  +SDLK-MINUS+		 45)
(const  +SDLK-PERIOD+		 46)
(const  +SDLK-SLASH+		 47)
(const  +SDLK-0+		 48)
(const  +SDLK-1+		 49)
(const  +SDLK-2+		 50)
(const  +SDLK-3+		 51)
(const  +SDLK-4+		 52)
(const  +SDLK-5+		 53)
(const  +SDLK-6+		 54)
(const  +SDLK-7+		 55)
(const  +SDLK-8+		 56)
(const  +SDLK-9+		 57)
(const  +SDLK-COLON+		 58)
(const  +SDLK-SEMICOLON+	 59)
(const  +SDLK-LESS+		 60)
(const  +SDLK-EQUALS+		 61)
(const  +SDLK-GREATER+		 62)
(const  +SDLK-QUESTION+		 63)
(const 	+SDLK-AT+		 64);;}}}

;;Normal Keys;;{{{
(const 	+SDLK-LEFTBRACKET+	 91)
(const 	+SDLK-BACKSLASH+	 92)
(const 	+SDLK-RIGHTBRACKET+	 93)
(const 	+SDLK-CARET+		 94)
(const 	+SDLK-UNDERSCORE+	 95)
(const 	+SDLK-BACKQUOTE+	 96)
(const 	+SDLK-a+		 97)
(const 	+SDLK-b+		 98)
(const 	+SDLK-c+		 99)
(const 	+SDLK-d+		 100)
(const 	+SDLK-e+		 101)
(const 	+SDLK-f+		 102)
(const 	+SDLK-g+		 103)
(const 	+SDLK-h+		 104)
(const 	+SDLK-i+		 105)
(const 	+SDLK-j+		 106)
(const 	+SDLK-k+		 107)
(const 	+SDLK-l+		 108)
(const 	+SDLK-m+		 109)
(const 	+SDLK-n+		 110)
(const 	+SDLK-o+		 111)
(const 	+SDLK-p+		 112)
(const 	+SDLK-q+		 113)
(const 	+SDLK-r+		 114)
(const 	+SDLK-s+		 115)
(const 	+SDLK-t+		 116)
(const 	+SDLK-u+		 117)
(const 	+SDLK-v+		 118)
(const 	+SDLK-w+		 119)
(const 	+SDLK-x+		 120)
(const 	+SDLK-y+		 121)
(const 	+SDLK-z+		 122)
(const 	+SDLK-DELETE+		 127)
(const 	+SDLK-WORLD-0+		 160)
(const 	+SDLK-WORLD-1+		 161)
(const 	+SDLK-WORLD-2+		 162)
(const 	+SDLK-WORLD-3+		 163)
(const 	+SDLK-WORLD-4+		 164)
(const 	+SDLK-WORLD-5+		 165)
(const 	+SDLK-WORLD-6+		 166)
(const 	+SDLK-WORLD-7+		 167)
(const 	+SDLK-WORLD-8+		 168)
(const 	+SDLK-WORLD-9+		 169)
(const 	+SDLK-WORLD-10+		 170)
(const 	+SDLK-WORLD-11+		 171)
(const 	+SDLK-WORLD-12+		 172)
(const 	+SDLK-WORLD-13+		 173)
(const 	+SDLK-WORLD-14+		 174)
(const 	+SDLK-WORLD-15+		 175)
(const 	+SDLK-WORLD-16+		 176)
(const 	+SDLK-WORLD-17+		 177)
(const 	+SDLK-WORLD-18+		 178)
(const 	+SDLK-WORLD-19+		 179)
(const 	+SDLK-WORLD-20+		 180)
(const 	+SDLK-WORLD-21+		 181)
(const 	+SDLK-WORLD-22+		 182)
(const 	+SDLK-WORLD-23+		 183)
(const 	+SDLK-WORLD-24+		 184)
(const 	+SDLK-WORLD-25+		 185)
(const 	+SDLK-WORLD-26+		 186)
(const 	+SDLK-WORLD-27+		 187)
(const 	+SDLK-WORLD-28+		 188)
(const 	+SDLK-WORLD-29+		 189)
(const 	+SDLK-WORLD-30+		 190)
(const 	+SDLK-WORLD-31+		 191)
(const 	+SDLK-WORLD-32+		 192)
(const 	+SDLK-WORLD-33+		 193)
(const 	+SDLK-WORLD-34+		 194)
(const 	+SDLK-WORLD-35+		 195)
(const 	+SDLK-WORLD-36+		 196)
(const 	+SDLK-WORLD-37+		 197)
(const 	+SDLK-WORLD-38+		 198)
(const 	+SDLK-WORLD-39+		 199)
(const 	+SDLK-WORLD-40+		 200)
(const 	+SDLK-WORLD-41+		 201)
(const 	+SDLK-WORLD-42+		 202)
(const 	+SDLK-WORLD-43+		 203)
(const 	+SDLK-WORLD-44+		 204)
(const 	+SDLK-WORLD-45+		 205)
(const 	+SDLK-WORLD-46+		 206)
(const 	+SDLK-WORLD-47+		 207)
(const 	+SDLK-WORLD-48+		 208)
(const 	+SDLK-WORLD-49+		 209)
(const 	+SDLK-WORLD-50+		 210)
(const 	+SDLK-WORLD-51+		 211)
(const 	+SDLK-WORLD-52+		 212)
(const 	+SDLK-WORLD-53+		 213)
(const 	+SDLK-WORLD-54+		 214)
(const 	+SDLK-WORLD-55+		 215)
(const 	+SDLK-WORLD-56+		 216)
(const 	+SDLK-WORLD-57+		 217)
(const 	+SDLK-WORLD-58+		 218)
(const 	+SDLK-WORLD-59+		 219)
(const 	+SDLK-WORLD-60+		 220)
(const 	+SDLK-WORLD-61+		 221)
(const 	+SDLK-WORLD-62+		 222)
(const 	+SDLK-WORLD-63+		 223)
(const 	+SDLK-WORLD-64+		 224)
(const 	+SDLK-WORLD-65+		 225)
(const 	+SDLK-WORLD-66+		 226)
(const 	+SDLK-WORLD-67+		 227)
(const 	+SDLK-WORLD-68+		 228)
(const 	+SDLK-WORLD-69+		 229)
(const 	+SDLK-WORLD-70+		 230)
(const 	+SDLK-WORLD-71+		 231)
(const 	+SDLK-WORLD-72+		 232)
(const 	+SDLK-WORLD-73+		 233)
(const 	+SDLK-WORLD-74+		 234)
(const 	+SDLK-WORLD-75+		 235)
(const 	+SDLK-WORLD-76+		 236)
(const 	+SDLK-WORLD-77+		 237)
(const 	+SDLK-WORLD-78+		 238)
(const 	+SDLK-WORLD-79+		 239)
(const 	+SDLK-WORLD-80+		 240)
(const 	+SDLK-WORLD-81+		 241)
(const 	+SDLK-WORLD-82+		 242)
(const 	+SDLK-WORLD-83+		 243)
(const 	+SDLK-WORLD-84+		 244)
(const 	+SDLK-WORLD-85+		 245)
(const 	+SDLK-WORLD-86+		 246)
(const 	+SDLK-WORLD-87+		 247)
(const 	+SDLK-WORLD-88+		 248)
(const 	+SDLK-WORLD-89+		 249)
(const 	+SDLK-WORLD-90+		 250)
(const 	+SDLK-WORLD-91+		 251)
(const 	+SDLK-WORLD-92+		 252)
(const 	+SDLK-WORLD-93+		 253)
(const 	+SDLK-WORLD-94+		 254)
(const 	+SDLK-KP0+		 256)
(const 	+SDLK-KP1+		 257)
(const 	+SDLK-KP2+		 258)
(const 	+SDLK-KP3+		 259)
(const 	+SDLK-KP4+		 260)
(const 	+SDLK-KP5+		 261)
(const 	+SDLK-KP6+		 262)
(const 	+SDLK-KP7+		 263)
(const 	+SDLK-KP8+		 264)
(const 	+SDLK-KP9+		 265)
(const 	+SDLK-KP-PERIOD+	 266)
(const 	+SDLK-KP-DIVIDE+	 267)
(const 	+SDLK-KP-MULTIPLY+	 268)
(const 	+SDLK-KP-MINUS+		 269)
(const 	+SDLK-KP-PLUS+		 270)
(const 	+SDLK-KP-ENTER+		 271)
(const 	+SDLK-KP-EQUALS+	 272)
(const 	+SDLK-UP+		 273)
(const 	+SDLK-DOWN+		 274)
(const 	+SDLK-RIGHT+		 275)
(const 	+SDLK-LEFT+		 276)
(const 	+SDLK-INSERT+		 277)
(const 	+SDLK-HOME+		 278)
(const 	+SDLK-END+		 279)
(const 	+SDLK-PAGEUP+		 280)
(const 	+SDLK-PAGEDOWN+		 281)
(const 	+SDLK-F1+		 282)
(const 	+SDLK-F2+		 283)
(const 	+SDLK-F3+		 284)
(const 	+SDLK-F4+		 285)
(const 	+SDLK-F5+		 286)
(const 	+SDLK-F6+		 287)
(const 	+SDLK-F7+		 288)
(const 	+SDLK-F8+		 289)
(const 	+SDLK-F9+		 290)
(const 	+SDLK-F10+		 291)
(const 	+SDLK-F11+		 292)
(const 	+SDLK-F12+		 293)
(const 	+SDLK-F13+		 294)
(const 	+SDLK-F14+		 295)
(const 	+SDLK-F15+		 296)
(const 	+SDLK-NUMLOCK+		 300)
(const 	+SDLK-CAPSLOCK+		 301)
(const 	+SDLK-SCROLLOCK+	 302)
(const 	+SDLK-RSHIFT+		 303)
(const 	+SDLK-LSHIFT+		 304)
(const 	+SDLK-RCTRL+		 305)
(const 	+SDLK-LCTRL+		 306)
(const 	+SDLK-RALT+		 307)
(const 	+SDLK-LALT+		 308)
(const 	+SDLK-RMETA+		 309)
(const 	+SDLK-LMETA+		 310)
(const 	+SDLK-LSUPER+		 311)
(const 	+SDLK-RSUPER+		 312)
(const 	+SDLK-MODE+		 313)
(const 	+SDLK-COMPOSE+		 314)
(const 	+SDLK-HELP+		 315)
(const 	+SDLK-PRINT+		 316)
(const 	+SDLK-SYSREQ+		 317)
(const 	+SDLK-BREAK+		 318)
(const 	+SDLK-MENU+		 319)
(const 	+SDLK-POWER+		 320)
(const 	+SDLK-EURO+		 321)
(const 	+SDLK-UNDO+		 322);;}}}

;;	KMOD Definitions ;;{{{
(const +KMOD-NONE+	 #x0000)
(const +KMOD-LSHIFT+	 #x0001)
(const +KMOD-RSHIFT+	 #x0002)
(const +KMOD-LCTRL+	 #x0040)
(const +KMOD-RCTRL+	 #x0080)
(const +KMOD-LALT+	 #x0100)
(const +KMOD-RALT+	 #x0200)
(const +KMOD-LMETA+	 #x0400)
(const +KMOD-RMETA+	 #x0800)
(const +KMOD-NUM+	 #x1000)
(const +KMOD-CAPS+	 #x2000)
(const +KMOD-MODE+  	 #x4000)
(const +KMOD-RESERVED+ 	 #x8000);;}}}

;;	Other bindings;;{{{
(const +KMOD-CTRL+	(eval (logior +KMOD-LCTRL+ +KMOD-RCTRL+)))
(const +KMOD-SHIFT+	(eval (logior +KMOD-LSHIFT+ +KMOD-RSHIFT+)));;}}}
