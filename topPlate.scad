include <vars.scad>;
difference() {
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

