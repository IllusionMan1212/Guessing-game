program Guessing;
var myRnd, entry, i, choice : integer;

procedure Easy;
begin
  randomize();
  myRnd := random(100);
  writeln('Take a guess');
  i := 1;
  for i := 1 to 10 do
    begin
      readln(entry);
      if (entry = myRnd) then
        begin
          writeln('BINGO!!!!');
          readln;
          halt;
        end
      else
      if (entry < myRnd) and (i <> 10) then
        begin
          write('aim higher');
        end
      else
      if (entry > myRnd) and (i <> 10) then
        begin
          write('aim lower');
        end;
    end;
    writeln('GAME OVER!');
    readln();
end;

procedure Medium;
begin
  randomize();
  myRnd := random(100);
  writeln('Take a guess');
  i := 1;
  for i := 1 to 5 do
    begin
      readln(entry);
      if (entry = myRnd) then
        begin
          writeln('BINGO!!!!');
          readln;
          halt;
        end
      else
      if (entry < myRnd) and (i <> 5) then
        begin
          write('aim higher');
        end
      else
      if (entry > myRnd) and (i <> 5) then
        begin
          write('aim lower');
        end;
    end;
    writeln('GAME OVER!');
    readln();
end;

procedure Hard;
begin
  randomize();
  myRnd := random(100);
  writeln('Take a guess');
  i := 1;
  for i := 1 to 3 do
    begin
      readln(entry);
      if (entry = myRnd) then
        begin
          writeln('BINGO!!!!');
          readln;
          halt;
        end
      else
      if (entry < myRnd) and (i <> 3) then
        begin
          write('aim higher');
        end
      else
      if (entry > myRnd) and (i <> 3) then
        begin
          write('aim lower');
        end;
    end;
    write('GAME OVER!');
    readln();
end;

begin
  writeln('Hi and welcome to my first guessing game :)');
  writeln('the program will pick a random number between 1 and 100 and you have to guess it');
  writeln('Good luck!');
  writeln();
  writeln();
  writeln('Select Difficulty');
  writeln('[1] Press 1 for Easy mode (10 tries)');
  writeln('[2] Press 2 for Medium mode (5 tries)');
  writeln('[3] Press 3 for Hard mode (3 tries)');
  readln(choice);
  case (choice) of
  1 : Easy;
  2 : Medium;
  3 : Hard;
  end;
end.