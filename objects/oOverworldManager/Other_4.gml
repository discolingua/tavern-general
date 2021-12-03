
mapStruct = [];

mapStruct[0] = {
	mapX: 300,
	mapY: 440,
	mapName: "Tall Oak Tavern",
	mapRoom: rmTavern
};

mapStruct[1] = {
	mapX: 280,
	mapY: 400,
	mapName: "Murderous Meadows",
	mapRoom: rmMap01
};

mapStruct[2] = {
	mapX: 305,
	mapY: 392,
	mapName: "Owl Ridge",
	mapRoom: rmOwlbear
};



for (var _i = 0; _i < array_length(mapStruct); _i++ ) {
	var _map = mapStruct[_i];
	show_debug_message("trying to load map pin for " + string(_map.mapName));
	var _pin = instance_create_layer (_map.mapX, _map.mapY, "Instances", oMapPin );
	_pin.mapName = _map.mapName;
	_pin.mapRoom = _map.mapRoom;
}