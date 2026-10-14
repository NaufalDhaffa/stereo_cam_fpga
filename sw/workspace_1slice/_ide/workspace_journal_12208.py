# 2026-10-14T08:50:42.009655300
import vitis

client = vitis.create_client()
client.set_workspace(path="workspace_1slice")

platform = client.create_platform_component(name = "ebaz4205_stereo",hw_design = "$COMPONENT_LOCATION/../../../hw/export/stereo_1slice/stereo_1slice.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="ebaz4205_stereo")
status = platform.build()

comp = client.create_app_component(name="stereo_cam",platform = "$COMPONENT_LOCATION/../ebaz4205_stereo/export/ebaz4205_stereo/ebaz4205_stereo.xpfm",domain = "standalone_ps7_cortexa9_0",template = "empty_application")

comp = client.get_component(name="stereo_cam")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../apps/stereo_cam/src", files=["genlock.c", "genlock.h", "main.c", "ov2640.c", "ov2640.h", "ov2640_tables.h", "sccb.c", "sccb.h", "stereo_cfg.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["STEREO_SLICES=1"])

comp = client.get_component(name="stereo_cam")
comp.build()

vitis.dispose()

