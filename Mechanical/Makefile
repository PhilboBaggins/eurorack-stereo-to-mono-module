MAIN_SOURCE_FILE := eurorack-stereo-to-mono-module.scad
ALL := exports/panel.dxf exports/panel.svg exports/panel.stl exports/assembly.stl

.PHONY: all clean

all: ${ALL}

exports/panel.dxf: exports/export-panel-2d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

exports/panel.svg: exports/export-panel-2d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

exports/panel.stl: exports/export-panel-3d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

exports/assembly.stl: exports/export-assembly-3d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

clean:
	rm -f ${ALL}
