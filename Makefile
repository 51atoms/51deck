all: topPlate.stl baseCase.stl
	echo sihentisehnt
topPlate.stl:
	openscad -o topPlate.stl topPlate.scad
baseCase.stl:
	openscad -o baseCase.stl baseCase.scad
