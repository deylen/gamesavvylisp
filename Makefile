#		Copyright (c) William Whitty 2009
#
#        This file is part of GSL. 
#    	 GSL is free software: you can redistribute it and/or modify
#	 it under the terms of the GNU General Public License as published by
#	 the Free Software Foundation, either version 3 of the License, or
#	 (at your option) any later version.
#	 
#	 GSL is distributed in the hope that it will be useful,
#	 but WITHOUT ANY WARRANTY; without even the implied warranty of
#	 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	 GNU General Public License for more details.
#	 
#	 You should have received a copy of the GNU General Public License
#	 along with GSL.  If not, see <http://www.gnu.org/licenses/>.

#Use mingw-make on this file

LIBS = -shared -lmingw32 -lsdlmain -lsdl -lopengl32 -lglu32 -03 -Wall
LOCATION = clibs/

compile:
	gcc -c $(LOCATION)GLee.c -O3 -o $(LOCATION)GLee.o
	gcc $(LOCATION)gsl-bindings.c $(LOCATION)GLee.o $(LIBS)	-o $(LOCATION)gsl-bindings.dll
	gcc $(LOCATION)gsl-gl-bindings.c $(LOCATION)GLee.o $(LIBS) -o $(LOCATION)gsl-gl-bindings.dll
	gcc $(LOCATION)gsl-sdl-bindings.c $(LIBS) -o $(LOCATION)gsl-sdl-bindings.dll

%.o: %.c
	gcc -c $<
