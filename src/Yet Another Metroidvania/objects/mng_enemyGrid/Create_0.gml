collisionMap = layer_tilemap_get_id("CollisionMask");

global.gridWidth = 6336/36;
global.gridHeight = 5760/36;
global.grid = mp_grid_create(0, 0, global.gridWidth, global.gridHeight, 36, 36);

for (i = 0; i < global.gridHeight; i++) {
	
	for (j = 0; j < global.gridWidth; j++) {
		if (tilemap_get(collisionMap, j, i) != 0) {
			mp_grid_add_cell(global.grid, j, i);
		}
	}
}

depth = -3000;