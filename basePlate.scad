include <vars.scad>;
module genPlate() {
	difference() {
		difference() {
			cube([(kc*width)+(kc-sw),(kc*height)+(kc-sw),thcP],0);
		}

		for(i = [0:2]) {
			for(j = [0:2]) {
				translate([(i*0.5*kc*width)+((kc-sw)/2),(j*0.5*kc*height)+((kc-sw)/2),0]) {
					cylinder(thcP,d1=screwD,d2=screwD,true);
				}
			}
		}
	}
}
