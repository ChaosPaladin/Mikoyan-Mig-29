class CfgMagazines
{
	class VehicleMagazine;

	class Mig_fake_M: VehicleMagazine
	{
		scope=2;
		count=1;
		ammo="Mig_fak_ammo";
		initSpeed=0;
		ammoIsProxy = true;
	};
	class Mig_150Rnd_30mm_GSh301: VehicleMagazine
	{
		scope=2;
		count=150;
		ammo="Mig_GSh301_30mm";
		initSpeed=900;
		tracersEvery=1;
		ammoIsProxy = true;
	};
	class Mig_KH29: VehicleMagazine
	{
		scope=2;
		displayName="Kh-29L";
		displayNameShort="Kh-29L";
		ammo="Mig_KH_29";
		ammoIsProxy = true;
		initSpeed=0;
		maxLeadSpeed=220;
		sound[]=
		{
			"",
			1,
			1
		};
		reloadSound[]=
		{
			"",
			0.00031622799,
			1
		};
		count=1;
		nameSound="missiles";
	};
	class Mig_R73: VehicleMagazine
	{
		scope=2;
		displayName="R-73";
		displayNameShort="R-73";
		ammo="Mig_R73_AA";
		ammoIsProxy = true;
		count=1;
		initSpeed=0;
		maxLeadSpeed=450;
		sound[]=
		{
			"A3\sounds_f\dummysound",
			1,
			1,
			1300
		};
		reloadSound[]=
		{
			"A3\sounds_f\dummysound",
			0.00031622799,
			1,
			20
		};
		nameSound="missiles";
	};
	class Mig_R73M1: Mig_R73
	{
		ammo="Mig_R73M1_AA";
		displayName="R-73M1";
		displayNameShort="R-73M1";
		ammoIsProxy = true;
		count=1;
	};
	class Mig_R27R: Mig_R73
	{
		scope=2;
		displayName="R-27R";
		displayNameShort="R-27R";
		count=1;
		ammoIsProxy = true;
		ammo="Mig_R27R_AA";
		initSpeed=0;
	};
	class Mig_R27EA: Mig_R27R
	{
		scope=2;
		displayName="R-27EA";
		displayNameShort="R-27EA";
		count=1;
		ammoIsProxy = true;
		ammo="Mig_R27EA_AA";
		initSpeed=0;
	};
};
