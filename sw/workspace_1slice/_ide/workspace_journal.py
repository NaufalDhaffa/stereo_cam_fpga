# 2026-10-14T08:54:53.551124500
import vitis

client = vitis.create_client()
client.set_workspace(path="workspace_1slice")

vitis.dispose()

