// Parametric source for the custom-fit parts in this package.
// Units: millimetres. Render one part at a time by setting PART.
PART = "servo_adapter"; // servo_adapter | battery_tray | battery_lid

// FEETECH STS3215-C001 drawing: 45.23 x 24.73 x 35 mm.
// Four case mounting holes are approximately 40.5 x 20.1 mm pitch.
servo_hole_pitch_x = 40.5;
servo_hole_pitch_y = 20.1;
servo_hole_d = 2.3;
frame_hole_pitch_x = 53;
frame_hole_pitch_y = 37;
frame_hole_d = 3.4;
plate_x = 60;
plate_y = 44;
plate_t = 3.2;

battery_x = 105;
battery_y = 33;
battery_z = 25;
clearance = 3;
wall = 3.5;
tray_floor = 2.5;
tray_inner_z = 33;

module servo_adapter() {
  difference() {
    cube([plate_x, plate_y, plate_t], center=true);
    for (x=[-servo_hole_pitch_x/2, servo_hole_pitch_x/2],
         y=[-servo_hole_pitch_y/2, servo_hole_pitch_y/2])
      translate([x,y,0]) cylinder(d=servo_hole_d, h=plate_t+1, center=true, $fn=32);
    for (x=[-frame_hole_pitch_x/2, frame_hole_pitch_x/2],
         y=[-frame_hole_pitch_y/2, frame_hole_pitch_y/2])
      translate([x,y,0]) cylinder(d=frame_hole_d, h=plate_t+1, center=true, $fn=32);
  }
}

module battery_tray() {
  ox = battery_x + 2*clearance + 2*wall;
  oy = battery_y + 2*clearance + 2*wall;
  oz = 35;
  difference() {
    cube([ox,oy,oz]);
    translate([wall,wall,tray_floor])
      cube([111,39,tray_inner_z]);
    // Two fabric straps pass through paired slots in the floor.
    for (x=[-35,35], y=[-17.5,17.5])
      translate([ox/2+x,oy/2+y,1.25]) cube([10,3.4,5],center=true);
  }
}

module battery_lid() {
  ox = battery_x + 2*clearance + 2*wall;
  oy = battery_y + 2*clearance + 2*wall;
  difference() {
    cube([ox,oy,2.4]);
    for (x=[-35,35], y=[-17.5,17.5])
      translate([ox/2+x,oy/2+y,1.2]) cube([10,3.4,4],center=true);
  }
}

if (PART == "servo_adapter") servo_adapter();
if (PART == "battery_tray") battery_tray();
if (PART == "battery_lid") battery_lid();
