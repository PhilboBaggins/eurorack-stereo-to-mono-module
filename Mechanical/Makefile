EXPORT_PREFIX := eurorack-stereo-to-mono-module
MAIN_SOURCE_FILE := eurorack-stereo-to-mono-module.scad
ALL := \
	exports/${EXPORT_PREFIX}-panel.dxf \
	exports/${EXPORT_PREFIX}-panel.svg \
	exports/${EXPORT_PREFIX}-panel.stl \
	exports/${EXPORT_PREFIX}-assembly.stl

.PHONY: all clean

all: ${ALL}

exports/${EXPORT_PREFIX}-panel.dxf: exports/export-panel-2d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

exports/${EXPORT_PREFIX}-panel.svg: exports/export-panel-2d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

exports/${EXPORT_PREFIX}-panel.stl: exports/export-panel-3d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

exports/${EXPORT_PREFIX}-assembly.stl: exports/export-assembly-3d.scad ${MAIN_SOURCE_FILE}
	openscad -o $@ $<

clean:
	rm -f ${ALL}
