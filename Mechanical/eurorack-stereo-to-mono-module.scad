$fn = 64;

include <eurorack-common/panels.scad>
include <eurorack-common/Switchcraft_35RAPC2AV.scad>

MONO_JACK_RADIUS = 7 / 2;

pcbHeight = 7.5 + 10 + 15 + 10 + 15 + 10 + 15 + 10 + 7.5;
pcbWidth = 15;
pcbThickness = 1.6;

yOffsetPCB = (EURORACK_PANEL_HEIGHT - pcbHeight) / 2;
xOffsetPCB = 4.3 + (EURORACK_PANEL_WIDTH_4HP - 4.3 - 7.0 - 4.4) / 2;

module EurorackStereoToMonoModule_PCB()
{
    color("green")
    cube([pcbWidth, pcbHeight, pcbThickness]);

    //color("green")
    //scale([1, 1, pcbThickness * 2])
    //translate([0, 0, pcbThickness/3])
    //import("../Upverter exports/3d model.stl");
}

module EurorackStereoToMonoModule_Panel_2D()
{
    xOffset = xOffsetPCB + 7; // ??????
    yOffset = yOffsetPCB;

    difference()
    {
        EurorackPanel_4HP();

        translate([xOffset, yOffset, 0])
        {
            translate([0,  7.5, 0]) circle(r=MONO_JACK_RADIUS);
            translate([0, 17.5, 0]) circle(r=MONO_JACK_RADIUS);
            translate([0, 32.5, 0]) circle(r=MONO_JACK_RADIUS);
            translate([0, 42.5, 0]) circle(r=MONO_JACK_RADIUS);
            translate([0, 57.5, 0]) circle(r=MONO_JACK_RADIUS);
            translate([0, 67.5, 0]) circle(r=MONO_JACK_RADIUS);
            translate([0, 82.5, 0]) circle(r=MONO_JACK_RADIUS);
            translate([0, 92.5, 0]) circle(r=MONO_JACK_RADIUS);
        }
    }
}

module EurorackStereoToMonoModule_Panel_3D()
{
    linear_extrude(height = EURORACK_PANEL_THICKNESS)
    EurorackStereoToMonoModule_Panel_2D();
}

module EurorackStereoToMonoModule_Assembly()
{
    EurorackStereoToMonoModule_Panel_3D();

    translate([xOffsetPCB, yOffsetPCB, 0])
    {
        rotate([0, 90, 0]) EurorackStereoToMonoModule_PCB();
        
        translate([0, 17.5, 0]) rotate([0, 90, 0]) Switchcraft35RAPC2AV();
        translate([0, 42.5, 0]) rotate([0, 90, 0]) Switchcraft35RAPC2AV();
        translate([0, 67.5, 0]) rotate([0, 90, 0]) Switchcraft35RAPC2AV();
        translate([0, 92.5, 0]) rotate([0, 90, 0]) Switchcraft35RAPC2AV();
    }
}

//EurorackStereoToMonoModule_PCB();
//EurorackStereoToMonoModule_Panel_2D();
//EurorackStereoToMonoModule_Panel_3D();
//EurorackStereoToMonoModule_Assembly();
