// Global Parameters

$fn = 100;

// User Parameters

wire_diameter = 2;
vertical_padding = 1;
horizontal_padding = 1;
pinch_height = 1;
pinch_length = 1;

length = 10;
width = 4 * horizontal_padding + 3 * wire_diameter;
height = vertical_padding + wire_diameter + pinch_height;


// Model Generation

module cutout() {
    translate([0, 0, wire_diameter / 2]){
        cube([pinch_length, length, pinch_height + wire_diameter / 2], center = true);
    }

    rotate([90, 0, 0]) {
        cylinder(length, d=wire_diameter, center = true);
    }
}

cutout();
