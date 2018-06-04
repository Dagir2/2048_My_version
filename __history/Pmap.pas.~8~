unit Pmap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,math;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  buf:TBitmap;
  Fat:string;
  map:Array [0..3,0..3] of integer;
  Img:Array [0..11] of TJPEGImage;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var i,j:integer;
begin

  buf:=TBitmap.Create;
  buf.Height:=512;
  buf.Width:=512;

 for i := 0 to 11 do
 begin
 Img[i]:=TJPEGImage.Create;
 Img[i].LoadFromFile('2048/'+IntToStr(i)+'.jpg');
 end;

 for i := 0 to 3 do
 for j := 0 to 3 do
 map[i,j]:=0;
 map[RandomRange(0,4),RandomRange(0,4)]:=RandomRange(1,3)*2;

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var i,j,nn,score,k,x,NK,Fx,Fy,LOL:integer;
  begin
    lol:=0;
   if Key=VK_DOWN then
   begin
    for k:=1 to 3 do
     begin
    for i:=3 downto 0 do
     for j:=2 downto 0 do
      begin
       //сдвиг если пусто
       if (map[i,j]>0) and (map[i,j+1]=0) then
       begin
        map[i,j+1]:=Map[i,j];
        map[i,j]:=0;
       end;
        //сложить, если снизу такой же блок
         if (map[i,j]>0) and (map[i,j+1]=map[i,j]) then
         begin
         Score:=Score+map[i,j];
         map[i,j+1]:=Map[i,j]*2;
         map[i,j]:=0;
         end;
       end;
      end;
    //ставим 2
  while (nn=0) do
   begin
    i:=random(4);
    j:=random(4);
    if map[i,j]=0 then
     begin
      map[i,j]:=2;
      nn:=1; //stavili 2
     end;
   end;
   while True do
   begin
   inc(lol);
      Fx:=randomRange(0,4);
      Fy:=randomRange(0,4);
      if map[Fx,Fy]=0 then
      begin
      map[Fx,Fy]:=randomRange(1,3)*2;
      exit;
      end;

       if lol>1000 then
         begin
          ShowMessage('Вы проиграли');
         exit;
        end;
   end;
  end;


  if key=VK_UP then
  begin
   for k:=3 downto 1 do
    begin
   for i:=3 downto 0 do
    begin
     j:=1;
     while (j<4) do
      begin
       //сдвиг, если пусто
       if (map[i,j]>0) and (map[i,j-1]=0) then
        begin
         map[i,j-1]:=Map[i,j];
         map[i,j]:=0;
        end;
        //сложение, если снизу такой же блок
        if (map[i,j]>0) and (map[i,j-1]=map[i,j]) then
         begin
          Score:=Score+map[i,j];
          map[i,j-1]:=Map[i,j]*2;
          map[i,j]:=0;
         end;
       j:=j+1;
     end;
   end;
   end;
 //ставим 2
   while (nn=0) do
    begin
     i:=random(4);
     j:=random(4);
     if map[i,j]=0 then
      begin
       map[i,j]:=2;
       nn:=1;
       end;
    end;
    while True do
   begin
    inc(lol);
      Fx:=randomRange(0,4);
      Fy:=randomRange(0,4);
      if map[Fx,Fy]=0 then
      begin

      map[Fx,Fy]:=randomRange(1,3)*2;
      exit;
      end;
       if lol>1000 then
      begin
      ShowMessage('Вы проиграли');
      exit;
      end;
   end;
  end;

  if Key=VK_Left then
   begin
    for k:=1 to 3 do
     begin
    for j:=0 to 3 do
     begin
      i:=1;
      while (i<4) do
       begin
        //сдвиг если пусто
        if (map[i,j]>0) and (map[i-1,j]=0) then
         begin
          map[i-1,j]:=Map[i,j];
          map[i,j]:=0;
         end;
        //сложить, если равны
        if (map[i,j]>0) and (map[i-1,j]=map[i,j]) then
         begin
          Score:=Score+map[i,j];
          map[i-1,j]:=Map[i,j]*2;
          map[i,j]:=0;
         end;
        i:=i+1;
       end;
       end;
     end;
     //ставим 2
    while (nn=0) do
     begin
      i:=random(4);
      j:=random(4);
      if map[i,j]=0 then
       begin
        map[i,j]:=2;
        nn:=1;
       end;
     end;
     while True do
   begin
   inc(lol);
      Fx:=randomRange(0,4);
      Fy:=randomRange(0,4);
      if map[Fx,Fy]=0 then
      begin
      map[Fx,Fy]:=randomRange(1,3)*2;
      exit;
      end;
       if lol>1000 then
      begin
      ShowMessage('Вы проиграли');
      exit;
      end;
   end;
   end;


if key=VK_Right then
   begin
   for k:=1 to 2 do
    begin
   for j:=0 to 3 do
    for i:=0 to 2 do
     begin
      //сдвиг, если пусто
      if (map[i,j]>0) and (map[i+1,j]=0) then
       begin
        map[i+1,j]:=Map[i,j];
        map[i,j]:=0;
       end;
      //сложить, если равно
      if (map[i,j]>0) and (map[i+1,j]=map[i,j]) then
      begin
       Score:=Score+map[i,j];
       map[i+1,j]:=Map[i,j]*2;
       map[i,j]:=0;
      end;
      end;
     end;
  //ставим 2
     while (nn=0) do
      begin
       i:=random(4);
       j:=random(4);
       if map[i,j]=0 then
        begin
         map[i,j]:=2;
         nn:=1;
        end;
      end;
  end;
  while True do
   begin
    inc(lol);
      Fx:=randomRange(0,4);
      Fy:=randomRange(0,4);
      if map[Fx,Fy]=0 then
      begin
      map[Fx,Fy]:=randomRange(1,3)*2;
      exit;
      end;
      if lol>1000 then
      begin
      ShowMessage('Вы проиграли');
      exit;
      end;
   end;
  end;


procedure TForm1.Timer1Timer(Sender: TObject);
var i,j:integer;
begin
 for i := 0 to 3 do
 for j := 0 to 3 do
  begin
   case map[i,j] of
   0:Buf.Canvas.Draw(i*128,j*128,IMG[0]);
   2:Buf.Canvas.Draw(i*128,j*128,IMG[1]);
   4:Buf.Canvas.Draw(i*128,j*128,IMG[2]);
   8:Buf.Canvas.Draw(i*128,j*128,IMG[3]);
   16:Buf.Canvas.Draw(i*128,j*128,IMG[4]);
   32:Buf.Canvas.Draw(i*128,j*128,IMG[5]);
   64:Buf.Canvas.Draw(i*128,j*128,IMG[6]);
   128:Buf.Canvas.Draw(i*128,j*128,IMG[7]);
   256:Buf.Canvas.Draw(i*128,j*128,IMG[8]);
   512:Buf.Canvas.Draw(i*128,j*128,IMG[9]);
   1024:Buf.Canvas.Draw(i*128,j*128,IMG[10]);
   2048:Buf.Canvas.Draw(i*128,j*128,IMG[11]);
   end;


  end;

  form1.Canvas.Draw(0,0,buf);

end;

end.
