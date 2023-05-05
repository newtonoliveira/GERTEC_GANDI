
unit gertec.lib.gandi;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JGandi = interface;//br.com.gertec.gandi.Gandi
  JIGandi = interface;//br.com.gertec.gandi.IGandi
  Jgandi_a = interface;//br.com.gertec.gandi.a
  Jgandi_b = interface;//br.com.gertec.gandi.b
  Jgandi_c = interface;//br.com.gertec.gandi.c
  Jgandi_d = interface;//br.com.gertec.gandi.d
  Jgandi_e = interface;//br.com.gertec.gandi.e
  JBUTTON_ACTION = interface;//br.com.gertec.gandi.enums.BUTTON_ACTION
  JCA_TYPE = interface;//br.com.gertec.gandi.enums.CA_TYPE
  JCHECK_CARD_STATE = interface;//br.com.gertec.gandi.enums.CHECK_CARD_STATE
  JCHECK_CARD_TYPE = interface;//br.com.gertec.gandi.enums.CHECK_CARD_TYPE
  JDAYDREAM_MODE = interface;//br.com.gertec.gandi.enums.DAYDREAM_MODE
  JNAVIGATION_BUTTON = interface;//br.com.gertec.gandi.enums.NAVIGATION_BUTTON
  JPRINT_DENSITY = interface;//br.com.gertec.gandi.enums.PRINT_DENSITY
  JSCREEN_LOCK_TYPE = interface;//br.com.gertec.gandi.enums.SCREEN_LOCK_TYPE
  JSYSTEM_CONFIGURATION_MENU = interface;//br.com.gertec.gandi.enums.SYSTEM_CONFIGURATION_MENU
  JTETHERING_OPTION = interface;//br.com.gertec.gandi.enums.TETHERING_OPTION
  Jgandi_f = interface;//br.com.gertec.gandi.f
  Jgandi_g = interface;//br.com.gertec.gandi.g
  Jg_a = interface;//br.com.gertec.gandi.g$a
  Jg_a_a = interface;//br.com.gertec.gandi.g$a$a
  Jgandi_h = interface;//br.com.gertec.gandi.h
  Jh_a = interface;//br.com.gertec.gandi.h$a
  Jh_a_a = interface;//br.com.gertec.gandi.h$a$a
  Jgandi_i = interface;//br.com.gertec.gandi.i
  Ji_a = interface;//br.com.gertec.gandi.i$a
  Ji_a_a = interface;//br.com.gertec.gandi.i$a$a
  Jgandi_m = interface;//br.com.gertec.gandi.m
  Jgandi_j = interface;//br.com.gertec.gandi.j
  Jgandi_k = interface;//br.com.gertec.gandi.k
  Jgandi_l = interface;//br.com.gertec.gandi.l
  Jgandi_n = interface;//br.com.gertec.gandi.n
  Jgandi_o = interface;//br.com.gertec.gandi.o
  JCountDownLatch = interface;//java.util.concurrent.CountDownLatch
  JSemaphore = interface;//java.util.concurrent.Semaphore

// ===== Interface declarations =====

  JGandiClass = interface(JObjectClass)
    ['{13444094-1712-459B-A4F1-B8B380EA3859}']
    {class} function getInstance(context: JContext): JIGandi; cdecl;
  end;

  [JavaSignature('br/com/gertec/gandi/Gandi')]
  JGandi = interface(JObject)
    ['{5CBDA3E0-8EE3-4BEE-BDCC-17E54E5655AC}']
  end;
  TJGandi = class(TJavaGenericImport<JGandiClass, JGandi>) end;

  JIGandiClass = interface(IJavaClass)
    ['{6FA79F3E-59DF-41A8-9884-1964E318FEC9}']
  end;

  [JavaSignature('br/com/gertec/gandi/IGandi')]
  JIGandi = interface(IJavaInstance)
    ['{02E3DCCE-4426-44C5-BE39-6FD9F3C46694}']
    procedure AdbLogEnabled(b: Boolean); cdecl;
    function ApnListGet: JList; cdecl;
    procedure ApnRestore; cdecl;
    procedure ApnSet(contentValues: JContentValues); cdecl;
    procedure ApnSwitch(string_: JString); cdecl;
    procedure AppErrorDialogEnabled(b: Boolean); cdecl;
    procedure AppPowerSaveEnabled(string_: JString; b: Boolean); cdecl;
    procedure AutoCheckCard(b: Boolean); cdecl;
    procedure BatteryPercentEnabled(b: Boolean); cdecl;
    procedure BootAnimationSet(string_: JString); cdecl;
    procedure BootFirstAnimation(string_: JString); cdecl;
    procedure CaNotificationEnable(b: Boolean); cdecl;
    procedure CameraDoubleTapPowerEnabled(b: Boolean); cdecl;
    procedure CameraEnabled(b: Boolean); cdecl;
    procedure DaydreamActiveSet(string_: JString); cdecl;
    procedure DaydreamEnable(b: Boolean); cdecl;
    procedure DaydreamModeSet(dAYDREAM_MODE: JDAYDREAM_MODE); cdecl;
    procedure DoubleTapButtonActionSet(nAVIGATION_BUTTON: JNAVIGATION_BUTTON; bUTTON_ACTION: JBUTTON_ACTION); cdecl;
    procedure FactoryResetEnabled(b: Boolean); cdecl;
    procedure FileManagerEnable(b: Boolean); cdecl;
    procedure ForgetAllWiFi; cdecl;
    procedure GalleryEnabled(b: Boolean); cdecl;
    function GetBatteryLevel: JFloat; cdecl;
    function GetDeviceSerialNumber: JString; cdecl;
    function GetDeviceVersion: JString; cdecl;
    function GetScheduledReboot: JString; cdecl;
    procedure InstallCAcertificate(string_: JString); cdecl; overload;
    procedure InstallCAcertificate(cA_TYPE: JCA_TYPE; string_: JString); cdecl; overload;
    procedure LauncherEnabled(b: Boolean); cdecl;
    procedure LocationEnable(b: Boolean); cdecl;
    procedure LockScreenCameraVisibility(b: Boolean); cdecl;
    procedure LongTapButtonActionSet(nAVIGATION_BUTTON: JNAVIGATION_BUTTON; bUTTON_ACTION: JBUTTON_ACTION); cdecl;
    procedure MobileDataEnabled(b: Boolean); cdecl;
    procedure NavigationButtonEnable(nAVIGATION_BUTTON: JNAVIGATION_BUTTON; b: Boolean); cdecl;
    procedure PasswordSet(string_: JString); cdecl;
    procedure PreferredTTSEngineSet(string_: JString); cdecl;
    procedure RescuePartyEnabled(b: Boolean); cdecl;
    procedure ScheduledRebootSet(string_: JString); cdecl;
    procedure ScreenBrightnessSet(i: Integer); cdecl;
    procedure ScreenLockSet(sCREEN_LOCK_TYPE: JSCREEN_LOCK_TYPE); cdecl;
    procedure ScreenTimeOutSet(i: Integer); cdecl;
    procedure StatusBarEnable(b: Boolean); cdecl;
    procedure SystemConfigurationMenuVisibilitySet(sYSTEM_CONFIGURATION_MENU: JSYSTEM_CONFIGURATION_MENU; b: Boolean); cdecl;
    procedure TetheringSet(tETHERING_OPTION: JTETHERING_OPTION; b: Boolean); cdecl;
    procedure UninstallApp(b: Boolean); cdecl;
    procedure UninstallCustomerCaCertificate(cA_TYPE: JCA_TYPE; string_: JString); cdecl;
    procedure UnnecessaryLogsEnable(b: Boolean); cdecl;
    function UpdateFirmwareSP(string_: JString): Integer; cdecl;
    procedure UssdMessagesEnabled(b: Boolean); cdecl;
    function VersionGet: JString; cdecl;
  end;
  TJIGandi = class(TJavaGenericImport<JIGandiClass, JIGandi>) end;

  Jgandi_aClass = interface(JObjectClass)
    ['{F723B846-1FD7-40B9-BFEA-80468CA6BA48}']
    {class} function _Getc: JString; cdecl;
    {class} procedure _Setc(Value: JString); cdecl;
    {class} function _Getd: JString; cdecl;
    {class} procedure _Setd(Value: JString); cdecl;
    {class} function _Gete: JString; cdecl;
    {class} procedure _Sete(Value: JString); cdecl;
    {class} function _Getg: JString; cdecl;
    {class} procedure _Setg(Value: JString); cdecl;
    {class} function _Geth: JString; cdecl;
    {class} procedure _Seth(Value: JString); cdecl;
    {class} function _Geti: JString; cdecl;
    {class} procedure _Seti(Value: JString); cdecl;
    {class} function _Getk: JString; cdecl;
    {class} procedure _Setk(Value: JString); cdecl;
    {class} function _Getl: JString; cdecl;
    {class} procedure _Setl(Value: JString); cdecl;
    {class} function _Getm: JString; cdecl;
    {class} procedure _Setm(Value: JString); cdecl;
    {class} function _Geto: JString; cdecl;
    {class} procedure _Seto(Value: JString); cdecl;
    {class} function _Getp: JString; cdecl;
    {class} procedure _Setp(Value: JString); cdecl;
    {class} function _Getq: JString; cdecl;
    {class} procedure _Setq(Value: JString); cdecl;
    {class} function _Getr: JString; cdecl;
    {class} procedure _Setr(Value: JString); cdecl;
    {class} function _Gets: JString; cdecl;
    {class} procedure _Sets(Value: JString); cdecl;
    {class} function _Gett: JString; cdecl;
    {class} procedure _Sett(Value: JString); cdecl;
    {class} function _Getu: JString; cdecl;
    {class} procedure _Setu(Value: JString); cdecl;
    {class} function init: Jgandi_a; cdecl;//Deprecated
    {class} property c: JString read _Getc write _Setc;
    {class} property d: JString read _Getd write _Setd;
    {class} property e: JString read _Gete write _Sete;
    {class} property g: JString read _Getg write _Setg;
    {class} property h: JString read _Geth write _Seth;
    {class} property i: JString read _Geti write _Seti;
    {class} property k: JString read _Getk write _Setk;
    {class} property l: JString read _Getl write _Setl;
    {class} property m: JString read _Getm write _Setm;
    {class} property o: JString read _Geto write _Seto;
    {class} property p: JString read _Getp write _Setp;
    {class} property q: JString read _Getq write _Setq;
    {class} property r: JString read _Getr write _Setr;
    {class} property s: JString read _Gets write _Sets;
    {class} property t: JString read _Gett write _Sett;
    {class} property u: JString read _Getu write _Setu;
  end;

  [JavaSignature('br/com/gertec/gandi/a')]
  Jgandi_a = interface(JObject)
    ['{331538B5-D3A7-4AD4-A66E-BBCE0FBA5067}']
    function _Geta: JString; cdecl;
    function _Getb: JString; cdecl;
    procedure _Setb(Value: JString); cdecl;
    function _Getf: JString; cdecl;
    procedure _Setf(Value: JString); cdecl;
    function _Getj: JString; cdecl;
    procedure _Setj(Value: JString); cdecl;
    function _Getn: JString; cdecl;
    procedure _Setn(Value: JString); cdecl;
    function a: JContentValues; cdecl; overload;
    procedure a(contentValues: JContentValues); cdecl; overload;
    function toString: JString; cdecl;
    property a: JString read _Geta;
    property b: JString read _Getb write _Setb;
    property f: JString read _Getf write _Setf;
    property j: JString read _Getj write _Setj;
    property n: JString read _Getn write _Setn;
  end;
  TJgandi_a = class(TJavaGenericImport<Jgandi_aClass, Jgandi_a>) end;

  Jgandi_bClass = interface(JRunnableClass)
    ['{760C36AB-3453-4528-9F16-C61DC1E77E96}']
  end;

  [JavaSignature('br/com/gertec/gandi/b')]
  Jgandi_b = interface(JRunnable)
    ['{888F34D7-1603-4238-A0BB-8DF175033D88}']
    procedure run; cdecl;
  end;
  TJgandi_b = class(TJavaGenericImport<Jgandi_bClass, Jgandi_b>) end;

  Jgandi_cClass = interface(JRunnableClass)
    ['{2E48B988-70E2-40C0-8258-A7F0A43FEED7}']
  end;

  [JavaSignature('br/com/gertec/gandi/c')]
  Jgandi_c = interface(JRunnable)
    ['{D4990E0A-5516-4733-B04C-68DE721D093A}']
    procedure run; cdecl;
  end;
  TJgandi_c = class(TJavaGenericImport<Jgandi_cClass, Jgandi_c>) end;

  Jgandi_dClass = interface(JServiceConnectionClass)
    ['{19882FBB-E7CB-4588-951C-FD32CF1ECCD1}']
  end;

  [JavaSignature('br/com/gertec/gandi/d')]
  Jgandi_d = interface(JServiceConnection)
    ['{F722FD79-E772-46E8-B58A-4984B9FE2C61}']
    procedure onServiceConnected(componentName: JComponentName; iBinder: JIBinder); cdecl;
    procedure onServiceDisconnected(componentName: JComponentName); cdecl;
  end;
  TJgandi_d = class(TJavaGenericImport<Jgandi_dClass, Jgandi_d>) end;

  Jgandi_eClass = interface(JObjectClass)
    ['{F618D362-1F31-446A-97AB-D65DA9C38AF5}']
    {class} function _Geta: TJavaArray<Integer>; cdecl;
    {class} property a: TJavaArray<Integer> read _Geta;
  end;

  [JavaSignature('br/com/gertec/gandi/e')]
  Jgandi_e = interface(JObject)
    ['{7F127917-BFEF-42BE-BA7E-F7C06CB15AC0}']
  end;
  TJgandi_e = class(TJavaGenericImport<Jgandi_eClass, Jgandi_e>) end;

  JBUTTON_ACTIONClass = interface(JEnumClass)
    ['{388EFDB0-6425-4E7D-A033-33C4001769EB}']
    {class} function _GetAPP_SWITCH: JBUTTON_ACTION; cdecl;
    {class} function _GetIN_APP_SEARCH: JBUTTON_ACTION; cdecl;
    {class} function _GetLAUNCH_CAMERA: JBUTTON_ACTION; cdecl;
    {class} function _GetMENU: JBUTTON_ACTION; cdecl;
    {class} function _GetNOTHING: JBUTTON_ACTION; cdecl;
    {class} function _GetSLEEP: JBUTTON_ACTION; cdecl;
    {class} function valueOf(string_: JString): JBUTTON_ACTION; cdecl;
    {class} function values: TJavaObjectArray<JBUTTON_ACTION>; cdecl;//Deprecated
    {class} property APP_SWITCH: JBUTTON_ACTION read _GetAPP_SWITCH;
    {class} property IN_APP_SEARCH: JBUTTON_ACTION read _GetIN_APP_SEARCH;
    {class} property LAUNCH_CAMERA: JBUTTON_ACTION read _GetLAUNCH_CAMERA;
    {class} property MENU: JBUTTON_ACTION read _GetMENU;
    {class} property NOTHING: JBUTTON_ACTION read _GetNOTHING;
    {class} property SLEEP: JBUTTON_ACTION read _GetSLEEP;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/BUTTON_ACTION')]
  JBUTTON_ACTION = interface(JEnum)
    ['{11E14844-718E-4454-B68C-C65E161D871E}']
    function getValue: Integer; cdecl;
  end;
  TJBUTTON_ACTION = class(TJavaGenericImport<JBUTTON_ACTIONClass, JBUTTON_ACTION>) end;

  JCA_TYPEClass = interface(JEnumClass)
    ['{FB2130B2-5266-4D4F-91E1-A92115F5FF5F}']
    {class} function _GetTYPE_SYSTEM_CA: JCA_TYPE; cdecl;
    {class} function _GetTYPE_USER_CA: JCA_TYPE; cdecl;
    {class} function valueOf(string_: JString): JCA_TYPE; cdecl;
    {class} function values: TJavaObjectArray<JCA_TYPE>; cdecl;//Deprecated
    {class} property TYPE_SYSTEM_CA: JCA_TYPE read _GetTYPE_SYSTEM_CA;
    {class} property TYPE_USER_CA: JCA_TYPE read _GetTYPE_USER_CA;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/CA_TYPE')]
  JCA_TYPE = interface(JEnum)
    ['{E78A0388-4B33-43D7-9F18-FE41F384E78E}']
    function getValue: Integer; cdecl;
  end;
  TJCA_TYPE = class(TJavaGenericImport<JCA_TYPEClass, JCA_TYPE>) end;

  JCHECK_CARD_STATEClass = interface(JEnumClass)
    ['{821395FD-5793-4425-894A-D49CA65A6430}']
    {class} function _GetEVERY_TIME_CHECK: JCHECK_CARD_STATE; cdecl;
    {class} function _GetSTOP_CHECK: JCHECK_CARD_STATE; cdecl;
    {class} function _GetWAKE_CHECK: JCHECK_CARD_STATE; cdecl;
    {class} function valueOf(string_: JString): JCHECK_CARD_STATE; cdecl;
    {class} function values: TJavaObjectArray<JCHECK_CARD_STATE>; cdecl;//Deprecated
    {class} property EVERY_TIME_CHECK: JCHECK_CARD_STATE read _GetEVERY_TIME_CHECK;
    {class} property STOP_CHECK: JCHECK_CARD_STATE read _GetSTOP_CHECK;
    {class} property WAKE_CHECK: JCHECK_CARD_STATE read _GetWAKE_CHECK;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/CHECK_CARD_STATE')]
  JCHECK_CARD_STATE = interface(JEnum)
    ['{C7D4335E-4C1C-4454-8DB1-12E54651C806}']
    function getValue: Integer; cdecl;
  end;
  TJCHECK_CARD_STATE = class(TJavaGenericImport<JCHECK_CARD_STATEClass, JCHECK_CARD_STATE>) end;

  JCHECK_CARD_TYPEClass = interface(JEnumClass)
    ['{3D9A554D-4404-4759-8560-208BDF16F74B}']
    {class} function _GetCONTACT: JCHECK_CARD_TYPE; cdecl;
    {class} function _GetCONTACT_AND_MAG: JCHECK_CARD_TYPE; cdecl;
    {class} function _GetMAG: JCHECK_CARD_TYPE; cdecl;
    {class} function _GetNON: JCHECK_CARD_TYPE; cdecl;
    {class} function valueOf(string_: JString): JCHECK_CARD_TYPE; cdecl;
    {class} function values: TJavaObjectArray<JCHECK_CARD_TYPE>; cdecl;//Deprecated
    {class} property CONTACT: JCHECK_CARD_TYPE read _GetCONTACT;
    {class} property CONTACT_AND_MAG: JCHECK_CARD_TYPE read _GetCONTACT_AND_MAG;
    {class} property MAG: JCHECK_CARD_TYPE read _GetMAG;
    {class} property NON: JCHECK_CARD_TYPE read _GetNON;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/CHECK_CARD_TYPE')]
  JCHECK_CARD_TYPE = interface(JEnum)
    ['{958580E2-83E1-479F-ACCD-EBF5DB4C53CA}']
    function getValue: Integer; cdecl;
  end;
  TJCHECK_CARD_TYPE = class(TJavaGenericImport<JCHECK_CARD_TYPEClass, JCHECK_CARD_TYPE>) end;

  JDAYDREAM_MODEClass = interface(JEnumClass)
    ['{85CDB111-18BD-43E8-90AD-D1A8600518AE}']
    {class} function _GetALWAYS: JDAYDREAM_MODE; cdecl;
    {class} function _GetDOCK: JDAYDREAM_MODE; cdecl;
    {class} function _GetEITHER: JDAYDREAM_MODE; cdecl;
    {class} function _GetSLEEP: JDAYDREAM_MODE; cdecl;
    {class} function valueOf(string_: JString): JDAYDREAM_MODE; cdecl;
    {class} function values: TJavaObjectArray<JDAYDREAM_MODE>; cdecl;//Deprecated
    {class} property ALWAYS: JDAYDREAM_MODE read _GetALWAYS;
    {class} property DOCK: JDAYDREAM_MODE read _GetDOCK;
    {class} property EITHER: JDAYDREAM_MODE read _GetEITHER;
    {class} property SLEEP: JDAYDREAM_MODE read _GetSLEEP;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/DAYDREAM_MODE')]
  JDAYDREAM_MODE = interface(JEnum)
    ['{E8594AC6-2DCD-4F73-A555-03231C7E0252}']
    function getValue: Integer; cdecl;
  end;
  TJDAYDREAM_MODE = class(TJavaGenericImport<JDAYDREAM_MODEClass, JDAYDREAM_MODE>) end;

  JNAVIGATION_BUTTONClass = interface(JEnumClass)
    ['{B10ADFCC-BF61-4DB2-A1D5-C98F4AEC023C}']
    {class} function _GetBACK_BUTTON: JNAVIGATION_BUTTON; cdecl;
    {class} function _GetHOME_BUTTON: JNAVIGATION_BUTTON; cdecl;
    {class} function _GetMENU_BUTTON: JNAVIGATION_BUTTON; cdecl;
    {class} function valueOf(string_: JString): JNAVIGATION_BUTTON; cdecl;
    {class} function values: TJavaObjectArray<JNAVIGATION_BUTTON>; cdecl;//Deprecated
    {class} property BACK_BUTTON: JNAVIGATION_BUTTON read _GetBACK_BUTTON;
    {class} property HOME_BUTTON: JNAVIGATION_BUTTON read _GetHOME_BUTTON;
    {class} property MENU_BUTTON: JNAVIGATION_BUTTON read _GetMENU_BUTTON;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/NAVIGATION_BUTTON')]
  JNAVIGATION_BUTTON = interface(JEnum)
    ['{84616067-6F86-44BB-A776-CFF394F9A57D}']
    function getValue: Integer; cdecl;
  end;
  TJNAVIGATION_BUTTON = class(TJavaGenericImport<JNAVIGATION_BUTTONClass, JNAVIGATION_BUTTON>) end;

  JPRINT_DENSITYClass = interface(JEnumClass)
    ['{0546ABFB-281C-4E51-9556-C8F80CFA40DF}']
    {class} function _GetHIGH: JPRINT_DENSITY; cdecl;
    {class} function _GetLOW: JPRINT_DENSITY; cdecl;
    {class} function _GetMEDIUN: JPRINT_DENSITY; cdecl;
    {class} function valueOf(string_: JString): JPRINT_DENSITY; cdecl;
    {class} function values: TJavaObjectArray<JPRINT_DENSITY>; cdecl;//Deprecated
    {class} property HIGH: JPRINT_DENSITY read _GetHIGH;
    {class} property LOW: JPRINT_DENSITY read _GetLOW;
    {class} property MEDIUN: JPRINT_DENSITY read _GetMEDIUN;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/PRINT_DENSITY')]
  JPRINT_DENSITY = interface(JEnum)
    ['{9796E9E1-9E34-44E3-AFC7-C46FAA3212F5}']
    function getValue: Integer; cdecl;
  end;
  TJPRINT_DENSITY = class(TJavaGenericImport<JPRINT_DENSITYClass, JPRINT_DENSITY>) end;

  JSCREEN_LOCK_TYPEClass = interface(JEnumClass)
    ['{0C2F1B0A-7AFF-48E2-BF79-991F53F83B40}']
    {class} function _GetNONE: JSCREEN_LOCK_TYPE; cdecl;
    {class} function _GetPASSWORD: JSCREEN_LOCK_TYPE; cdecl;
    {class} function _GetPATTERN: JSCREEN_LOCK_TYPE; cdecl;
    {class} function _GetPIN: JSCREEN_LOCK_TYPE; cdecl;
    {class} function _GetSWIPE: JSCREEN_LOCK_TYPE; cdecl;
    {class} function valueOf(string_: JString): JSCREEN_LOCK_TYPE; cdecl;
    {class} function values: TJavaObjectArray<JSCREEN_LOCK_TYPE>; cdecl;
    {class} property NONE: JSCREEN_LOCK_TYPE read _GetNONE;
    {class} property PASSWORD: JSCREEN_LOCK_TYPE read _GetPASSWORD;
    {class} property PATTERN: JSCREEN_LOCK_TYPE read _GetPATTERN;
    {class} property PIN: JSCREEN_LOCK_TYPE read _GetPIN;
    {class} property SWIPE: JSCREEN_LOCK_TYPE read _GetSWIPE;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/SCREEN_LOCK_TYPE')]
  JSCREEN_LOCK_TYPE = interface(JEnum)
    ['{521373D4-8BAB-47D0-99B3-A784F5C8DDF4}']
    function getValue: Integer; cdecl;
  end;
  TJSCREEN_LOCK_TYPE = class(TJavaGenericImport<JSCREEN_LOCK_TYPEClass, JSCREEN_LOCK_TYPE>) end;

  JSYSTEM_CONFIGURATION_MENUClass = interface(JEnumClass)
    ['{C4B43E64-E722-4BFE-A1AE-EB56F30E514A}']
    {class} function _GetAIRPLANE: JSYSTEM_CONFIGURATION_MENU; cdecl;
    {class} function _GetBLUETOOTH: JSYSTEM_CONFIGURATION_MENU; cdecl;
    {class} function _GetLOCATION: JSYSTEM_CONFIGURATION_MENU; cdecl;
    {class} function _GetLOCATION_AND_AIRPLANE: JSYSTEM_CONFIGURATION_MENU; cdecl;
    {class} function _GetSETTINGS: JSYSTEM_CONFIGURATION_MENU; cdecl;
    {class} function _GetWIFI: JSYSTEM_CONFIGURATION_MENU; cdecl;
    {class} function valueOf(string_: JString): JSYSTEM_CONFIGURATION_MENU; cdecl;
    {class} function values: TJavaObjectArray<JSYSTEM_CONFIGURATION_MENU>; cdecl;//Deprecated
    {class} property AIRPLANE: JSYSTEM_CONFIGURATION_MENU read _GetAIRPLANE;
    {class} property BLUETOOTH: JSYSTEM_CONFIGURATION_MENU read _GetBLUETOOTH;
    {class} property LOCATION: JSYSTEM_CONFIGURATION_MENU read _GetLOCATION;
    {class} property LOCATION_AND_AIRPLANE: JSYSTEM_CONFIGURATION_MENU read _GetLOCATION_AND_AIRPLANE;
    {class} property SETTINGS: JSYSTEM_CONFIGURATION_MENU read _GetSETTINGS;
    {class} property WIFI: JSYSTEM_CONFIGURATION_MENU read _GetWIFI;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/SYSTEM_CONFIGURATION_MENU')]
  JSYSTEM_CONFIGURATION_MENU = interface(JEnum)
    ['{07E8879D-773F-45F0-87C9-9969F518D85D}']
    function getValue: Integer; cdecl;
  end;
  TJSYSTEM_CONFIGURATION_MENU = class(TJavaGenericImport<JSYSTEM_CONFIGURATION_MENUClass, JSYSTEM_CONFIGURATION_MENU>) end;

  JTETHERING_OPTIONClass = interface(JEnumClass)
    ['{6D6E0537-C1EB-4E7B-80F6-6278AB664ED4}']
    {class} function _GetBLUETOOTH: JTETHERING_OPTION; cdecl;
    {class} function _GetSETWIFI: JTETHERING_OPTION; cdecl;
    {class} function _GetTETHER: JTETHERING_OPTION; cdecl;
    {class} function _GetUSB: JTETHERING_OPTION; cdecl;
    {class} function _GetWIFI: JTETHERING_OPTION; cdecl;
    {class} function valueOf(string_: JString): JTETHERING_OPTION; cdecl;
    {class} function values: TJavaObjectArray<JTETHERING_OPTION>; cdecl;
    {class} property BLUETOOTH: JTETHERING_OPTION read _GetBLUETOOTH;
    {class} property SETWIFI: JTETHERING_OPTION read _GetSETWIFI;
    {class} property TETHER: JTETHERING_OPTION read _GetTETHER;
    {class} property USB: JTETHERING_OPTION read _GetUSB;
    {class} property WIFI: JTETHERING_OPTION read _GetWIFI;
  end;

  [JavaSignature('br/com/gertec/gandi/enums/TETHERING_OPTION')]
  JTETHERING_OPTION = interface(JEnum)
    ['{CCFC51CA-A1BF-43A2-A214-A34DFA882ACE}']
    function getValue: Integer; cdecl;
  end;
  TJTETHERING_OPTION = class(TJavaGenericImport<JTETHERING_OPTIONClass, JTETHERING_OPTION>) end;

  Jgandi_fClass = interface(JIGandiClass)
    ['{4DBB6DDE-1BA4-4A12-AEF0-9579361B709B}']
    {class} function a(f: Jgandi_f): JContext; cdecl; overload;
    {class} function a(f: Jgandi_f; j: Jgandi_j): Jgandi_j; cdecl; overload;
    {class} function b(f: Jgandi_f): JString; cdecl;
  end;

  [JavaSignature('br/com/gertec/gandi/f')]
  Jgandi_f = interface(JIGandi)
    ['{5B748207-AC70-40FA-BA90-804F0F283A79}']
    procedure AdbLogEnabled(b: Boolean); cdecl;
    function ApnListGet: JList; cdecl;
    procedure ApnRestore; cdecl;
    procedure ApnSet(contentValues: JContentValues); cdecl;
    procedure ApnSwitch(string_: JString); cdecl;
    procedure AppErrorDialogEnabled(b: Boolean); cdecl;
    procedure AppPowerSaveEnabled(string_: JString; b: Boolean); cdecl;
    procedure AutoCheckCard(b: Boolean); cdecl;
    procedure BatteryPercentEnabled(b: Boolean); cdecl;
    procedure BootAnimationSet(string_: JString); cdecl;
    procedure BootFirstAnimation(string_: JString); cdecl;
    procedure CaNotificationEnable(b: Boolean); cdecl;
    procedure CameraDoubleTapPowerEnabled(b: Boolean); cdecl;
    procedure CameraEnabled(b: Boolean); cdecl;
    procedure DaydreamActiveSet(string_: JString); cdecl;
    procedure DaydreamEnable(b: Boolean); cdecl;
    procedure DaydreamModeSet(dAYDREAM_MODE: JDAYDREAM_MODE); cdecl;
    procedure DoubleTapButtonActionSet(nAVIGATION_BUTTON: JNAVIGATION_BUTTON; bUTTON_ACTION: JBUTTON_ACTION); cdecl;
    procedure FactoryResetEnabled(b: Boolean); cdecl;
    procedure FileManagerEnable(b: Boolean); cdecl;
    procedure ForgetAllWiFi; cdecl;
    procedure GalleryEnabled(b: Boolean); cdecl;
    function GetBatteryLevel: JFloat; cdecl;
    function GetDeviceSerialNumber: JString; cdecl;
    function GetDeviceVersion: JString; cdecl;
    function GetScheduledReboot: JString; cdecl;
    procedure InstallCAcertificate(string_: JString); cdecl; overload;
    procedure InstallCAcertificate(cA_TYPE: JCA_TYPE; string_: JString); cdecl; overload;
    procedure LauncherEnabled(b: Boolean); cdecl;
    procedure LocationEnable(b: Boolean); cdecl;
    procedure LockScreenCameraVisibility(b: Boolean); cdecl;
    procedure LongTapButtonActionSet(nAVIGATION_BUTTON: JNAVIGATION_BUTTON; bUTTON_ACTION: JBUTTON_ACTION); cdecl;
    procedure MobileDataEnabled(b: Boolean); cdecl;
    procedure NavigationButtonEnable(nAVIGATION_BUTTON: JNAVIGATION_BUTTON; b: Boolean); cdecl;
    procedure PasswordSet(string_: JString); cdecl;
    procedure PreferredTTSEngineSet(string_: JString); cdecl;
    procedure RescuePartyEnabled(b: Boolean); cdecl;
    procedure ScheduledRebootSet(string_: JString); cdecl;
    procedure ScreenBrightnessSet(i: Integer); cdecl;
    procedure ScreenLockSet(sCREEN_LOCK_TYPE: JSCREEN_LOCK_TYPE); cdecl;
    procedure ScreenTimeOutSet(i: Integer); cdecl;
    procedure StatusBarEnable(b: Boolean); cdecl;
    procedure SystemConfigurationMenuVisibilitySet(sYSTEM_CONFIGURATION_MENU: JSYSTEM_CONFIGURATION_MENU; b: Boolean); cdecl;
    procedure TetheringSet(tETHERING_OPTION: JTETHERING_OPTION; b: Boolean); cdecl;
    procedure UninstallApp(b: Boolean); cdecl;
    procedure UninstallCustomerCaCertificate(cA_TYPE: JCA_TYPE; string_: JString); cdecl;
    procedure UnnecessaryLogsEnable(b: Boolean); cdecl;
    function UpdateFirmwareSP(string_: JString): Integer; cdecl;
    procedure UssdMessagesEnabled(b: Boolean); cdecl;
    function VersionGet: JString; cdecl;
  end;
  TJgandi_f = class(TJavaGenericImport<Jgandi_fClass, Jgandi_f>) end;

  Jgandi_gClass = interface(JIInterfaceClass)
    ['{E7830296-51C4-461B-A0F7-267325357399}']
  end;

  [JavaSignature('br/com/gertec/gandi/g')]
  Jgandi_g = interface(JIInterface)
    ['{4B01CCCB-95B3-4687-8C92-9B807A8D8077}']
  end;
  TJgandi_g = class(TJavaGenericImport<Jgandi_gClass, Jgandi_g>) end;

  Jg_aClass = interface(JBinderClass)
    ['{AA385FA7-23CF-445F-A83E-0138A0F50EF7}']
    {class} function a(iBinder: JIBinder): Jgandi_g; cdecl;
  end;

  [JavaSignature('br/com/gertec/gandi/g$a')]
  Jg_a = interface(JBinder)
    ['{5CA88A69-D79F-43B7-93A3-202254123724}']
  end;
  TJg_a = class(TJavaGenericImport<Jg_aClass, Jg_a>) end;

  Jg_a_aClass = interface(Jgandi_gClass)
    ['{BF043AB3-2781-4F55-AD39-D5A6888B22BF}']
  end;

  [JavaSignature('br/com/gertec/gandi/g$a$a')]
  Jg_a_a = interface(Jgandi_g)
    ['{3D577DE4-51F6-4408-B0FE-EEE0F82FB19F}']
    function asBinder: JIBinder; cdecl;
  end;
  TJg_a_a = class(TJavaGenericImport<Jg_a_aClass, Jg_a_a>) end;

  Jgandi_hClass = interface(JIInterfaceClass)
    ['{C60309ED-EC16-470D-8FF4-F6893D038BCE}']
  end;

  [JavaSignature('br/com/gertec/gandi/h')]
  Jgandi_h = interface(JIInterface)
    ['{7AC8FED6-E9BC-406C-8EE0-2D769F0C8374}']
    function a(b: Boolean): Integer; cdecl; overload;
    procedure a(string_: JString); cdecl; overload;
    function a(b: TJavaArray<Byte>): Integer; cdecl; overload;
    function a(b: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl; overload;
    function a(i: Integer; i1: Integer): Integer; cdecl; overload;
    function a(i: Integer; i1: Integer; i2: Integer; i3: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; i4: TJavaArray<Integer>): Integer; cdecl; overload;
  end;
  TJgandi_h = class(TJavaGenericImport<Jgandi_hClass, Jgandi_h>) end;

  Jh_aClass = interface(JBinderClass)
    ['{4F1735B8-EA48-4A47-93F5-E364933D38C9}']
    {class} function a: Jgandi_h; cdecl; overload;
    {class} function a(iBinder: JIBinder): Jgandi_h; cdecl; overload;
  end;

  [JavaSignature('br/com/gertec/gandi/h$a')]
  Jh_a = interface(JBinder)
    ['{A6048F21-4701-42F4-91C6-D6CA89F37A25}']
  end;
  TJh_a = class(TJavaGenericImport<Jh_aClass, Jh_a>) end;

  Jh_a_aClass = interface(Jgandi_hClass)
    ['{92C5D841-10A5-42E4-9A2A-0EED4E519212}']
    {class} function _Geta: Jgandi_h; cdecl;
    {class} property a: Jgandi_h read _Geta;
  end;

  [JavaSignature('br/com/gertec/gandi/h$a$a')]
  Jh_a_a = interface(Jgandi_h)
    ['{E36936D7-1767-4C63-828B-DF587704729C}']
    function a(b: TJavaArray<Byte>): Integer; cdecl; overload;
    procedure a(string_: JString); cdecl; overload;
    function a(b: Boolean): Integer; cdecl; overload;
    function a(i: Integer; i1: Integer): Integer; cdecl; overload;
    function a(b: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl; overload;
    function a(i: Integer; i1: Integer; i2: Integer; i3: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; i4: TJavaArray<Integer>): Integer; cdecl; overload;
    function asBinder: JIBinder; cdecl;
  end;
  TJh_a_a = class(TJavaGenericImport<Jh_a_aClass, Jh_a_a>) end;

  Jgandi_iClass = interface(JIInterfaceClass)
    ['{380422AE-1967-46AF-ADF1-E4069D7AF9FA}']
  end;

  [JavaSignature('br/com/gertec/gandi/i')]
  Jgandi_i = interface(JIInterface)
    ['{0C96785B-0E4A-4B06-9F6A-4035FB380225}']
    function a(i: Integer): JIBinder; cdecl;
  end;
  TJgandi_i = class(TJavaGenericImport<Jgandi_iClass, Jgandi_i>) end;

  Ji_aClass = interface(JBinderClass)
    ['{ADD72C20-C742-405F-A1D8-5490ECC434A3}']
    {class} function a: Jgandi_i; cdecl; overload;
    {class} function a(iBinder: JIBinder): Jgandi_i; cdecl; overload;
  end;

  [JavaSignature('br/com/gertec/gandi/i$a')]
  Ji_a = interface(JBinder)
    ['{7BA6AE09-219C-44FB-ADE9-AC041A7BA221}']
  end;
  TJi_a = class(TJavaGenericImport<Ji_aClass, Ji_a>) end;

  Ji_a_aClass = interface(Jgandi_iClass)
    ['{CACE4E83-EE34-4831-9E5A-FE00E1493D96}']
    {class} function _Geta: Jgandi_i; cdecl;
    {class} property a: Jgandi_i read _Geta;
  end;

  [JavaSignature('br/com/gertec/gandi/i$a$a')]
  Ji_a_a = interface(Jgandi_i)
    ['{F13B0F08-240F-47B7-8035-E5269DC20ABE}']
    function a(i: Integer): JIBinder; cdecl;
    function asBinder: JIBinder; cdecl;
  end;
  TJi_a_a = class(TJavaGenericImport<Ji_a_aClass, Ji_a_a>) end;

  Jgandi_mClass = interface(JObjectClass)
    ['{EAF3833C-3A2F-4AB7-9E59-C16B072077C0}']
    {class} function a: Jgandi_i; cdecl; overload;
    {class} function a(m: Jgandi_m): JIBinder_DeathRecipient; cdecl; overload;
    {class} function a(i: Jgandi_i): Jgandi_i; cdecl; overload;
    {class} function c(m: Jgandi_m): JContext; cdecl;
    {class} procedure d(m: Jgandi_m); cdecl;
    {class} function init: Jgandi_m; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/gertec/gandi/m')]
  Jgandi_m = interface(JObject)
    ['{586CBC6F-2DCA-438C-A69B-F6AAF4ABB4E9}']
    function a(i: Integer): JIBinder; cdecl; overload;
    function a(context: JContext; string_: JString): Boolean; cdecl; overload;
  end;
  TJgandi_m = class(TJavaGenericImport<Jgandi_mClass, Jgandi_m>) end;

  Jgandi_jClass = interface(Jgandi_mClass)
    ['{0A4484F8-1D56-423B-B662-72716B34ECC0}']
    {class} function init(context: JContext): Jgandi_j; cdecl;
  end;

  [JavaSignature('br/com/gertec/gandi/j')]
  Jgandi_j = interface(Jgandi_m)
    ['{80BA6AFB-B851-4B1F-9757-E02A01E646FC}']
    function a(b: Boolean): Integer; cdecl; overload;
    function a(i: Integer; i1: Integer): Integer; cdecl; overload;
  end;
  TJgandi_j = class(TJavaGenericImport<Jgandi_jClass, Jgandi_j>) end;

  Jgandi_kClass = interface(JServiceConnectionClass)
    ['{E7D00DDF-2361-4E68-90ED-892D8CB3D894}']
  end;

  [JavaSignature('br/com/gertec/gandi/k')]
  Jgandi_k = interface(JServiceConnection)
    ['{83CFED30-7FDC-41A4-8697-E5CF9DBB5DB6}']
    procedure onServiceConnected(componentName: JComponentName; iBinder: JIBinder); cdecl;
    procedure onServiceDisconnected(componentName: JComponentName); cdecl;
  end;
  TJgandi_k = class(TJavaGenericImport<Jgandi_kClass, Jgandi_k>) end;

  Jgandi_lClass = interface(JIBinder_DeathRecipientClass)
    ['{694AFDE5-EC97-4C66-9326-F2FB74073EE8}']
  end;

  [JavaSignature('br/com/gertec/gandi/l')]
  Jgandi_l = interface(JIBinder_DeathRecipient)
    ['{911F6280-58B6-4604-AEF8-ACC2624B4D66}']
    procedure binderDied; cdecl;
  end;
  TJgandi_l = class(TJavaGenericImport<Jgandi_lClass, Jgandi_l>) end;

  Jgandi_nClass = interface(Jgandi_mClass)
    ['{B802F9B6-3887-44C9-8AB9-BCD069919B10}']
    {class} function init(context: JContext): Jgandi_n; cdecl;
  end;

  [JavaSignature('br/com/gertec/gandi/n')]
  Jgandi_n = interface(Jgandi_m)
    ['{4C26C88C-14B5-4037-9BB0-89F845CCAAD9}']
    function a(b: TJavaArray<Byte>): Integer; cdecl; overload;
    function a(b: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl; overload;
    function a(i: Integer; i1: Integer; i2: Integer; i3: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; i4: TJavaArray<Integer>): Integer; cdecl; overload;
  end;
  TJgandi_n = class(TJavaGenericImport<Jgandi_nClass, Jgandi_n>) end;

  Jgandi_oClass = interface(JObjectClass)
    ['{4425084D-24D9-409A-8555-59C4EACFE465}']
    {class} function _Geta: JString; cdecl;
    {class} procedure a(context: JContext); cdecl;
    {class} property a: JString read _Geta;
  end;

  [JavaSignature('br/com/gertec/gandi/o')]
  Jgandi_o = interface(JObject)
    ['{CD291AA6-21A7-40D4-AC1A-BEBA1105DBF3}']
  end;
  TJgandi_o = class(TJavaGenericImport<Jgandi_oClass, Jgandi_o>) end;

  JCountDownLatchClass = interface(JObjectClass)
    ['{8BB952D3-8BF8-4704-BC03-DCE2997C03AC}']
    {class} function init(count: Integer): JCountDownLatch; cdecl;//Deprecated
    {class} function await(timeout: Int64; unit_: JTimeUnit): Boolean; cdecl; overload;
    {class} procedure countDown; cdecl;
    {class} function getCount: Int64; cdecl;
  end;

  [JavaSignature('java/util/concurrent/CountDownLatch')]
  JCountDownLatch = interface(JObject)
    ['{302AA7D1-4CD0-45CB-868F-C1CF1209D276}']
    procedure await; cdecl; overload;
    function toString: JString; cdecl;
  end;
  TJCountDownLatch = class(TJavaGenericImport<JCountDownLatchClass, JCountDownLatch>) end;

  JSemaphoreClass = interface(JObjectClass)
    ['{C04ACFCC-6B80-4EC4-88D3-431D1EBAA53C}']
    {class} function init(permits: Integer): JSemaphore; cdecl; overload;//Deprecated
    {class} function init(permits: Integer; fair: Boolean): JSemaphore; cdecl; overload;//Deprecated
    {class} procedure acquire; cdecl; overload;
    {class} procedure acquire(permits: Integer); cdecl; overload;
    {class} function drainPermits: Integer; cdecl;
    {class} function getQueueLength: Integer; cdecl;
    {class} function hasQueuedThreads: Boolean; cdecl;
    {class} function toString: JString; cdecl;
    {class} function tryAcquire: Boolean; cdecl; overload;
    {class} function tryAcquire(timeout: Int64; unit_: JTimeUnit): Boolean; cdecl; overload;
  end;

  [JavaSignature('java/util/concurrent/Semaphore')]
  JSemaphore = interface(JObject)
    ['{6F947A1D-8F66-4C25-9D34-0F42D29F32C2}']
    procedure acquireUninterruptibly; cdecl; overload;
    procedure acquireUninterruptibly(permits: Integer); cdecl; overload;
    function availablePermits: Integer; cdecl;
    function isFair: Boolean; cdecl;
    procedure release; cdecl; overload;
    procedure release(permits: Integer); cdecl; overload;
    function tryAcquire(permits: Integer): Boolean; cdecl; overload;
    function tryAcquire(permits: Integer; timeout: Int64; unit_: JTimeUnit): Boolean; cdecl; overload;
  end;
  TJSemaphore = class(TJavaGenericImport<JSemaphoreClass, JSemaphore>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('gertec.lib.gandi.JGandi', TypeInfo(gertec.lib.gandi.JGandi));
  TRegTypes.RegisterType('gertec.lib.gandi.JIGandi', TypeInfo(gertec.lib.gandi.JIGandi));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_a', TypeInfo(gertec.lib.gandi.Jgandi_a));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_b', TypeInfo(gertec.lib.gandi.Jgandi_b));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_c', TypeInfo(gertec.lib.gandi.Jgandi_c));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_d', TypeInfo(gertec.lib.gandi.Jgandi_d));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_e', TypeInfo(gertec.lib.gandi.Jgandi_e));
  TRegTypes.RegisterType('gertec.lib.gandi.JBUTTON_ACTION', TypeInfo(gertec.lib.gandi.JBUTTON_ACTION));
  TRegTypes.RegisterType('gertec.lib.gandi.JCA_TYPE', TypeInfo(gertec.lib.gandi.JCA_TYPE));
  TRegTypes.RegisterType('gertec.lib.gandi.JCHECK_CARD_STATE', TypeInfo(gertec.lib.gandi.JCHECK_CARD_STATE));
  TRegTypes.RegisterType('gertec.lib.gandi.JCHECK_CARD_TYPE', TypeInfo(gertec.lib.gandi.JCHECK_CARD_TYPE));
  TRegTypes.RegisterType('gertec.lib.gandi.JDAYDREAM_MODE', TypeInfo(gertec.lib.gandi.JDAYDREAM_MODE));
  TRegTypes.RegisterType('gertec.lib.gandi.JNAVIGATION_BUTTON', TypeInfo(gertec.lib.gandi.JNAVIGATION_BUTTON));
  TRegTypes.RegisterType('gertec.lib.gandi.JPRINT_DENSITY', TypeInfo(gertec.lib.gandi.JPRINT_DENSITY));
  TRegTypes.RegisterType('gertec.lib.gandi.JSCREEN_LOCK_TYPE', TypeInfo(gertec.lib.gandi.JSCREEN_LOCK_TYPE));
  TRegTypes.RegisterType('gertec.lib.gandi.JSYSTEM_CONFIGURATION_MENU', TypeInfo(gertec.lib.gandi.JSYSTEM_CONFIGURATION_MENU));
  TRegTypes.RegisterType('gertec.lib.gandi.JTETHERING_OPTION', TypeInfo(gertec.lib.gandi.JTETHERING_OPTION));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_f', TypeInfo(gertec.lib.gandi.Jgandi_f));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_g', TypeInfo(gertec.lib.gandi.Jgandi_g));
  TRegTypes.RegisterType('gertec.lib.gandi.Jg_a', TypeInfo(gertec.lib.gandi.Jg_a));
  TRegTypes.RegisterType('gertec.lib.gandi.Jg_a_a', TypeInfo(gertec.lib.gandi.Jg_a_a));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_h', TypeInfo(gertec.lib.gandi.Jgandi_h));
  TRegTypes.RegisterType('gertec.lib.gandi.Jh_a', TypeInfo(gertec.lib.gandi.Jh_a));
  TRegTypes.RegisterType('gertec.lib.gandi.Jh_a_a', TypeInfo(gertec.lib.gandi.Jh_a_a));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_i', TypeInfo(gertec.lib.gandi.Jgandi_i));
  TRegTypes.RegisterType('gertec.lib.gandi.Ji_a', TypeInfo(gertec.lib.gandi.Ji_a));
  TRegTypes.RegisterType('gertec.lib.gandi.Ji_a_a', TypeInfo(gertec.lib.gandi.Ji_a_a));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_m', TypeInfo(gertec.lib.gandi.Jgandi_m));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_j', TypeInfo(gertec.lib.gandi.Jgandi_j));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_k', TypeInfo(gertec.lib.gandi.Jgandi_k));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_l', TypeInfo(gertec.lib.gandi.Jgandi_l));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_n', TypeInfo(gertec.lib.gandi.Jgandi_n));
  TRegTypes.RegisterType('gertec.lib.gandi.Jgandi_o', TypeInfo(gertec.lib.gandi.Jgandi_o));
  TRegTypes.RegisterType('gertec.lib.gandi.JCountDownLatch', TypeInfo(gertec.lib.gandi.JCountDownLatch));
  TRegTypes.RegisterType('gertec.lib.gandi.JSemaphore', TypeInfo(gertec.lib.gandi.JSemaphore));
end;

initialization
  RegisterTypes;
end.

