if (isServer) then {
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;

  _this addmagazinecargoGlobal ["30Rnd_556x45_Stanag",30];
   _this addmagazinecargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",30];
   _this addmagazinecargoGlobal ["hlc_100Rnd_762x51_B_M60E4",15];
   _this addmagazinecargoGlobal ["tf47_m3maaws_HEAT",5];
   _this addmagazinecargoGlobal ["SmokeShell",5];
  _this addmagazinecargoGlobal ["SmokeShellGreen",5];
    _this additemcargoGlobal ["ACE_epinephrine",5];
    _this additemcargoGlobal ["ACE_Morphine",5];
    _this additemcargoGlobal ["ACE_bodyBag",5];
    		_this addItem "ACE_Clacker";
		_this addmagazinecargoGlobal ["DemoCharge_Remote_Mag", 5];


};