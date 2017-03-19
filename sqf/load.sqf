
 private ["_R_73","_R_73M1","_R_27","_KH29","_Safe_m","_R_73_magazine","_R_73M1_magazine", "_plane","_R_27_magazine","_KH29_magazine","_Fake_magazin","_station_1","_station_2","_station_3","_station_4","_station_5","_station_6","_loadout"];


  _plane = _this;
//WEAPON CLASSNAME DEFINITIONS
//LIST OF ALL POSSIBLE WEAPONS USED WITH THIS PLANE

    _R_73M1  =  "Mig_R73M1Launcher";

    _R_27    =  "Mig_R27Launcher";

    _KH29    =  "Mig_KH29_Launcher";

//MAGAZINE CLASSNAME DEFINITIONS
//LIST OF ALL POSSIBLE MAGAZINES USED WITH THIS PLANE

    _R_73M1_magazine  = "Mig_R73M1";

    _R_27_magazine    = "Mig_R27R";

    _KH29_magazine    = "Mig_KH29";


//ROMEVE ALL POSSIBLE DEFAULT WEAPONS
  removeAllWeapons _plane;

//DEFINE NEW LOADOUT
    _station_1 = _R_73M1_magazine;
    _station_2 = _R_73M1_magazine;

    _station_3 = _R_27_magazine;
    _station_4 = _R_27_magazine;

    _station_5 = _KH29_magazine;
    _station_6 = _KH29_magazine;

//systemChat "Weapons Loading!";
  titleText ["Weapons are Loading", "PLAIN DOWN",0.3];

    _plane addMagazine _station_1;
    _plane addMagazine _station_2;
      sleep 0.5;
      systemChat "R-73M1 AA missiles are loaded";
    _plane addMagazine _station_3;
    _plane addMagazine _station_4;
      sleep 0.5;
      systemChat "R-77 AA missiles are loaded";
    _plane addMagazine _station_5;
    _plane addMagazine _station_6;
      sleep 0.5;
      systemChat "KH-29 AG missiles are loaded";

      //ADD NEW WEAPONS FOR PRELOADED MAGAZINES
        _loadout = magazines _plane;

        if ((_R_73M1_magazine in _loadout)) then
        {
          _plane addWeapon _R_73M1;
        };
        if ((_R_27_magazine in _loadout)) then
        {
          _plane addWeapon _R_27;
        };
        if ((_KH29_magazine in _loadout)) then
        {
          _plane addWeapon _KH29;
        };
        sleep 1.5;
        systemChat "Weapons are Loaded";

/*while {(alive _plane)} do
{
    //A to A load
    if (((_this animationPhase "AA_load") == 1)) then
    {
      //ROMEVE ALL POSSIBLE DEFAULT WEAPONS
          _plane removeWeapon _S8;
          _plane removeWeapon _R_73;
          _plane removeWeapon _R_73M1;
          _plane removeWeapon _R_27;
          _plane removeWeapon _R_77;
          _plane removeWeapon _KH29;
          _plane removeWeapon _KH31;
          _plane removeWeapon _FAB_250;
          _plane removeWeapon _Laser_designator;

      //ROMEVE ALL POSSIBLE DEFAULT MAGAZINES
            for "_h" from 0 to 10 do
            {
              _plane removeMagazine _Fake_magazin;
            };
            systemChat "Fake weapons are unloaded";
            for "_h" from 0 to _R73_count do
            {
              if ((_R_73_magazine in _loadout)) then
              {
                _plane removeMagazine _R_73_magazine;
              };
            };
            systemChat "R-73 missiles are unloaded";
            for "_h" from 0 to _R27_count do
            {
              if ((_R_27_magazine in _loadout)) then
              {
                _plane removeMagazine _R_27_magazine;
              };
            };
            systemChat "R-27 missiles are unloaded";
            for "_h" from 0 to _R73M_count do
            {

                _plane removeMagazine _R_73M1_magazine;
            };
            systemChat "R-73M missiles are unloaded";
            for "_h" from 0 to _R77_count do
            {

                _plane removeMagazine _R_77_magazine;
            };
            systemChat "R-77 missiles are unloaded";
            for "_h" from 0 to _KH29_count do
            {
              if ((_KH29_magazine in _loadout)) then
              {
                _plane removeMagazine _KH29_magazine;
              };
            };
            systemChat "KH-29 missiles are unloaded";
            for "_h" from 0 to _KH31_count do
            {

                _plane removeMagazine _KH31_magazine;
            };
            systemChat "KH-31 missiles are unloaded";
            for "_h" from 0 to _FAB2_count do
            {
              if ((_FAB_250_magazine in _loadout)) then
              {
                _plane removeMagazine _FAB_250_magazine;
              };
            };
            systemChat "FAB-250 bobms are unloaded";
            for "_h" from 0 to 10 do
            {
              _plane removeMagazine _Fake_magazin;
            };
            systemChat "Fake weapons are unloaded";
        sleep 1.5;
        systemChat "Weapons are unloaded";
        sleep 2.0;
        titleText ["Weapons are Loading", "PLAIN DOWN",0.3];

        _plane addMagazine _R_73M1_magazine;
        _plane addMagazine _R_73M1_magazine;
          sleep 1.0;
          systemChat "R-73M1 AA missiles are loaded";
        _plane addMagazine _R_77_magazine;
          sleep 2.0;
        _plane addMagazine _R_77_magazine;
          systemChat "R-77 AA  missiles are loaded";
        _plane addMagazine _R_27_magazine;
        _plane addMagazine _R_27_magazine;
        _plane addMagazine _R_27_magazine;
        _plane addMagazine _R_27_magazine;
          sleep 1.0;
          systemChat "R-27R AA missiles are loaded";
        _plane addMagazine _R_73_magazine;
        _plane addMagazine _R_73_magazine;
        _plane addMagazine _R_73_magazine;
        _plane addMagazine _R_73_magazine;
        _plane addMagazine _R_73_magazine;
        _plane addMagazine _R_73_magazine;
        sleep 1.0;
        systemChat "R-73 AA missiles are loaded";

        _plane addWeapon _R_73M1;
        _plane addWeapon _R_77;
        _plane addWeapon _R_73;
        _plane addWeapon _R_27;
    };
    //A to G load(anti-ship)
    if (((_this animationPhase "AG_load") == 1)) then
    {
      //ROMEVE ALL POSSIBLE DEFAULT WEAPONS
          _plane removeWeapon _S8;
          _plane removeWeapon _R_73;
          _plane removeWeapon _R_27;
          _plane removeWeapon _R_77;
          _plane removeWeapon _KH29;
          _plane removeWeapon _KH31;
          _plane removeWeapon _FAB_250;
          _plane removeWeapon _Laser_designator;

      //ROMEVE ALL POSSIBLE DEFAULT MAGAZINES
            for "_h" from 0 to 10 do
            {
              _plane removeMagazine _Fake_magazin;
            };
            systemChat "Fake weapons are unloaded";
            for "_h" from 0 to _R73_count do
            {
              if ((_R_73_magazine in _loadout)) then
              {
                _plane removeMagazine _R_73_magazine;
              };
            };
            systemChat "R-73 missiles are unloaded";
            for "_h" from 0 to _R27_count do
            {
              if ((_R_27_magazine in _loadout)) then
              {
                _plane removeMagazine _R_27_magazine;
              };
            };
            systemChat "R-27 missiles are unloaded";
            for "_h" from 0 to _R73M_count do
            {

                _plane removeMagazine _R_73M1_magazine;
            };
            systemChat "R-73M missiles are unloaded";
            for "_h" from 0 to _R77_count do
            {

                _plane removeMagazine _R_77_magazine;
            };
            systemChat "R-77 missiles are unloaded";
            for "_h" from 0 to _KH29_count do
            {

              if ((_KH29_magazine in _loadout)) then
              {
                _plane removeMagazine _KH29_magazine;
              };
            };
            systemChat "KH-29 missiles are unloaded";
            for "_h" from 0 to _KH31_count do
            {
              if ((_KH31_magazine in _loadout)) then
              {
                _plane removeMagazine _KH31_magazine;
              };
            };
            systemChat "KH-31 missiles are unloaded";
            for "_h" from 0 to _FAB2_count do
            {

              if ((_FAB_250_magazine in _loadout)) then
              {
                _plane removeMagazine _FAB_250_magazine;
              };
            };
            systemChat "FAB-250 bombs are unloaded";
        sleep 1.5;
        systemChat "Weapons are unloaded";

      _plane addMagazine _R_73M1_magazine;
      _plane addMagazine _R_73M1_magazine;
        sleep 1.0;
        systemChat "R-73M1 AA missiles are loaded";

      _plane addMagazine _KH31_magazine;
          sleep 2.0;
      _plane addMagazine _KH31_magazine;
          systemChat "R-77 AA  missiles are loaded";
      for "_h" from 0 to 10 do
       {
        _plane addMagazine _Fake_magazin;
       };
          systemChat "Fake weapons are loaded";

      //_plane addWeapon _Safe_m;
      _plane addWeapon _R_73M1;
      _plane addWeapon _KH31;
    };
    //unload all
    if (((_this animationPhase "AA_load") == 0.3)) then
    {
      //ROMEVE ALL POSSIBLE DEFAULT WEAPONS
          _plane removeWeapon _S8;
          _plane removeWeapon _R_73;
          _plane removeWeapon _R_73M1;
          _plane removeWeapon _R_27;
          _plane removeWeapon _R_77;
          _plane removeWeapon _KH29;
          _plane removeWeapon _KH31;
          _plane removeWeapon _FAB_250;
          _plane removeWeapon _Laser_designator;

      //ROMEVE ALL POSSIBLE DEFAULT MAGAZINES
            for "_h" from 0 to _R73_count do
            {
              if ((_R_73_magazine in _loadout)) then
              {
                _plane removeMagazine _R_73_magazine;
              };
            };
            systemChat "R-73 missiles are unloaded";
            for "_h" from 0 to _R27_count do
            {
              if ((_R_27_magazine in _loadout)) then
              {
                _plane removeMagazine _R_27_magazine;
              };
            };
            systemChat "R-27 missiles are unloaded";
            for "_h" from 0 to _R73M_count do
            {

                _plane removeMagazine _R_73M1_magazine;
            };
            systemChat "R-73M missiles are unloaded";
            for "_h" from 0 to _R77_count do
            {

                _plane removeMagazine _R_77_magazine;
            };
            systemChat "R-77 missiles are unloaded";
            for "_h" from 0 to _KH29_count do
            {
              if ((_KH29_magazine in _loadout)) then
              {
                _plane removeMagazine _KH29_magazine;
              };
            };
            systemChat "KH-29 missiles are unloaded";
            for "_h" from 0 to _KH31_count do
            {

                _plane removeMagazine _KH31_magazine;
            };
            systemChat "KH-31 missiles are unloaded";
            for "_h" from 0 to _FAB2_count do
            {

              if ((_FAB_250_magazine in _loadout)) then
              {
                _plane removeMagazine _FAB_250_magazine;
              };
            };
            systemChat "FAB-250 bombs are unloaded";
            for "_h" from 0 to 10 do
            {
              _plane removeMagazine _Fake_magazin;
            };
            systemChat "Fake weapons are unloaded";
        sleep 1.5;
        systemChat "Weapons are unloaded";
    };
    _plane animate ["AA_load", 0];
    _plane animate ["AG_load", 0];
    sleep 0.5;
};*/
