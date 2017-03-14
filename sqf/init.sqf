
_plane = _this select 0;

_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\2.paa"];
_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\1.paa"];

_num = (random 99);

_num1 = floor( _num / 10);
_num2 = floor( _num - (_num1 * 10 ));

switch (_num1) do
{
	case 0:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\0.paa"];
	};
	case 1:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\1.paa"];
	};
	case 2:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\2.paa"];
	};
	case 3:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\3.paa"];
	};
	case 4:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\4.paa"];
	};
	case 5:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\5.paa"];
	};
	case 6:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\6.paa"];
	};
	case 7:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\7.paa"];
	};
	case 8:
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\8.paa"];
	};

	default
	{
		_plane setObjectTextureGlobal [0, "\Mikoyan-Mig-29\num\9.paa"];
	};
};

switch (_num2) do
{
	case 0:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\0.paa"];
	};
	case 1:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\1.paa"];
	};
	case 2:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\2.paa"];
	};
	case 3:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\3.paa"];
	};
	case 4:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\4.paa"];
	};
	case 5:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\5.paa"];
	};
	case 6:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\6.paa"];
	};
	case 7:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\7.paa"];
	};
	case 8:
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\8.paa"];
	};

	default
	{
		_plane setObjectTextureGlobal [1, "\Mikoyan-Mig-29\num\9.paa"];
	};
};

