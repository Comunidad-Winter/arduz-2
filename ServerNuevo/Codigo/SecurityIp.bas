Attribute VB_Name = "SecurityIp"
Option Explicit

Public aDos As New clsAntiDos

Private IpTables()      As Long 'USAMOS 2 LONGS: UNO DE LA IP, SEGUIDO DE UNO DE LA INFO
Private EntrysCounter   As Long
Private MaxValue        As Long
Private Multiplicado    As Long 'Cuantas veces multiplike el EntrysCounter para que me entren?
Private Const IntervaloEntreConexiones As Long = 1000

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Declaraciones para maximas conexiones por usuario
'Agregado por EL OSO
Private MaxConTables()      As Long
Private MaxConTablesEntry   As Long     'puntero a la ultima insertada

Private Const LIMITECONEXIONESxIP As Long = 9

Private Enum e_SecurityIpTabla
    IP_INTERVALOS = 1
    IP_LIMITECONEXIONES = 2
End Enum

Public Sub InitIpTables(ByVal OptCountersValue As Long)
'*************
'Author: Lucio N. Tourrilhes (DuNga)
'Last Modify Date: EL OSO 21/01/06. Soporte para MaxConTables
'
'*************
    EntrysCounter = OptCountersValue
    Multiplicado = 1

    ReDim IpTables(EntrysCounter * 2) As Long
    MaxValue = 0

    ReDim MaxConTables(Declaraciones.maxusers * 2 - 1) As Long
    MaxConTablesEntry = 0

End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''FUNCIONES PARA INTERVALOS'''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Public Sub IpSecurityMantenimientoLista()
    EntrysCounter = EntrysCounter \ Multiplicado
    Multiplicado = 1
    ReDim IpTables(EntrysCounter * 2) As Long
    MaxValue = 0
End Sub

Public Function IpSecurityAceptarNuevaConexion(ByVal ip As Long) As Boolean
Dim IpTableIndex As Long
    IpTableIndex = FindTableIp(ip, IP_INTERVALOS)
    
    If IpTableIndex >= 0 Then
        If IpTables(IpTableIndex + 1) + IntervaloEntreConexiones <= (GetTickCount() And &H7FFFFFFF) Then  'No est� saturando de connects?
            IpTables(IpTableIndex + 1) = GetTickCount
            IpSecurityAceptarNuevaConexion = True
            Debug.Print "CONEXION ACEPTADA"
            Exit Function
        Else
            IpSecurityAceptarNuevaConexion = False
            'frmMain.adminpas.Text = frmMain.adminpas.Text + 1
            Debug.Print "CONEXION NO ACEPTADA"
            Exit Function
        End If
    Else
        IpTableIndex = Not IpTableIndex
        AddNewIpIntervalo ip, IpTableIndex
        IpTables(IpTableIndex + 1) = GetTickCount
        IpSecurityAceptarNuevaConexion = True
        Exit Function
    End If

End Function


Private Sub AddNewIpIntervalo(ByVal ip As Long, ByVal index As Long)
    If MaxValue + 1 > EntrysCounter Then
        EntrysCounter = EntrysCounter \ Multiplicado
        Multiplicado = Multiplicado + 1
        EntrysCounter = EntrysCounter * Multiplicado
        
        ReDim Preserve IpTables(EntrysCounter * 2) As Long
    End If
    Call CopyMemory(IpTables(index + 2), IpTables(index), (MaxValue - index \ 2) * 8)   '4 (peso del long) * 2(cantidad de elementos por c/u)
    IpTables(index) = ip
    MaxValue = MaxValue + 1
End Sub

Public Function IPSecuritySuperaLimiteConexiones(ByVal ip As Long) As Boolean
Dim IpTableIndex As Long

    IpTableIndex = FindTableIp(ip, IP_LIMITECONEXIONES)
    
    If IpTableIndex >= 0 Then
        
        If MaxConTables(IpTableIndex + 1) < LIMITECONEXIONESxIP Then
            LogIP ("Agregamos conexion a " & ip & " iptableindex=" & IpTableIndex & ". Conexiones: " & MaxConTables(IpTableIndex + 1))
            Debug.Print "suma conexion a " & ip & " total " & MaxConTables(IpTableIndex + 1) + 1
            MaxConTables(IpTableIndex + 1) = MaxConTables(IpTableIndex + 1) + 1
            IPSecuritySuperaLimiteConexiones = False
        Else
            LogIP ("rechazamos conexion de " & ip & " iptableindex=" & IpTableIndex & ". Conexiones: " & MaxConTables(IpTableIndex + 1))
            Debug.Print "rechaza conexion a " & ip
            IPSecuritySuperaLimiteConexiones = True
        End If
    Else
        IPSecuritySuperaLimiteConexiones = False
        If MaxConTablesEntry < Declaraciones.maxusers Then  'si hay espacio..
            IpTableIndex = Not IpTableIndex
            AddNewIpLimiteConexiones ip, IpTableIndex    'iptableindex es donde lo agrego
            MaxConTables(IpTableIndex + 1) = 1
        Else
            Call LogCriticEvent("SecurityIP.IPSecuritySuperaLimiteConexiones: Se supero la disponibilidad de slots.")
        End If
    End If

End Function

Private Sub AddNewIpLimiteConexiones(ByVal ip As Long, ByVal index As Long)
'*************
'Author: (EL OSO)
'Last Modify Date: Unknow
'
'*************
    'Debug.Print "agrega conexion a " & ip
    'Debug.Print "(Declaraciones.MaxUsers - index) = " & (Declaraciones.MaxUsers - Index)
    '4) Corro todo el array para arriba
    'Call CopyMemory(MaxConTables(Index + 2), MaxConTables(Index), (MaxConTablesEntry - Index \ 2) * 8)    '4 (peso del long) * 2(cantidad de elementos por c/u)
    'MaxConTables(Index) = ip

    '3) Subo el indicador de el maximo valor almacenado y listo :)
    'MaxConTablesEntry = MaxConTablesEntry + 1


'*************
'Author: (EL OSO)
'Last Modify Date: 16/2/2006
'Modified by Juan Mart�n Sotuyo Dodero (Maraxus)
'*************
    Debug.Print "agrega conexion a " & ip
    Debug.Print "(Declaraciones.MaxUsers - index) = " & (Declaraciones.maxusers - index)
    Debug.Print "Agrega conexion a nueva IP " & ip
    '4) Corro todo el array para arriba
    Dim temp() As Long
    ReDim temp((MaxConTablesEntry - index \ 2) * 2) As Long  'VB no deja inicializar con rangos variables...
    Call CopyMemory(temp(0), MaxConTables(index), (MaxConTablesEntry - index \ 2) * 8)    '4 (peso del long) * 2(cantidad de elementos por c/u)
    Call CopyMemory(MaxConTables(index + 2), temp(0), (MaxConTablesEntry - index \ 2) * 8)    '4 (peso del long) * 2(cantidad de elementos por c/u)
    MaxConTables(index) = ip

    '3) Subo el indicador de el maximo valor almacenado y listo :)
    MaxConTablesEntry = MaxConTablesEntry + 1

End Sub

Public Sub IpRestarConexion(ByVal ip As Long)
Dim key As Long
    Debug.Print "resta conexion a " & ip
    
    key = FindTableIp(ip, IP_LIMITECONEXIONES)
    
    If key >= 0 Then
        If MaxConTables(key + 1) > 0 Then
            MaxConTables(key + 1) = MaxConTables(key + 1) - 1
        End If
        Call LogIP("restamos conexion a " & ip & " key=" & key & ". Conexiones: " & MaxConTables(key + 1))
        If MaxConTables(key + 1) <= 0 Then
            'la limpiamos
            Call CopyMemory(MaxConTables(key), MaxConTables(key + 2), (MaxConTablesEntry - (key \ 2) + 1) * 8)
            MaxConTablesEntry = MaxConTablesEntry - 1
        End If
    Else 'Key <= 0
        Call LogIP("restamos conexion a " & ip & " key=" & key & ". NEGATIVO!!")
        'LogCriticEvent "SecurityIp.IpRestarconexion obtuvo un valor negativo en key"
    End If
End Sub

Private Function FindTableIp(ByVal ip As Long, ByVal Tabla As e_SecurityIpTabla) As Long
'*************
'Author: Lucio N. Tourrilhes (DuNga)
'Last Modify Date: Unknow
'Modified by Juan Mart�n Sotuyo Dodero (Maraxus) to use Binary Insertion
'*************
Dim First As Long
Dim Last As Long
Dim Middle As Long
    
    Select Case Tabla
        Case e_SecurityIpTabla.IP_INTERVALOS
            First = 0
            Last = MaxValue
            Do While First <= Last
                Middle = (First + Last) \ 2
                
                If (IpTables(Middle * 2) < ip) Then
                    First = Middle + 1
                ElseIf (IpTables(Middle * 2) > ip) Then
                    Last = Middle - 1
                Else
                    FindTableIp = Middle * 2
                    Exit Function
                End If
            Loop
            FindTableIp = Not (Middle * 2)
        
        Case e_SecurityIpTabla.IP_LIMITECONEXIONES
            
            First = 0
            Last = MaxConTablesEntry

            Do While First <= Last
                Middle = (First + Last) \ 2

                If MaxConTables(Middle * 2) < ip Then
                    First = Middle + 1
                ElseIf MaxConTables(Middle * 2) > ip Then
                    Last = Middle - 1
                Else
                    FindTableIp = Middle * 2
                    Exit Function
                End If
            Loop
            FindTableIp = Not (Middle * 2)
    End Select
End Function

Public Function DumpTables()
Dim i As Integer
    For i = 0 To MaxConTablesEntry * 2 - 1 Step 2
        Call LogCriticEvent(GetAscIP(MaxConTables(i)) & " > " & MaxConTables(i + 1))
    Next i
End Function