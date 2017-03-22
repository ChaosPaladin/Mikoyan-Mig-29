private ["_emitter"];

_emitter = "#particlesource" createVehicle position _this;
_emitter setParticleRandom [0.05,[2,2,2],[5,5,5],0,0.5,[0.1,0.1,0.1,0.5],0,0];
_emitter setDropInterval 0;

while {true} do
	{
	if ((speed _this > 850) and (speed _this < 860)) then {
		_emitter setDropInterval 0.0005;
		for "_i" from 1 to 100 do {
			_emitter setParticleRandom [0.4,[10*(_i/100),10*(_i/100),10*(_i/100)],[10*(_i/100),10*(_i/100),10*(_i/100)],0,0.3,[0.1,0.15,0.3,0.5],0,0];
			_emitter setParticleParams ["\Ca\data\cl_basic","","Billboard",1,0.1,[0,(-12*(_i/100)+8),-0.5],(velocity _this),1,1.2745,1,0.001,[20*(_i/100)],[[1,1,1,0],[1,1,1,0.1*(_i/100)],[1,1,1,0]],[0],0,0,"","",_this];
			sleep 0.005;
			};
		_emitter setDropInterval 0;
		sleep ((random 5)+ 5);
		} else {_emitter setDropInterval 0};
	_emitter setParticleParams ["\Ca\data\ParticleEffects\ROCKETSMOKE\RocketSmoke","","Billboard",1,0.05,[0,-0.5,-0.5],(velocity _this),1,1.2745,1,0.001,[10,20],[[1,1,1,0],[1,1,1,0.1],[1,1,1,0]],[0],0,0,"","",_this];
	_emitter setPos (getPos _this);
	sleep 0.3;
	}