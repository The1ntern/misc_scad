$fn = 500;

// Small circle that must stay untouched

/*Notes on the cutting hexagon

3.25 - Too small

*/
cutting_hexagon_radius = 3.5 / 2;
stand_thickness = 4.18;

union() {
    difference() {
        /*Creation of circle which holds small hexagon*/
        translate([-20.11 / 2,0,0])
            cylinder(h = stand_thickness, r = 5 / 2, center = true);
        
        /*Creating the small hexagon cut but only for small circle*/
        translate([-20.11/2,0,-1])
            cylinder(h = stand_thickness, r = cutting_hexagon_radius, $fn = 6);
    }

    difference() {

        /*Creating the big circle*/
        cylinder(h = stand_thickness, r = 32.25 / 2, center = true);

        /* Hollowing the big circle */
        translate([0,0,-2.65])
            cylinder(h = 2.65, r = 29.9 / 2);

        /*Hexagon cuts the big circle*/
        translate([-20.11/2,0,-1])
            cylinder(h = stand_thickness, r = cutting_hexagon_radius, $fn = 6);
    }
}
