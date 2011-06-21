Attribute VB_Name = "Declaraciones"
Option Explicit
#Const IsServer = 1

'[MODIFICADO] Captura la Bandera
Public Bandera() As WorldPos
'[/MODIFICADO] Captura la Bandera

Public rondax As Long
Type tEstadisticasDiarias
    Segundos As Double
    MaxUsuarios As Integer
    Promedio As Integer
End Type
    
Public DayStats As tEstadisticasDiarias

Public aClon As New clsAntiMassClon
Public TrashCollector As New Collection


Public Const MAXSPAWNATTEMPS = 60
Public Const INFINITE_LOOPS As Integer = -1
Public Const FXSANGRE = 14

''
'The color of chats over head of dead characters.
Public Const CHAT_COLOR_DEAD_CHAR As Long = &HC0C0C0

''
'The color of yells made by any kind of game administrator.
Public Const CHAT_COLOR_GM_YELL As Long = &HF82FF

''
'Coordinates for normal sounds (not 3D, like rain)
Public Const NO_3D_SOUND As Byte = 0

Public Const iFragataFantasmal = 87
Public Const iFragataReal = 190
Public Const iFragataCaos = 189
Public Const iBarca = 84
Public Const iGalera = 85
Public Const iGaleon = 86
Public Const iBarcaCiuda = 395
Public Const iBarcaPk = 396
Public Const iGaleraCiuda = 397
Public Const iGaleraPk = 398
Public Const iGaleonCiuda = 399
Public Const iGaleonPk = 400

Public Enum iMinerales
    HierroCrudo = 192
    PlataCruda = 193
    OroCrudo = 194
    LingoteDeHierro = 386
    LingoteDePlata = 387
    LingoteDeOro = 388
End Enum


Public Type tLlamadaGM
    Usuario As String * 255
    desc As String * 255
End Type

Public Enum PlayerType
    User = &H1
    Consejero = &H2
    SemiDios = &H4
    dios = &H8
    admin = &H10
    RoleMaster = &H20
    ChaosCouncil = &H40
    RoyalCouncil = &H80
End Enum

Public Enum eClanType
    ct_RoyalArmy
    ct_Evil
    ct_Neutral
    ct_GM
    ct_Legal
    ct_Criminal
End Enum

Public Const LimiteNewbie As Byte = 12

Public Type tCabecera 'Cabecera de los con
    desc As String * 255
    CRC As Long
    MagicWord As Long
End Type

Public MiCabecera As tCabecera

'Barrin 3/10/03
'Cambiado a 2 segundos el 30/11/07

Public Const NingunEscudo As Integer = 2
Public Const NingunCasco As Integer = 2
Public Const NingunArma As Integer = 2

Public Const EspadaMataDragonesIndex As Integer = 402
Public Const LAUDMAGICO As Integer = 696
Public Const FLAUTAMAGICA As Integer = 208


Public Const MAXMASCOTASENTRENADOR As Byte = 7

Public Enum FXIDs
    FXWARP = 1
    FXMEDITARCHICO = 4
    FXMEDITARMEDIANO = 5
    FXMEDITARGRANDE = 6
    FXMEDITARXGRANDE = 16
    FXMEDITARXXGRANDE = 34
End Enum

Public Const TIEMPO_CARCEL_PIQUETE As Long = 10

''
'TRIGGERS
'
'NADA nada
'BAJOTECHO bajo techo
'trigger_2 ???
'POSINVALIDA los npcs no pueden pisar tiles con este trigger
'ZONASEGURA no se puede robar o pelear desde este trigger
'ANTIPIQUETE
'ZONAPELEA al pelear en este trigger no se caen las cosas y no cambia el estado de ciuda o crimi
'
Public Enum eTrigger
    NADA = 0
    BAJOTECHO = 1
    trigger_2 = 2
    POSINVALIDA = 3
    ZONASEGURA = 4
    ANTIPIQUETE = 5
    ZONAPELEA = 6
    RESUCIU = 7
    RESUPK = 8
End Enum

''
'resu'
'graves'
'estu
'invi
'tormenta
'descarga
'apoca
'inmo
'remo
'constantes para el trigger 6
'
'@see eTrigger
'TRIGGER6_PERMITE TRIGGER6_PERMITE
'TRIGGER6_PROHIBE TRIGGER6_PROHIBE
'TRIGGER6_AUSENTE El trigger no aparece
'
Public Enum eTrigger6
    TRIGGER6_PERMITE = 1
    TRIGGER6_PROHIBE = 2
    TRIGGER6_AUSENTE = 3
End Enum

'TODO : Reemplazar por un enum
Public Const Bosque = "BOSQUE"
Public Const Nieve = "NIEVE"
Public Const Desierto = "DESIERTO"
Public Const Ciudad = "CIUDAD"
Public Const Campo = "CAMPO"
Public Const Dungeon = "DUNGEON"

'<<<<<< Targets >>>>>>
Public Enum TargetType
    uUsuarios = 1
    uNPC = 2
    uUsuariosYnpc = 3
    uTerreno = 4
End Enum

'<<<<<< Acciona sobre >>>>>>
Public Enum TipoHechizo
    uPropiedades = 1
    uEstado = 2
    uMaterializa = 3    'Nose usa
    uInvocacion = 4
End Enum

Public Const MAX_MENSAJES_FORO As Byte = 35

Public Const MAXUSERHECHIZOS As Byte = 12


'TODO: Y ESTO ? LO CONOCE GD ?
Public Const EsfuerzoTalarGeneral As Byte = 4
Public Const EsfuerzoTalarLe�ador As Byte = 2

Public Const EsfuerzoPescarPescador As Byte = 1
Public Const EsfuerzoPescarGeneral As Byte = 3

Public Const EsfuerzoExcavarMinero As Byte = 2
Public Const EsfuerzoExcavarGeneral As Byte = 5

Public Const FX_TELEPORT_INDEX As Integer = 1

'La utilidad de esto es casi nula, s�lo se revisa si fue a la cabeza...
Public Enum PartesCuerpo
    bCabeza = 1
    bPiernaIzquierda = 2
    bPiernaDerecha = 3
    bBrazoDerecho = 4
    bBrazoIzquierdo = 5
    bTorso = 6
End Enum

Public Const Guardias As Integer = 6

Public Const MAXREP As Long = 6000000
Public Const MAXORO As Long = 90000000
Public Const MAXEXP As Long = 99999999

Public Const MAXUSERMATADOS As Long = 65000

Public Const MAXATRIBUTOS As Byte = 38
Public Const MINATRIBUTOS As Byte = 6

Public Const LingoteHierro As Integer = 386
Public Const LingotePlata As Integer = 387
Public Const LingoteOro As Integer = 388
Public Const Le�a As Integer = 58


Public Const MAXNPCS As Integer = 100
Public Const MAXCHARS As Integer = 250

Public Const HACHA_LE�ADOR As Integer = 127
Public Const PIQUETE_MINERO As Integer = 187

Public Const DAGA As Integer = 15
Public Const FOGATA_APAG As Integer = 136
Public Const FOGATA As Integer = 63
Public Const ORO_MINA As Integer = 194
Public Const PLATA_MINA As Integer = 193
Public Const HIERRO_MINA As Integer = 192
Public Const MARTILLO_HERRERO As Integer = 389
Public Const SERRUCHO_CARPINTERO As Integer = 198
Public Const ObjArboles As Integer = 4
Public Const RED_PESCA As Integer = 543
Public Const CA�A_PESCA As Integer = 138

Public Enum eNPCType
    Comun = 0
    Revividor = 1
    GuardiaReal = 2
    Entrenador = 3
    Banquero = 4
    Noble = 5
    DRAGON = 6
    Timbero = 7
    Guardiascaos = 8
    ResucitadorNewbie = 9
End Enum

Public Const MIN_APU�ALAR As Byte = 10

'CONSTANTANTES ***********

''
'Cantidad de skills
Public Const NUMSKILLS As Byte = 21

''
'Cantidad de Atributos
Public Const NUMATRIBUTOS As Byte = 5

''
'Cantidad de Clases
Public Const NUMCLASES As Byte = 16

''
'Cantidad de Razas
Public Const NUMRAZAS As Byte = 5


''
'Valor maximo de cada skill
Public Const MAXSKILLPOINTS As Byte = 100

''
'Direccion
'
'NORTH Norte
'EAST Este
'SOUTH Sur
'WEST Oeste
'
Public Enum eHeading
    NORTH = 1
    EAST = 2
    SOUTH = 3
    WEST = 4
End Enum

''
'Cantidad maxima de mascotas
Public Const MAXMASCOTAS As Byte = 3

'%%%%%%%%%% CONSTANTES DE INDICES %%%%%%%%%%%%%%%
Public Const vlASALTO As Integer = 100
Public Const vlASESINO As Integer = 1000
Public Const vlCAZADOR As Integer = 5
Public Const vlNoble As Integer = 5
Public Const vlLadron As Integer = 25
Public Const vlProleta As Integer = 2

'%%%%%%%%%% CONSTANTES DE INDICES %%%%%%%%%%%%%%%
Public Const iCuerpoMuerto As Integer = 8
Public Const iCabezaMuerto As Integer = 500


Public Const iORO As Byte = 12
Public Const Pescado As Byte = 139

Public Enum PECES_POSIBLES
    PESCADO1 = 139
    PESCADO2 = 544
    PESCADO3 = 545
    PESCADO4 = 546
End Enum

'%%%%%%%%%% CONSTANTES DE INDICES %%%%%%%%%%%%%%%
Public Enum eSkill
    Suerte = 1
    magia = 2
    Robar = 3
    Tacticas = 4
    Armas = 5
    Meditar = 6
    Apu�alar = 7
    Ocultarse = 8
    Supervivencia = 9
    Talar = 10
    Comerciar = 11
    Defensa = 12
    Pesca = 13
    Mineria = 14
    Carpinteria = 15
    Herreria = 16
    Liderazgo = 17
    Domar = 18
    Proyectiles = 19
    Wrestling = 20
    Navegacion = 21
End Enum

Public Const FundirMetal = 88



Public Const AdicionalHPGuerrero As Byte = 2 'HP adicionales cuando sube de nivel
Public Const AdicionalHPCazador As Byte = 1 'HP adicionales cuando sube de nivel

Public Const AumentoSTDef As Byte = 15
Public Const AumentoSTLadron As Byte = AumentoSTDef + 3
Public Const AumentoSTMago As Byte = AumentoSTDef - 1
Public Const AumentoSTLe�ador As Byte = AumentoSTDef + 23
Public Const AumentoSTPescador As Byte = AumentoSTDef + 20
Public Const AumentoSTMinero As Byte = AumentoSTDef + 25

'Tama�o del mapa
Public Const XMinMapSize As Byte = 1
Public Const YMinMapSize As Byte = 1

'Tama�o del tileset
Public Const TileSizeX As Byte = 32
Public Const TileSizeY As Byte = 32

'Tama�o en Tiles de la pantalla de visualizacion
Public Const XWindow As Byte = 17
Public Const YWindow As Byte = 13

'Sonidos
Public Const SND_SWING As Byte = 2
Public Const SND_TALAR As Byte = 13
Public Const SND_PESCAR As Byte = 14
Public Const SND_MINERO As Byte = 15
Public Const SND_WARP As Byte = 3
Public Const SND_PUERTA As Byte = 5
Public Const SND_NIVEL As Byte = 6

Public Const SND_USERMUERTE As Byte = 11
Public Const SND_IMPACTO As Byte = 10
Public Const SND_IMPACTO2 As Byte = 12
Public Const SND_LE�ADOR As Byte = 13
Public Const SND_FOGATA As Byte = 14
Public Const SND_AVE As Byte = 21
Public Const SND_AVE2 As Byte = 22
Public Const SND_AVE3 As Byte = 34
Public Const SND_GRILLO As Byte = 28
Public Const SND_GRILLO2 As Byte = 29
Public Const SND_SACARARMA As Byte = 25
Public Const SND_ESCUDO As Byte = 37
Public Const MARTILLOHERRERO As Byte = 41
Public Const LABUROCARPINTERO As Byte = 42
Public Const SND_BEBER As Byte = 46

''
'Cantidad maxima de objetos por slot de inventario
Public Const MAX_INVENTORY_OBJS As Integer = 10000

''
'Cantidad de "slots" en el inventario
Public Const MAX_INVENTORY_SLOTS As Byte = 20

''
'Constante para indicar que se esta usando ORO
Public Const FLAGORO As Integer = MAX_INVENTORY_SLOTS + 1


'CATEGORIAS PRINCIPALES
Public Enum eOBJType
    otUseOnce = 1
    otWeapon = 2
    otArmadura = 3
    otArboles = 4
    otGuita = 5
    otPuertas = 6
    otContenedores = 7
    otCarteles = 8
    otLlaves = 9
    otForos = 10
    otPociones = 11
    otBebidas = 13
    otLe�a = 14
    otFogata = 15
    otESCUDO = 16
    otCASCO = 17
    otAnillo = 18
    otTeleport = 19
    otYacimiento = 22
    otMinerales = 23
    otPergaminos = 24
    otInstrumentos = 26
    otYunque = 27
    otFragua = 28
    otBarcos = 31
    otFlechas = 32
    otBotellaVacia = 33
    otBotellaLlena = 34
    otManchas = 35          'No se usa
    otCualquiera = 1000
End Enum

'Texto
Public Const FONTTYPE_TALK As String = "~255~255~255~0~0"
Public Const FONTTYPE_FIGHT As String = "~255~0~0~1~0"
Public Const FONTTYPE_WARNING As String = "~32~51~223~1~1"
Public Const FONTTYPE_INFO As String = "~65~190~156~0~0"
Public Const FONTTYPE_INFOBOLD As String = "~65~190~156~1~0"
Public Const FONTTYPE_EJECUCION As String = "~130~130~130~1~0"
Public Const FONTTYPE_PARTY As String = "~255~180~255~0~0"
Public Const FONTTYPE_VENENO As String = "~0~255~0~0~0"
Public Const FONTTYPE_GUILD As String = "~255~255~255~1~0"
Public Const FONTTYPE_SERVER As String = "~0~185~0~0~0"
Public Const FONTTYPE_GUILDMSG As String = "~228~199~27~0~0"
Public Const FONTTYPE_CONSEJO As String = "~130~130~255~1~0"
Public Const FONTTYPE_CONSEJOCAOS As String = "~255~60~00~1~0"
Public Const FONTTYPE_CONSEJOVesA As String = "~0~200~255~1~0"
Public Const FONTTYPE_CONSEJOCAOSVesA As String = "~255~50~0~1~0"
Public Const FONTTYPE_CENTINELA As String = "~0~255~0~1~0"

'Estadisticas
Public Const STAT_MAXELV As Byte = 50
Public Const STAT_MAXHP As Integer = 999
Public Const STAT_MAXSTA As Integer = 999
Public Const STAT_MAXMAN As Integer = 9999
Public Const STAT_MAXHIT_UNDER36 As Byte = 99
Public Const STAT_MAXHIT_OVER36 As Integer = 999
Public Const STAT_MAXDEF As Byte = 99



'**************************************************************
'**************************************************************
'************************ TIPOS *******************************
'**************************************************************
'**************************************************************

Public Type tHechizo
    nombre As String
    desc As String
    PalabrasMagicas As String
    
    HechizeroMsg As String
    TargetMsg As String
    PropioMsg As String
    
'Resis As Byte
    
    tipo As TipoHechizo
    
    WAV As Integer
    FXgrh As Integer
    loops As Byte
    
    SubeHP As Byte
    MinHP As Integer
    MaxHP As Integer
    
    SubeMana As Byte
    MiMana As Integer
    MaMana As Integer
    
    SubeSta As Byte
    MinSta As Integer
    MaxSta As Integer
    
    SubeHam As Byte
    MinHam As Integer
    MaxHam As Integer
    
    SubeSed As Byte
    MinSed As Integer
    MaxSed As Integer
    
    SubeAgilidad As Byte
    MinAgilidad As Integer
    MaxAgilidad As Integer
    
    SubeFuerza As Byte
    MinFuerza As Integer
    MaxFuerza As Integer
    
    SubeCarisma As Byte
    MinCarisma As Integer
    MaxCarisma As Integer
    
    Invisibilidad As Byte
    Paraliza As Byte
    Inmoviliza As Byte
    RemoverParalisis As Byte
    RemoverEstupidez As Byte
    CuraVeneno As Byte
    Envenena As Byte
    Maldicion As Byte
    RemoverMaldicion As Byte
    Bendicion As Byte
    Estupidez As Byte
    Ceguera As Byte
    Revivir As Byte
    Morph As Byte
    Mimetiza As Byte
    RemueveInvisibilidadParcial As Byte
    
    Invoca As Byte
    NumNPC As Integer
    Cant As Integer

'Materializa As Byte
'ItemIndex As Byte
    
    MinSkill As Integer
    ManaRequerido As Integer

    'Barrin 29/9/03
    StaRequerido As Integer

    Target As TargetType
    
    NeedStaff As Integer
    StaffAffected As Boolean
End Type



Public Type UserOBJ
    ObjIndex As Integer
    Amount As Integer
    Equipped As Byte
    Flags As Long
End Type

Public Type Inventario
    Object(1 To MAX_INVENTORY_SLOTS) As UserOBJ
    WeaponEqpObjIndex As Integer
    WeaponEqpSlot As Byte
    ArmourEqpObjIndex As Integer
    ArmourEqpSlot As Byte
    EscudoEqpObjIndex As Integer
    EscudoEqpSlot As Byte
    CascoEqpObjIndex As Integer
    CascoEqpSlot As Byte
    MunicionEqpObjIndex As Integer
    MunicionEqpSlot As Byte
    AnilloEqpObjIndex As Integer
    AnilloEqpSlot As Byte
    BarcoObjIndex As Integer
    BarcoSlot As Byte
    NroItems As Integer
End Type

Public Type Position
    X As Integer
    Y As Integer
End Type

Public Type WorldPos
    map As Integer
    X As Integer
    Y As Integer
End Type

Public Type FXdata
    nombre As String
    GrhIndex As Integer
    Delay As Integer
End Type

'Datos de user o npc
Public Type Char
    CharIndex As Integer
    Head As Integer
    Body As Integer
    
    WeaponAnim As Integer
    ShieldAnim As Integer
    CascoAnim As Integer
    
    FX As Integer
    loops As Integer
    
    Heading As eHeading
    
    velocidad As Byte
    
    Particula As Integer
End Type

'Tipos de objetos
Public Type ObjData
    name As String 'Nombre del obj
    
    OBJType As eOBJType 'Tipo enum que determina cuales son las caract del obj
    
    GrhIndex As Integer 'Indice del grafico que representa el obj
    GrhSecundario As Integer
    
    'Solo contenedores
    MaxItems As Integer
    Conte As Inventario
    Apu�ala As Byte
    
    HechizoIndex As Integer
    
    'ForoID As String
    
    MinHP As Integer 'Minimo puntos de vida
    MaxHP As Integer 'Maximo puntos de vida
    
    
    MineralIndex As Integer
    LingoteInex As Integer
    
    
    proyectil As Integer
    Municion As Integer
    
    una_mano As Boolean
    
    Crucial As Byte
    Newbie As Integer
    
    'Puntos de Stamina que da
    MinSta As Integer 'Minimo puntos de stamina
    
    'Pociones
    TipoPocion As Byte
    MaxModificador As Integer
    MinModificador As Integer
    DuracionEfecto As Long
    MinSkill As Integer
    LingoteIndex As Integer
    
    MinHit As Integer 'Minimo golpe
    MaxHit As Integer 'Maximo golpe
    
    MinHam As Integer
    MinSed As Integer
    
    def As Integer
    MinDef As Integer 'Armaduras
    MaxDef As Integer 'Armaduras
    
    Ropaje As Integer 'Indice del grafico del ropaje
    Ropaje_mina As Integer 'Indice del grafico del ropaje
    
    WeaponAnim As Integer 'Apunta a una anim de armas
    ShieldAnim As Integer 'Apunta a una anim de escudo
    CascoAnim As Integer
    
    Valor As Long     'Precio
    
    Cerrada As Integer
    Llave As Byte
    clave As Long 'si clave=llave la puerta se abre o cierra
    
    IndexAbierta As Integer
    IndexCerrada As Integer
    IndexCerradaLlave As Integer
    
    RazaEnana As Byte
    RazaDrow As Byte
    RazaElfa As Byte
    RazaGnoma As Byte
    RazaHumana As Byte
    
    Mujer As Byte
    Hombre As Byte
    
    Envenena As Byte
    Paraliza As Byte
    
    Agarrable As Byte
    
    LingH As Integer
    LingO As Integer
    LingP As Integer
    Madera As Integer
    
    SkHerreria As Integer
    SkCarpinteria As Integer
    

    
    'Clases que no tienen permitido usar este obj
    ClaseProhibida(1 To NUMCLASES) As eClass
    
    Snd1 As Integer
    Snd2 As Integer
    Snd3 As Integer
    
    Real As Integer
    Caos As Integer
    
    NoSeCae As Integer
    
    StaffPower As Integer
    StaffDamageBonus As Integer
    DefensaMagicaMax As Integer
    DefensaMagicaMin As Integer
    Refuerzo As Byte
    
    Log As Byte 'es un objeto que queremos loguear? Pablo (ToxicWaste) 07/09/07
    NoLog As Byte 'es un objeto que esta prohibido loguear?
    
    
End Type

Public Type obj
    ObjIndex As Integer
    Amount As Integer
End Type

'[Pablo ToxicWaste]

'[/Pablo ToxicWaste]


'
'
'
'
'T I P O S   D E    U S U A R I O S **************
'
'
'
'

Public Type tReputacion 'Fama del usuario
    NobleRep As Long
    BurguesRep As Long
    PlebeRep As Long
    LadronesRep As Long
    BandidoRep As Long
    AsesinoRep As Long
    Promedio As Long
End Type

'Estadisticas de los usuarios
Public Type UserStats
    GLD As Long 'Dinero
    Banco As Long
    
    MaxHP As Integer
    MinHP As Integer
    
    
    
    MaxSta As Integer
    MinSta As Integer
    MaxMan As Integer
    MinMan As Integer
    MaxHit As Integer
    MinHit As Integer
    
    MaxHam As Integer
    MinHam As Integer
    
    MaxAGU As Integer
    MinAGU As Integer
        
    def As Integer
    Exp As Double
    ELV As Byte
    ELU As Long
    UserAtributos(1 To NUMATRIBUTOS) As Byte
    UserAtributosBackUP(1 To NUMATRIBUTOS) As Byte
    UserHechizos(1 To MAXUSERHECHIZOS) As Integer
    UsuariosMatados As Long
    CriminalesMatados As Long
    puntos As Long
    muertes As Long
    muertesenv As Long
    honor As Long
    honorenv As Long
    UsuariosMatadosenv As Long
    puntosenv As Long
    NPCsMuertos As Integer
    
    SkillPts As Integer
    
End Type

'Flags
Public Type UserFlags
    modHonor As Single '[MODIFICAR] Con este se joden todos con el honor :D
    EstaEmpo As Byte    'Empollando (by yb)
    Muerto As Byte '�Esta muerto?
    Escondido As Byte '�Esta escondido?
    Comerciando As Boolean '�Esta comerciando?
    UserLogged As Boolean '�Esta online?
    UserLogged1 As Byte '�est� confirmado?
    Meditando As Boolean
    ModoCombate As Boolean
    Descuento As String
    Hambre As Byte
    Sed As Byte
    PuedeMoverse As Byte
    TimerLanzarSpell As Long
    PuedeTrabajar As Byte
    Envenenado As Byte
    Paralizado As Byte
    Inmovilizado As Byte
    Estupidez As Byte
    Ceguera As Byte
    invisible As Byte
    Maldicion As Byte
    Bendicion As Byte
    Oculto As Byte
    Desnudo As Byte
    Descansar As Boolean
    Hechizo As Integer
    TomoPocion As Boolean
    TipoPocion As Byte
    
    Vuela As Byte
    Navegando As Byte
    Seguro As Boolean
    SeguroResu As Boolean
    
    DuracionEfecto As Long
    TargetNPC As Integer 'Npc se�alado por el usuario
    TargetNpcTipo As eNPCType 'Tipo del npc se�alado
    NpcInv As Integer
    
    Ban As Byte
    AdministrativeBan As Byte
    
    TargetUser As Integer 'Usuario se�alado
    
    TargetObj As Integer 'Obj se�alado
    TargetObjMap As Integer
    TargetObjX As Integer
    TargetObjY As Integer
    
    TargetMap As Integer
    TargetX As Integer
    TargetY As Integer
    
    TargetObjInvIndex As Integer
    TargetObjInvSlot As Integer
    
    AtacadoPorNpc As Integer
    AtacadoPorUser As Integer
    NPCAtacado As Integer
    
    StatsChanged As Byte
    Privilegios As PlayerType
    
    ValCoDe As Integer
    
    LastCrimMatado As String
    LastCiudMatado As String
    
    OldBody As Integer
    OldHead As Integer
    AdminInvisible As Byte
    AdminPerseguible As Boolean
    
    ChatColor As Long
    
    '[el oso]
    MD5Reportado As String
    '[/el oso]
    
    '[Barrin 30-11-03]
    TimesWalk As Long
    StartWalk As Long
    CountSH As Long
    '[/Barrin 30-11-03]
    
    '[CDT 17-02-04]
    UltimoMensaje As Byte
    '[/CDT]
    
    NoActualizado As Boolean
    
    Silenciado As Byte
    
    Mimetizado As Byte
End Type

Public Type UserCounters
    IdleCount As Long
    AttackCounter As Integer
    HPCounter As Integer
    STACounter As Integer
    Frio As Integer
    Lava As Integer
    COMCounter As Integer
    AGUACounter As Integer
    Veneno As Integer
    Paralisis As Integer
    '[MODIFICADO] Sistema de Bots de MaTeO
    NMovement As Single
    ParalisisRemo As Integer
    '[/MODIFICADO] Sistema de Bots de MaTeO
    Ceguera As Integer
    Estupidez As Integer
    
    Invisibilidad As Integer
    TiempoOculto As Integer
    
    Mimetismo As Integer
    PiqueteC As Long
    Pena As Long
    SendMapCounter As WorldPos
    pasos As Integer
    '[Gonzalo]
    Saliendo As Boolean
    Salir As Integer
    '[/Gonzalo]
    
    'Barrin 3/10/03
    tInicioMeditar As Long
    bPuedeMeditar As Boolean
    'Barrin
    
    TimerLanzarSpell As Long
    TimerPuedeAtacar As Long
    TimerPuedeUsarArco As Long
    TimerPuedeTrabajar As Long
    TimerUsar As Long
    TimerMagiaGolpe As Long
    TimerGolpeMagia As Long
    
    
    Trabajando As Long  'Para el centinela
    Ocultando As Long   'Unico trabajo no revisado por el centinela
End Type

'Cosas faccionarias.
Public Type tFacciones
    ArmadaReal As Byte
    FuerzasCaos As Byte
    CriminalesMatados As Long
    CiudadanosMatados As Long
    RecompensasReal As Long
    RecompensasCaos As Long
    RecibioExpInicialReal As Byte
    RecibioExpInicialCaos As Byte
    RecibioArmaduraReal As Byte
    RecibioArmaduraCaos As Byte
    Reenlistadas As Byte
    NivelIngreso As Integer
    FechaIngreso As String
    MatadosIngreso As Integer 'Para Armadas nada mas
    NextRecompensa As Integer
End Type
Public Enum eKip
enone = 0
ePK = 1
eCui = 2
End Enum

Public Type webpj
    id          As Long
    name        As String
    clan        As String
    raza        As eRaza
    vidaup      As Integer
    clase       As eClass
    cabeza      As Integer
    genero      As eGenero
    Faccion     As Integer
    items(20)   As UserOBJ
    items_count As Integer
    cuerpo      As Integer
    casco       As Integer
    Arma        As Integer
    Escudo      As Integer
End Type

'Tipo de los Usuarios


Public Type ModClase
    Evasion As Double
    AtaqueArmas As Double
    AtaqueProyectiles As Double
    Da�oArmas As Double
    Da�oProyectiles As Double
    Da�oWrestling As Double
    Escudo As Double
End Type

Public Type ModRaza
    Fuerza As Single
    Agilidad As Single
    Inteligencia As Single
    Carisma As Single
    Constitucion As Single
End Type


Public Type User
    name As String
    nick As String
    passwd As String
    id As Long
    Bando As eKip
    showName As Boolean

    ClientID As Double

    Redundance As Byte
    
#If SeguridadArduz Then
    Security As SecurityData
#End If

    Ultimo1 As Byte
    Ultimo2 As Byte

    lastS As Long
    lastP As Long
    cPOT As Long
    
    last_packet As Byte
    
    ping As Integer
    
    registrado As Boolean
    dios As Byte
    
    Wrank As Long
    Wfrags As Long

    rango As Byte
    
    centinela As Boolean
    admin As Boolean
    
    mac As String
    
    ultimomatado As Integer
    
    modName As String
    
    ModClase As ModClase
    ModRaza As ModRaza
    
    ultimoencriptado As Boolean

    Char As Char 'Define la apariencia
    CharMimetizado As Char
    OrigChar As Char
    
    desc As String 'Descripcion
    DescRM As String
    
    email As String

    envios_ultimo As Long
    envios_recibido As Long
    envios_qeronda As Integer
    enviados_recibe_enronda As Integer
    
    Invent As Inventario
    OldInvent As Inventario
    
    Pos As WorldPos
    
    ConnIDValida As Boolean
    ConnID As Long 'ID
    
    Counters As UserCounters
    
    MascotasIndex(1 To MAXMASCOTAS) As Integer
    MascotasType(1 To MAXMASCOTAS) As Integer
    NroMascotas As Integer
    

    cuerpo As Integer
    cabeza_f As Integer
    f_cabeza As Boolean
    clase As eClass
    raza As eRaza
    genero As eGenero
    Stats As UserStats
    Flags As UserFlags
    Reputacion As tReputacion
    Faccion As tFacciones
    
    pasos_desde_resu As Long
    en_bolas As Boolean
    
    NumeroPaquetesPorMiliSec As Long
    BytesTransmitidosUser As Long
    BytesTransmitidosSvr As Long
    
#If ConUpTime Then
    LogOnTime As Date
    UpTime As Long
#End If

    ip As String
    IPLong As Long

    EmpoCont As Byte
    
    guildIndex As Integer   'puntero al array global de guilds
    EscucheClan As Integer
    
    KeyCrypt As Integer
    
    
    
    pj_web As Long
    web_pjs(10) As webpj
    web_pjs_count As Byte
    
    antiloop As Integer
    
    'Outgoing and incoming messages
    outgoingData As clsByteQueue
    incomingData As clsByteQueue
End Type

Public Type NPCStats
    Alineacion As Integer
    MaxHP As Long
    MinHP As Long
    MaxMan As Integer
    MinMan As Integer
    MaxHit As Integer
    MinHit As Integer
        
    
    Exp As Double
    ELV As Byte
    ELU As Long
    def As Integer
    defM As Integer
    UsuariosMatados As Integer
End Type

Public Type NpcCounters
    '[MODIFICADO] Sistema de Bots de MaTeO
    TimeDead As Integer
    ParalisisRemo As Integer
    '[/MODIFICADO] Sistema de Bots de MaTeO
    Paralisis As Integer
    TiempoExistencia As Long
End Type

Public Type NPCFlags

    

    AfectaParalisis As Byte
    GolpeExacto As Byte
    Domable As Integer
    Respawn As Byte
    NPCActive As Boolean '�Esta vivo?
    Follow As Boolean
    Faccion As Byte
    LanzaSpells As Byte
    
    '[KEVIN]
    'DeQuest As Byte
    
    'ExpDada As Long
    ExpCount As Long '[ALEJO]
    '[/KEVIN]
    
    OldMovement As TipoAI
    OldHostil As Byte
    
    AguaValida As Byte
    TierraInvalida As Byte
    
    UseAINow As Boolean
    Sound As Integer
    Attacking As Integer
    AttackedBy As String
    AttackedFirstBy As String
    Category1 As String
    Category2 As String
    Category3 As String
    Category4 As String
    Category5 As String
    BackUp As Byte
    RespawnOrigPos As Byte
    
    Envenenado As Byte
    Paralizado As Byte
    Inmovilizado As Byte
    invisible As Byte
    Maldicion As Byte
    Bendicion As Byte
    
    Snd1 As Integer
    Snd2 As Integer
    Snd3 As Integer
    
    AtacaAPJ As Integer
    AtacaANPC As Integer
    AIAlineacion As e_Alineacion
    AIPersonalidad As e_Personalidad
End Type

Public Type tCriaturasEntrenador
    NpcIndex As Integer
    NpcName As String
    tmpIndex As Integer
End Type

'New type for holding the pathfinding info
Public Type NpcPathFindingInfo
    Path() As tVertice      'This array holds the path
    Target As Position      'The location where the NPC has to go
    PathLenght As Integer   'Number of steps *
    CurPos As Integer       'Current location of the npc
    TargetUser As Integer   'UserIndex chased
    NoPath As Boolean       'If it is true there is no path to the target location
    
    'By setting PathLenght to 0 we force the recalculation
    'of the path, this is very useful. For example,
    'if a NPC or a User moves over the npc's path, blocking
    'its way, the function NpcLegalPos set PathLenght to 0
    'forcing the seek of a new path.
    
End Type
'New type for holding the pathfinding info
Private Type tCombo
    CantCombos As Byte
    Num() As Byte
End Type
'[MODIFICADO] Sistema de Bots de MaTeO
Private Type Bot_MaTeO
    ArcoAIM As Integer
    Apu�ala As Byte
    Index As Byte
    Equipo As Byte
    Dificultad As Integer
    BotType As Byte
    UpMan As Byte
    UpHP As Byte
    ToMan As Boolean
    ToHP As Boolean
    MinMan As Integer
    MaxMan As Integer
    RiesgoAT As Byte
    RiesgoHP As Integer
    RiesgoMan As Integer
    Ataques As Integer
    Navegando As Byte
    TargetsDisp As Byte
    Bloqueado As Boolean
    Config As Byte
    Zona As Byte
    AmigoUSER As Integer
    AmigoNPC As Integer
    NroSpellsBot As Byte
    SpellsBot() As Integer
    Combos() As tCombo
    NumCombos As Byte
    
    Combeando As Byte 'Esto es para ver que combo va a ser
    ComboActual As Byte 'Este seria en que etapa del combo va
    NumComboActual As Byte 'Este seria para ver en que numero de combo va
End Type
'[/MODIFICADO] Sistema de Bots de MaTeO
Public Type npc

    '[MODIFICADO] Sistema de Bots de MaTeO
    Muerto As Byte
    ultimo_ataque As Long
    ultimo_proceso As Long
    Bot As Bot_MaTeO
    OldPos As WorldPos 'Posicion
    Inventario As Inventario
    '[/MODIFICADO] Sistema de Bots de MaTeO
    

    name As String
    Char As Char 'Define como se vera
    Bando As eKip
    desc As String
    DescExtra As String

    ultimox As Long
    ultimoy As Long

    NPCtype As eNPCType
    numero As Integer

    InvReSpawn As Byte

    inerte As Boolean

    Comercia As Integer
    Target As Long
    TargetNPC As Long
    TipoItems As Integer

    Veneno As Byte

    Pos As WorldPos 'Posicion
    Orig As WorldPos

    Movement As TipoAI
    Attackable As Byte
    Hostile As Byte
    PoderAtaque As Long
    PoderEvasion As Long

    GiveGLD As Long

    Stats As NPCStats
    Flags As NPCFlags
    Contadores As NpcCounters
    
    Invent As Inventario
    CanAttack As Byte
    
    NroExpresiones As Byte
    Expresiones() As String 'le da vida ;)
    
    NroSpells As Byte
    Spells() As Integer  'le da vida ;)
    
    '<<<<Entrenadores>>>>>
    NroCriaturas As Integer
    Criaturas() As tCriaturasEntrenador
    MaestroUser As Integer
    MaestroNpc As Integer
    Mascotas As Integer
    
    'New!! Needed for pathfindig
    PFINFO As NpcPathFindingInfo
    
End Type

'
'
'Tipos del mapa **********************
'
'
'Tile
Public Type MapBlock
    Blocked As Byte
    Graphic(1 To 4) As Integer
    UserIndex As Integer
    NpcIndex As Integer
    ObjInfo As obj
    TileExit As WorldPos
    trigger As eTrigger
End Type

'Info del mapa
Type MapInfo
    NumUsers As Integer
    Music As String
    name As String
    StartPos As WorldPos
    MapVersion As Integer
    Pk As Boolean
    MagiaSinEfecto As Byte
    NoEncriptarMP As Byte
    InviSinEfecto As Byte
    ResuSinEfecto As Byte
    
    cantidad As Integer
    
    Terreno As String
    Zona As String
    Restringir As String
    BackUp As Byte
    maxusersx As Long
End Type

'V A R I A B L E S     P U B L I C A S ***********

Public SERVERONLINE As Boolean
Public ULTIMAVERSION As String
Public BackUp As Boolean 'TODO: Se usa esta variable ?

Public ListaRazas(1 To NUMRAZAS) As String
Public SkillsNames(1 To NUMSKILLS) As String
Public ListaClases(1 To NUMCLASES) As String
Public ListaAtributos(1 To NUMATRIBUTOS) As String


Public recordusuarios As Long

'
'Directorios
'

''
'Ruta base del server, en donde esta el "server.ini"
Public IniPath As String

''
'Ruta base para guardar los chars
Public CharPath As String

''
'Ruta base para los archivos de mapas
Public MapPath As String

''
'Ruta base para los DATs
Public DatPath As String

''
'Bordes del mapa
Public MinXBorder As Byte
Public MaxXBorder As Byte
Public MinYBorder As Byte
Public MaxYBorder As Byte

Public ResPos As WorldPos 'TODO: Se usa esta variable ?

''
'Posicion de comienzo
Public StartPos As WorldPos 'TODO: Se usa esta variable ?

''
'Numero de usuarios actual
Public NumUsers As Integer
Public LastUser As Integer
Public LastChar As Integer
Public NumChars As Integer
Public LastNPC As Integer
Public numnpcs As Integer
Public NumFX As Integer
Public NumMaps As Integer
Public NumObjDatas As Integer
Public NumeroHechizos As Integer
Public AllowMultiLogins As Byte
Public IdleLimit As Integer
Public maxusers As Integer
Public HideMe As Byte
Public LastBackup As String
Public Minutos As String
Public haciendoBK As Boolean
Public Oscuridad As Integer
Public NocheDia As Integer
Public PuedeCrearPersonajes As Integer
Public CamaraLenta As Integer
Public ServerSoloGMs As Integer

''
'Esta activada la verificacion MD5 ?
Public MD5ClientesActivado As Byte


Public EnPausa As Boolean
Public EnTesting As Boolean
Public EncriptarProtocolosCriticos As Boolean


'ARRAYS PUBLICOS*************************
Public UserList() As User 'USUARIOS
Public Npclist(1 To MAXNPCS) As npc 'NPCS
Public MapData() As MapBlock
Public MapInfo() As MapInfo
Public MapDataBK() As MapBlock
Public MapInfoBK() As MapInfo
Public Hechizos() As tHechizo
Public CharList(1 To MAXCHARS) As Integer
Public ObjData() As ObjData
Public FX() As FXdata

Public ForbidenNames() As String

Public MD5s() As String
Public BanIps As New Collection



'

Public Nix As WorldPos
Public Ullathorpe As WorldPos
Public Banderbill As WorldPos
Public Lindos As WorldPos
Public Arghal As WorldPos

Public Prision As WorldPos
Public Libertad As WorldPos

Public Ayuda As New cCola
'Public ConsultaPopular As New ConsultasPopulares
Public SonidosMapas As New SoundMapInfo

Public Declare Function GetTickCount Lib "kernel32" () As Long

Public Declare Function writeprivateprofilestring Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpString As String, ByVal lpfilename As String) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nsize As Long, ByVal lpfilename As String) As Long

Public Declare Sub ZeroMemory Lib "kernel32.dll" Alias "RtlZeroMemory" (ByRef Destination As Any, ByVal Length As Long)

Public Enum e_ObjetosCriticos
    Manzana = 1
    Manzana2 = 2
    ManzanaNewbie = 467
End Enum


Rem AAAAAAAARRRRRRRRREEEEEEEEEE

Public ArmaduraImperial1 As Integer 'Primer jerarquia
Public ArmaduraImperial2 As Integer 'Segunda jerarqu�a
Public ArmaduraImperial3 As Integer 'Enanos
Public TunicaMagoImperial As Integer 'Magos
Public TunicaMagoImperialEnanos As Integer 'Magos

Public VestimentaImperialHumano As Integer
Public VestimentaImperialEnano As Integer
Public TunicaConspicuaHumano As Integer
Public TunicaConspicuaEnano As Integer
Public ArmaduraNobilisimaHumano As Integer
Public ArmaduraNobilisimaEnano As Integer
Public ArmaduraGranSacerdote As Integer

Public VestimentaLegionHumano As Integer
Public VestimentaLegionEnano As Integer
Public TunicaLobregaHumano As Integer
Public TunicaLobregaEnano As Integer
Public TunicaEgregiaHumano As Integer
Public TunicaEgregiaEnano As Integer
Public SacerdoteDemoniaco As Integer

Public ArmaduraCaos1 As Integer
Public TunicaMagoCaos As Integer
Public TunicaMagoCaosEnanos As Integer
Public ArmaduraCaos2 As Integer
Public ArmaduraCaos3 As Integer

Public NACControl As Boolean


Public Enum eClass
    Mage = 1       'Mago
    Cleric      'Cl�rigo
    Warrior     'Guerrero
    Assasin     'Asesino
    Thief       'Ladr�n
    Bard        'Bardo
    Druid       'Druida
    Bandit      'Bandido
    Paladin     'Palad�n
    Hunter      'Cazador
    Fisher      'Pescador
    Blacksmith  'Herrero
    Lumberjack  'Le�ador
    Miner       'Minero
    Carpenter   'Carpintero
    Pirat       'Pirata
End Enum

Public Enum eRaza
    Humano = 1
    Elfo
    Drow
    Gnomo
    Enano
End Enum

Enum eGenero
    Hombre = 1
    Mujer
End Enum

Public Type cClase
    nombre As String
    abr As String
    
    Mana(1 To NUMRAZAS) As Integer
    vida(1 To NUMRAZAS) As Integer
    
    max_hit(1 To NUMRAZAS) As Integer
    min_hit(1 To NUMRAZAS) As Integer
    
    Object(1 To NUMRAZAS, 1 To 12) As Integer
    UserHechizos(1 To MAXUSERHECHIZOS) As Integer
    
    modo_agite As Boolean
    
    intervalos(0 To 5) As Integer
    
    ModBalances As ModClase
    
    puede_agite As Boolean
    
    magia As Single
    
End Type

Public Type cRaza
    nombre As String
    abr As String
    Atributos As ModRaza
    cabezas_min_h As Integer
    cabezas_min_m As Integer
    cabezas_max_h As Integer
    cabezas_max_m As Integer
    cuerpo_hombre As Integer
    cuerpo_mujer As Integer
End Type

Public Enum eAtributos
    Fuerza = 1
    Agilidad = 2
    Inteligencia = 3
    Carisma = 4
    Constitucion = 5
End Enum


Public bClases(1 To NUMCLASES) As cClase
Public bRazas(1 To NUMRAZAS) As cRaza
