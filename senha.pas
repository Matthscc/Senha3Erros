Program Senha3Erros ;
var i,c, senha: integer;
 Begin
  clrscr;
  writeln('Bem vindo ao sistema de acesso aos servidores internos do laborar�rio de eletr�nica da UFV.');
  writeln(' ');
  writeln('Antes de tudo, lembre-se que poder� errar sua senha apenas 2 vezes, pois no terceiro erro o acesso ser� bloqueado.');
  c:=2;
   for i:=1 to 3 do
    Begin 
     writeln(' ');
     writeln(' ');
     write('Insira sua senha: ');
     readln(senha);
      if senha=123 then
       Begin
		    writeln('Senha correta! Acesso permitido.');
			  writeln(' ');
			  write(' ~ Estudar, saber, agir e vencer. ~ ');
			  i:=3
		   end;
      if senha <> 123 then
		   begin
			  if i<3 then
			   begin
				  writeln('Senha incorreta! Tente novamente.');
				  writeln('Voc� s� tem mais ', c,' chance(s) de acertar, caso contr�rio seu acesso ser� bloqueado.');
			   end;
			  if i>=3 then
			   begin
				  writeln('Voc� errou a senha pela terceira vez. Acesso bloqueado.');
			   end;
       end;
       c:=c-1;
    End; 
  readkey; 
 End.