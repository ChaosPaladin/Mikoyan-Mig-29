private ["_MaxIntensity","_maxspeed","_Boost","_leftengine","_rightengine","_emitters","_Intensity","_On","_looptime"];

_MaxIntensity = 2;
_Boost = 0.4;
_Intensity = 0;
_this setVariable ["_on",false];

_maxspeed = 1300;
findDisplay(46) displaySetEventHandler ["Keydown","if ((_this select 1) == 42) then {(vehicle player) setVariable [""_on"",true]}"];
findDisplay(46) displaySetEventHandler ["Keyup","if ((_this select 1) == 42) then {(vehicle player) setVariable [""_on"",false]}"];
_leftengine = "#particlesource" createVehicle position _this;
_rightengine = "#particlesource" createVehicle position _this;
_emitters = [_leftengine,_rightengine];
{_x setParticleRandom [0.05,[0.05,0.05,0.05],[0.05,0.05,0.05],0,0.8,[0.1,0.1,0.1,0],0,0]} forEach _emitters;
{_x setDropInterval 0} forEach _emitters;
_looptime = 0.1;
while {true} do	{
	if ((isEngineOn _this) and (_this getVariable "_on")) then
		{
            if (_Intensity < _MaxIntensity) then
            {
              _Intensity = _Intensity + 0.1*(10*_looptime);
            };
            if ((speed _this) < _maxspeed) then
            {
                _this setVelocity [(velocity _this select 0)+((vectorDir _this) select 0)*((_Boost*_Intensity/2)*(10*_looptime)),(velocity _this select 1)+((vectorDir _this) select 1)*((_Boost*_Intensity/2)*(10*_looptime)),(velocity _this select 2)+((vectorDir _this) select 2)*((_Boost*_Intensity/2)*(10*_looptime))]
            };
            if (fuel _this > 0) then
             {
                _this setFuel ((fuel _this)-((1/1200)*(10*_looptime)));
             };
		} 
	else {
	      if (_Intensity > 0) then
	      {
	       _Intensity = _Intensity - 0.2*(10*_looptime);
	       }
	     };
	_leftengine setParticleParams ["\Mikoyan-Mig-29\cl_exp","","Billboard",1,0.07,[-1.14,-8.3,-0.8],[(velocity _this select 0) - ((vectorDir _this) select 0)*30,(velocity _this select 1) - ((vectorDir _this) select 1)*30,(velocity _this select 2) - ((vectorDir _this) select 2)*30],1,1.2745,1,0,[0.6+(2*(speed _this/_maxspeed)),0.5+(10*(speed _this/_maxspeed))],[[0.040,0.100,0.900,0.1500*_Intensity],[0.200,0.200,0.800,0.1000*_Intensity],[0.500,0.200,0.000,0.0250*_Intensity],[0.000,0.000,0.000,0.0000*_Intensity]],[0],0,0,"","",_this];
	_rightengine setParticleParams ["\Mikoyan-Mig-29\cl_exp","","Billboard",1,(0.07-(0.072*(speed _this/_maxspeed))),[1.14,-8.3,-0.8],[(velocity _this select 0) - ((vectorDir _this) select 0)*30,(velocity _this select 1) - ((vectorDir _this) select 1)*30,(velocity _this select 2) - ((vectorDir _this) select 2)*30],1,1.2745,1,0,[0.6+(2*(speed _this/_maxspeed)),0.5+(10*(speed _this/_maxspeed))],[[0.040,0.100,0.900,0.1500*_Intensity],[0.200,0.200,0.800,0.1000*_Intensity],[0.500,0.200,0.000,0.0250*_Intensity],[0.000,0.000,0.000,0.0000*_Intensity]],[0],0,0,"","",_this];
	{_x setPos (getPos _this)} forEach _emitters;
	if (_Intensity > 0) then {{_x setDropInterval 0.001} forEach _emitters} else {{_x setDropInterval 0} forEach _emitters};
	_i = 0;
	_looptime = time;
	waitUntil {_i = _i + 1; _i > 1};
	_looptime = time - _looptime;
};
