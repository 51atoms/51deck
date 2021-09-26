all: topPlate.stl baseCase.stl
topPlate.stl: topPlate.scad
	openscad -o topPlate.stl topPlate.scad
baseCase.stl: baseCase.scad
	openscad -o baseCase.stl baseCase.scad
clean:
	rm *.stl
