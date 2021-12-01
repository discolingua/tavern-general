var _map, _pin;

for (var _i = 0; _i < array_length(mapStruct); _i++ ) {
	_map = mapStruct[_i];
	_pin = instance_create_layer (_map.mapX, _map.mapY, "Instances", oMapPin );
	_pin.mapName = _map.mapName;
	_pin.mapRoom = _map.mapName;
}