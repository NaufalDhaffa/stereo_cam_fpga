# 2026-10-14T09:35:22.044351800
import vitis

client = vitis.create_client()
client.set_workspace(path="workspace_1slice")

vitis.dispose()

