mobs:register_mob("livingnether:razorback", {
stepheight = 2,
	type = "monster",
	passive = false,
        attack_type = "dogfight",
	attack_animals = true,
	reach = 2,
        damage = 5,
	hp_min = 120,
	hp_max = 300,
	armor = 100,
	collisionbox = {-0.5, -0.01, -0.5, 0.5, 0.95, 0.5},
	visual = "mesh",
	mesh = "Razorback.b3d",
	visual_size = {x = 1.0, y = 1.0},
	textures = {
		{"texturerazorback.png"},
	},
	sounds = {
		random = "livingnether_razorback",
		attack = "livingnether_razorback2",
		distance = 12,
	},
	makes_footstep_sound = true,
	walk_velocity = 2,
	run_velocity = 3,
	runaway = false,
        walk_chance = 20,
	jump = true,
        jump_height = 6,
	stepheight = 2,
	drops = {
		{name = "default:copper_ingot", chance = 1, min = 1, max = 1},
	},
	water_damage = 4,
	lava_damage = 4,
	light_damage = 0,
	animation = {
		speed_normal = 125,
		stand_speed = 50,
		stand_start = 0,
		stand_end = 100,
		walk_start = 100,
		walk_end = 200,
		punch_speed = 90,
		punch_start = 250,
		punch_end = 350,
		-- 50-70 is slide/water idle
	},

	view_range = 4,

	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 4, false, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 5, 50, 80, false, nil) then return end
	end,
})

if not mobs.custom_spawn_livingnether then
mobs:spawn({
	name = "livingnether:razorback",
	nodes = {"nether:rack"},
	min_light = 0,
	interval = 60,
	active_object_count = 3,
	chance = 8000, -- 15000
	min_height = -18000,
	max_height = -3000,

})
end

mobs:register_egg("livingnether:razorback", ("Razorback"), "arazorback.png")
