# 2026-06-16T09:29:30.568157400
import vitis

client = vitis.create_client()
client.set_workspace(path="lab2_system.sw")

platform = client.get_component(name="wordle_design_wrapper")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

