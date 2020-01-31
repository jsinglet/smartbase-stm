with Logger;
with SerialUtil; use SerialUtil;

separate(Logger)
procedure Log(Category : Logger_Type; Message : String) is
begin

   Put(Get_Tag(Category));

   Put_Line(" " & Message);

end Log;
