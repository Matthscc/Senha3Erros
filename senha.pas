Program Senha3Erros ;
var i,c, senha: integer;
 Begin
  clrscr;
  writeln('Bem vindo ao sistema de acesso aos servidores internos do laborarório de eletrônica da UFV.');
  writeln(' ');
  writeln('Antes de tudo, lembre-se que poderá errar sua senha apenas 2 vezes, pois no terceiro erro o acesso será bloqueado.');
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
				  writeln('Você só tem mais ', c,' chance(s) de acertar, caso contrário seu acesso será bloqueado.');
			   end;
			  if i>=3 then
			   begin
				  writeln('Você errou a senha pela terceira vez. Acesso bloqueado.');
			   end;
       end;
       c:=c-1;
    End; 
  readkey; 
 End.