# 2026-06-12T12:26:33.611878200
import vitis

client = vitis.create_client()
client.set_workspace(path="lab2_system.sw")

platform = client.create_platform_component(name = "wordle_design_wrapper",hw_design = "$COMPONENT_LOCATION/../../wordle_design_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../wordle_design_wrapper/export/wordle_design_wrapper/wordle_design_wrapper.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

platform = client.get_component(name="wordle_design_wrapper")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

