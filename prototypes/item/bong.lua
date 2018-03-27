local recipe_soul_gun = {
    type = "recipe",
    name = "gun-soul-bong",
    enabled=true,
    energy_required = 10,
    ingredients =
    {
        {"raw-wood", 5}
    },
    result = "gun-soul-bong"
}

local item_soul_gun = {
    type = "gun",
    name = "gun-soul-bong",
    icon = "__naturio__/graphics/icons/gun-soul-bong.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "c[rocket-launcher]-g[gun-soul-bong]",
    attack_parameters =
    {
        type = "stream",
        ammo_category = "soul-ammo",
        cooldown = 60,
        movement_slow_down_factor = 0.0,
        shell_particle = nil,
        projectile_creation_distance = 1.125,
        range = 40,
        sound = {
            filename = "__naturio__/sound/gun-soul-bong.ogg",
            volume = 0.50
        },
    },
    stack_size = 1
}

local category_soul_gun = {
    type = "ammo-category",
    name = "soul-ammo"
}

data:extend({ recipe_soul_gun, item_soul_gun, category_soul_gun })