# Makefile by hand

OBJECTS = ShortVolume.o SimpleShortVolume.o MTfor3D_forC.o avs_io.o MaxTree3d.o
CPPFLAGS=-g

all: prog kdForSpaces_usingV2scott

avs_io.o: avs_io.c
ShortVolume.o: ShortVolume.cpp ShortVolume.h
SimpleShortVolume.o: SimpleShortVolume.cpp
MTfor3D.o: MTfor3D.cpp
MTfor3D_forC.o: MTfor3D_forC.cpp

prog: ${OBJECTS} 
	g++ -g -o MTfor3D ${OBJECTS} 

kdForSpaces_usingV2scott: kdForSpaces_usingV2scott.o MaxTree3d.o ShortVolume.o SimpleShortVolume.o avs_io.o pixel_qsortS.o combi2.o maxtreeForSpaces.o MTfor3D.o pca.o
	g++ -o kdForSpaces_usingV2scott $^
clean:
	rm *.o MTfor3D kdForSpaces
	
	
	  
# run 438 9 scottH.csv    