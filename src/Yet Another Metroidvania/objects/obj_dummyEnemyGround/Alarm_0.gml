/// @description Path Update

path_delete(path);
path = path_add();

targetX = obj_player.x;
targetY = obj_player.y;

mp_grid_path(global.grid, path, x, y, targetX, targetY, true);

path_start(path, 3, path_action_stop, true);

alarm_set(0, 30);