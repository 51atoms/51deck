include <vars.scad>;
use <basePlate.scad>;
difference() {
	genPlate();
	for(i = [0:width-1]) {
		for(j = [0:height-1]) {
			translate([(i*kc)+(kc/2)+((kc-sw)/2),(j*kc)+(kc/2)+((kc-sw)/2),thcP/2]) {
				union() {
					cube([sw,sw,thcP],true);
					translate([0,0,clipDepth/2]) {
						cube([clp,edge,thcP-clipDepth],true);
					}
				}
			}
		}
	}
}

