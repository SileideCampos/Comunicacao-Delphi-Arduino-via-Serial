object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtDadosEnviados: TEdit
    Left = 104
    Top = 83
    Width = 178
    Height = 21
    TabOrder = 0
  end
  object edtDadosRecebidos: TEdit
    Left = 104
    Top = 123
    Width = 178
    Height = 21
    TabOrder = 1
  end
  object btnEnviarDados: TButton
    Left = 288
    Top = 81
    Width = 75
    Height = 25
    Caption = 'EnviarDados'
    TabOrder = 2
    OnClick = btnEnviarDadosClick
  end
  object ComPort1: TComPort
    Connected = True
    BaudRate = br9600
    Port = 'COM3'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = False
    Left = 120
    Top = 16
  end
  object ComDataPacket1: TComDataPacket
    ComPort = ComPort1
    OnPacket = ComDataPacket1Packet
    Left = 40
    Top = 16
  end
end
