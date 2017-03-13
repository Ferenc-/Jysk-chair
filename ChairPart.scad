union() {
// Cap
union() {
    // Top of the cap
    translate (v = [0, 0, -16.5]) {
        difference() {
            sphere(d = 55.4);
            translate(v = [0, 0, -3]) {
                cube(size = [60, 60, 55], center = true);
            }
        }
    }
    // Bottom of the cap
    difference() {
        cylinder(h = 8, d = 25.5);
        // Cutting cylinder, cutting off 7 mm
        translate (v = [0, 0, -1]) {
            cylinder(h = 8, d = 21.5);
        }
    }
}




// Shaft
translate (v=[0, 0, -20]) {
   difference() {
        // Main shaft 
        intersection() {
            cylinder(h = 30, d = 13.5);
            cube(size = [14, 10.5, 100], center = true);
        }
        translate (v = [8.6, 0, 14]) {
            cube(size = [8.5, 11, 8.5], center = true);
        }
         translate (v = [-8.6, 0, 14]) {
            cube(size = [8.5, 11, 8.5], center = true);
        }
        
        // Screw hole
        translate (v = [0, 0, -1]) {
            cylinder(h = 16, d = 4.5);
        }
    }
}
}