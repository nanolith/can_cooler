include <can_extrusion.scad>

INCH_MM=25.4;
COOLER_WIDTH=CAN_DIAMETER_WIDEST + 1.5*INCH_MM; //add 1.5 inches all around.
COOLER_HEIGHT=CAN_HEIGHT + (CAN_HEIGHT*0.10);

module cooler() {
    difference() {
        union() {
            linear_extrude(height=COOLER_HEIGHT) {
                square(COOLER_WIDTH, center=true);
            }
        }

        union() {
            translate([0,0,-5]) can_extrusion();
        }
    }
}

module cooler_half() {
    difference() {
        union() {
            cooler();
        }

        union() {
            translate([0,COOLER_WIDTH / 2,-2]) {
                linear_extrude(height=COOLER_HEIGHT + 4) {
                    square(COOLER_WIDTH + 2, center=true);
                }
            }
        }
    }
}

rotate ([$t*360,0,0]) cooler_half();
