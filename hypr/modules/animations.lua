hl.config({
    animations = {
        enabled = true,
    },
})
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("myBezier", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.13, 0.99 }, { 0.29, 1.1 } } })

hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 1.5, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.2, bezier = "almostLinear" })
hl.animation({ leaf = "layersIn",  enabled = true, speed = 2,   bezier = "easeOutQuint", style = "slide top" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "easeOutQuint", style = "slide top" })
hl.animation({ leaf = "windows",     enabled = true, speed = 3,  bezier = "myBezier" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5,  bezier = "myBezier" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 5,  bezier = "myBezier" })
hl.animation({ leaf = "border",      enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "fade",        enabled = true, speed = 5,  bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 3,  bezier = "overshot", style = "slidevert" })
