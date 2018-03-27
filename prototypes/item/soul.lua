require('stdlib/color/color')

local eagle_soul_tabacco_recipe = {
    type = "recipe",
    name = "eagle-soul-tabacco",
    enabled = true,
    energy_required = 5,
    ingredients =
    {
        {"raw-wood", 1}
    },
    results =
    {
        {type = "item" , name = "eagle-soul-tabacco", amount = 1}
    }
}

local eagle_soul_tabacco = {
    type = "ammo",
    name = "eagle-soul-tabacco",
    icon = "__naturio__/graphics/icons/eagle-soul-tabacco.png",
    icon_size = 32,
    flags = { "goes-to-main-inventory" },
    ammo_type =
    {
        category = "soul-ammo",
        target_type = "position",
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "create-entity",
                        entity_name = "soul-smoke",
                        trigger_created_entity = true
                    },
                }
            }
        }
    },
    magazine_size = 1,
    subgroup = "ammo",
    order = "a[artillery]-a[eagle-soul-tabacco]",
    stack_size = 200
}

function cloud_animation(scale)
    scale=scale or .4
    return {
        filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
        flags = { "compressed" },
        priority = "low",
        width = 32,
        height = 32,
        frame_count = 45,
        animation_speed = 0.5,
        line_length = 7,
        scale = scale,
        shift = {0.0, 0.75},
    }
end

local soul_smoke = {
    type = "smoke-with-trigger",
    name = "soul-smoke",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation = cloud_animation(4),
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60*2,
    fade_away_duration = 60,
    spread_duration = 10,
    color = Color.set(defines.color.white, .35),
    action_cooldown = 60,
    action =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            source_effects = {
                {
                    type = "play-sound",
                    sound = {
                        filename = "__naturio__/sound/gun-soul-bong.ogg",
                        volume = 0.75
                    },
                },
            },
        }
    },
}
soul_smoke.animation.scale = 4


data:extend({eagle_soul_tabacco, eagle_soul_tabacco_recipe, soul_smoke })