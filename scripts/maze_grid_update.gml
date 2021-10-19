///maze_grid_update(direction, path_length);
var move_to = argument0;
var path_length = argument1;

//Replace ds_grid_set functions later with a for loop that loops the size of path_length.

var floor_value = 0;

switch move_to
{
    case "N":
    {
        ds_grid_set(maze_grid,carver_x,carver_y-1,floor_value);  
        ds_grid_set(maze_grid,carver_x,carver_y-2,floor_value);     
    
        carver_y -= path_length;
        ds_list_clear(directions_checked);
    }
    break;
    
    case "S":
    {
        ds_grid_set(maze_grid,carver_x,carver_y+1,floor_value);  
        ds_grid_set(maze_grid,carver_x,carver_y+2,floor_value);     
    
        carver_y += path_length;
        ds_list_clear(directions_checked);
    }
    break;
    
    case "E":
    {
        ds_grid_set(maze_grid,carver_x+1,carver_y,floor_value);  
        ds_grid_set(maze_grid,carver_x+2,carver_y,floor_value);     
    
        carver_x += path_length;
        ds_list_clear(directions_checked);
    }
    break;
    
    case "W":
    {
        ds_grid_set(maze_grid,carver_x-1,carver_y,floor_value);
        ds_grid_set(maze_grid,carver_x-2,carver_y,floor_value);     
    
        carver_x -= path_length;
        ds_list_clear(directions_checked);
    }
    break;
}

carver_x = clamp(carver_x,1,maze_size-1);
carver_y = clamp(carver_y,1,maze_size-1);

ds_list_add(visited_cells_x,carver_x);
ds_list_add(visited_cells_y,carver_y);

backstep = false; //Turn off backstep routine
show_debug_message("UPDATE!");

