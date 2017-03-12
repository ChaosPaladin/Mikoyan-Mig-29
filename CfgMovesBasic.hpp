class CfgMovesBasic
{
	class DefaultDie;
	class ManActions
	{
		mig_pilot="mig_pilot";
	};
};
class CfgMovesMaleSdr: CfgMovesBasic
{
	class States
	{
		class Crew;
		class mig_pilot: Crew
		{
			file="\Mikoyan-Mig-29\anim\mig_pilot.rtm";
			interpolateTo[]=
			{
				"mig_pilot_dead",
				1
			};
		};
		class mig_pilot_dead: DefaultDie
		{
			actions="DeadActions";
			speed=0.5;
			looped="false";
			terminal=1;
			file="\Mikoyan-Mig-29\anim\mig_pilot_dead.rtm";
			connectTo[]=
			{
				"DeadState",
				0.1
			};
		};
	};
};
