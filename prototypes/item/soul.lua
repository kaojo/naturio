data:extend(
{
  {
    type = "ammo",
    name = "eagle-soul-tabacco",
    icon = "__base__/graphics/icons/eagle-soul-tabacco.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
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
                        trigger_created_entity=true
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
}