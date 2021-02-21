import numpy as np
dbg_data = [
]

tags = set()
for x in dbg_data:
    tags.add(x["tag"])
tags = list(tags)

tag_groups = {}
for tag in tags:
    tag_groups[tag] = [x["data"] for x in dbg_data if x["tag"] == tag]
