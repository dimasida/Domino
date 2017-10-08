unit FModul;                //Основной модуль

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type
  TMainForm = class(TForm)    //Главная форма
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

type
  Player = class              //Игрок
  private
    { private declarations }
  public
    { public declarations }
  end;


type
  Board = class               //Игровое поле
  private
    { private declarations }
  public
    { public declarations }
  end;


type
  Game = class                //Игра
    curPlayer : player;       //Текущий игрок
    TBoard : Board;           //Игровое поле
  private
    { private declarations }
  public
    { public declarations }
  end;


type
  Chip = class                //Фишка
  private
    leftValue : byte;         //Одна часть фишки с очками
    rigthValue : byte;        //Вторая часть фишки с очками
  public
    leftChip : Chip;          //Отвечает за соседнюю левую фишку
    rightChip : Chip;         //Отвечает за соседнюю правую фишку

    constructor Create(lValue : byte; rValue : byte);
    //Конструктор, заполняются очки фишки

    function IsDouble : boolean;
    //Является ли фишка дублем
  end;


type
  TListChips = ^ListChips;    //Указатель на список фишек

  ListChips = record          //Список фишек
    TChip : Chip;             //Сама фишка
    prev : TListChips;        //Предыдущая фишка
    next : TListChips;        //Следующая фишка
  end;

implementation

{$R *.lfm}

constructor Chip.Create(lValue : byte; rValue : byte);
begin
  self.leftValue := lValue;
  self.rigthValue := rValue;
end;

function Chip.IsDouble : boolean;
begin
  if (self.leftValue = self.rigthValue) then
     IsDouble := true else
     IsDouble := false;
end;

procedure CreateListChips;
begin

end;

end.

