--Try and Catch pra evitar abrir o mesmo menu 2 vezes
try(closeRolloutFloater MainFloater)
catch()

--Menu Rollout definido aqui
Rollout Menu01 "Auto Chamfer"
(
	--Spinner Input pra receber o valor de amount
	spinner chamferamount "Chamfer Amount (cm)" range:[0,1000,0.3]
	
	--Botão que executa o AutoChamfer
	button autochamfer "Auto Chamfer" pos:[0,30] width:230 height:50
	
	--Script executado
	on autochamfer pressed do
	(
		--Cria um Array com a seleção atual
		objetos = selection as array

		--Loop FOR no array criado anteriormente
		for obj in objetos do
		(
			--Seleciona o objeto atual do loop
			select obj
			
			--Adiciona o modificador Chamfer
			addModifier obj (Chamfer())
				
			--Configura os parametros do modificador	
			obj.chamfer.chamfertype = 0
			obj.chamfer.amount = chamferamount.value
			obj.chamfer.segments = 3
			obj.chamfer.tension = 0.5
			obj.chamfer.smooth = true
			obj.chamfer.smoothtype = 1
			obj.chamfer.smoothtoadjacent = true
		)	
	)
)

--Cria a interface e adiciona o Rollout nela
MainFloater = newRolloutFloater "Auto Chamfer" 250 110
addRollout Menu01 MainFloater