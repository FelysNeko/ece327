# 2026-06-02T10:39:48.778003400
import vitis

client = vitis.create_client()
client.set_workspace(path="lab1_system.sw")

platform = client.create_platform_component(name = "alu_design_wrapper",hw_design = "$COMPONENT_LOCATION/../../alu_design_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../alu_design_wrapper/export/alu_design_wrapper/alu_design_wrapper.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

platform = client.get_component(name="alu_design_wrapper")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

