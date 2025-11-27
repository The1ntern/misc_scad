// The Hexagon portion which fits into the base
translate([0,61.15,0])
    rotate([90,90,0])
        cylinder(h=6.0, r=2, $fn=6);

// The large stick from the base
translate([0,55.6,0])
    rotate([90,0,0])
        cylinder(h=48.6, r=2.2, $fn=500);

// Create the larger circle on top of the cylinder
translate([0,7.1,0])
    rotate([90,0,0])
        cylinder(h=1.2, r=2.8, $fn=500);

// Variables for the donut        
outer_radius = 5;
inner_radius = 1.5;

// Create half a donut
translate([0,0,0])
    rotate_extrude(angle = 180, $fn=500)  // 180 degrees for half a torus
        translate([outer_radius, 0, 0])
        circle(r = inner_radius, $fn=500);
