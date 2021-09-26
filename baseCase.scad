include <vars.scad>;
union() {
	difference() {
		cube([(kc*width)+(kc-sw),(kc*height)+(kc-sw),10],0); // bounding cube
		translate([(0.5*kc*width)+((kc-sw)/2),(0.5*kc*height)+((kc-sw)/2),5.5]) { // inner space
			cube([(kc*width),(kc*height),9],center=true);
		}
		translate([(0.25*kc*width)+((kc-sw)/2),(1*kc*height)+((kc-sw)/2),5.5]) { // usb port
			cube([17.5,90,7.5],true);
		}
	}
	for(i = [0:2]) { // screws
		for(j = [0:2]) {
			translate([(i*0.5*kc*width)+((kc-sw)/2),(j*0.5*kc*height)+((kc-sw)/2),0]) {
				difference() {
					cylinder(10,d1=screwD+1,d2=screwD+1,true);
					cylinder(10,d1=screwD,d2=screwD,true);
				}
			}
		}
	}
}
