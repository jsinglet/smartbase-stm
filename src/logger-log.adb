with Logger;
with Ada.Text_IO; use Ada.Text_IO;

separate(Logger)
procedure Log(Category : Logger_Type; Message : String) is
begin

   Put(Get_Tag(Category));

   Put_Line(" " & Message);
end Log;


