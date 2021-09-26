include <vars.scad>;
// TODO find a way to have a screw module
difference() {
	cube([(kc*width),(kc*height),thcP],0); // base
	for(i = [0:2]) { // screws
		for(j = [0:2]) {
			translate([(i*0.5*kc*(width-2))+kc
						,(j*0.5*kc*(height-2))+kc
						,0]) {
				cylinder(thcP,d1=screwD,d2=screwD,true);
			}
		}
	}
	for(i = [0:width-1]) { // switches
		for(j = [0:height-1]) {
			translate([(i*kc)+(kc/2),(j*kc)+(kc/2),thcP/2]) {
				cube([sw,sw,thcP],true);
			}
		}
	}
}

