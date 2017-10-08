unit FModul;                //Основной модуль

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type

  { TMainForm }

  TMainForm = class(TForm)    //Главная форма
    procedure FormCreate(Sender: TObject);
  private
    myList : TList;
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
    leftChip : Chip;          //Отвечает за соседнюю левую фишку
    rightChip : Chip;         //Отвечает за соседнюю правую фишку
  public
    property LValue : byte
             read leftValue;
    property RValue : byte
             read rightValue;

    constructor Create(const leftValue : byte;
                       const rigthValue : byte);
    //Конструктор, заполняются очки фишки

    function IsDouble : boolean;
    //Является ли фишка дублем
  end;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin

end;

constructor Chip.Create(const leftValue : byte;
                        const rigthValue : byte);
begin
  self.leftValue := leftValue;
  self.rigthValue := rigthValue;
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

