class CfgWeapons
{

	class CannonCore;
	class MissileLauncher;
	class H_PilotHelmetFighter_O;
	class gatling_30mm;
	class FakeWeapon;


	class Mig_GSh301: gatling_30mm
	{
		displayName="Gsh-301 30mm";
		displayNameMagazine="Gsh-301 30mm";
		shortNameMagazine="Gsh-301 30mm";
		cursor="EmptyCursor";
		cursorAim="";
		burst=2;
		reloadTime=0.1;
		dispersion=0.0024999999;
		soundContinuous=0;
		showToPlayer=1;
		aiRateOfFire=0.5;
		aiRateOfFireDistance=50;
		minRange=1;
		minRangeProbab=0.0099999998;
		midRange=2;
		midRangeProbab=0.0099999998;
		maxRange=3;
		maxRangeProbab=0.0099999998;
		magazines[]=
		{
			"Mig_150Rnd_30mm_GSh301"
		};
	};
	class Mig_KH29_Launcher: MissileLauncher
	{
		canLock=2;
		autoFire=0;
		displayName="Kh-29 Kedge";
		displayNameMagazine="Kh-29 Kedge";
		shortNameMagazine="Kh-29";
		magazines[]=
		{
			"Mig_KH29"
		};
		reloadTime=0.1;
		magazineReloadTime=0.1;
		aiRateOfFire=5;
		aiRateOfFireDistance=500;
		nameSound="MissileLauncher";
		sounds[]=
		{
			"StandardSound"
		};
		class StandardSound
		{
			begin1[]=
			{
				"A3\Sounds_F\weapons\Rockets\missile_1",
				1.12202,
				1.3,
				1000
			};
			soundBegin[]=
			{
				"begin1",
				1
			};
			weaponSoundEffect="DefaultRifle";
		};
		soundFly[]=
		{
			"A3\Sounds_F\weapons\Rockets\rocket_fly_1",
			1,
			1.1,
			700
		};
		lockingTargetSound[]=
		{
			"\A3\Sounds_F\weapons\Rockets\locked_1",
			0.316228,
			1
		};
		lockedTargetSound[]=
		{
			"\A3\Sounds_F\weapons\Rockets\locked_3",
			0.316228,
			2.5
		};
		cursor="EmptyCursor";
		cursorAim="EmptyCursor";
		weaponLockDelay=3;
		textureType="fullAuto";
		minRange=300;
		minRangeProbab=0.25;
		midRange=2500;
		midRangeProbab=0.89999998;
		maxRange=9000;
		maxRangeProbab=0.0099999998;
	};
	class Mig_R73Launcher: MissileLauncher
	{
		canLock=2;
		autoFire=0;
		displayName="R-73 Archer";
		displayNameMagazine="R-73 Archer";
		shortNameMagazine="R-73 Archer";
		magazines[]=
		{
			"Mig_R73"
		};
		cursorAim="EmptyCursor";
		cursor="EmptyCursor";
		minRange=300;
		minRangeProbab=0.025;
		maxRange=9000;
		maxRangeProbab=0.0099999998;
		sound[]={"A3\Sounds_F\weapons\Rockets\rocket_fly_2",db+47,1};
		sounds[]=
		{
			"StandardSound"
		};
		class StandardSound
		{
			begin1[]=
			{
				"A3\Sounds_F\weapons\Rockets\missile_2",
				1.12202,
				1.3,
				1000
			};
			soundBegin[]=
			{
				"begin1",
				1
			};
			weaponSoundEffect="DefaultRifle";
		};
		soundFly[]=
		{
			"A3\Sounds_F\weapons\Rockets\rocket_fly_2",
			1,
			1.5,
			700
		};
		lockingTargetSound[]=
		{
			"\A3\Sounds_F\weapons\Rockets\locked_1",
			0.316228,
			1
		};
		lockedTargetSound[]=
		{
			"\A3\Sounds_F\weapons\Rockets\locked_3",
			0.316228,
			2.5
		};
		reloadTime=0.1;
		magazineReloadTime=0.1;
		holdsterAnimValue=3;
		weaponLockSystem="2 + 16 + 4";
		weaponLockDelay=3;
		textureType="semi";
	};
	class Mig_R73M1Launcher: Mig_R73Launcher
	{
		displayName="R-73M1 Archer";
		displayNameMagazine="R-73M1 Archer";
		shortNameMagazine="R-73M1 Archer";
		magazines[]=
		{
			"Mig_R73M1"
		};
	};
	class Mig_R27Launcher: Mig_R73Launcher
	{
		displayName="R-27 Alamo";
		displayNameMagazine="R-27 Alamo";
		shortNameMagazine="R-27 Alamo";
		magazines[]=
		{
			"Mig_R27R",
			"Mig_R27EA"
		};
		reloadTime=0.30000001;
	};
	class Mig_fake_weapon: FakeWeapon
	{
		displayName="Safe mod";
		displayNameMagazine="Safe mod";
		shortNameMagazine="Safe mod";
		magazines[]=
		{
		};
	};
};
