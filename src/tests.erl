-module(tests).
-compile(export_all).

ten(SourcePid,ServPid) ->
ServPid ! {self(),01,{subscribe, self()}},
receive
	Msg -> SourcePid ! dostalemPotwierdzenie
end,
	receive
	Tww -> SourcePid ! dostalemPowiadomienie
	end.