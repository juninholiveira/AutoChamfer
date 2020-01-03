macroScript AutoChamfer
category: "Juninho"
tooltip: "Auto Chamfer"
Icon:#("AC",1)
(
	on execute do (
		fileIn ((getDir #userScripts)+"\\Juninho\\AutoChamfer.ms")
	)
)
messageBox "Auto Chamfer has now been installed!\n\nAdding the script to a toolbar:\nCustomize > Customize User Interface > Toolbars\nUnder category \"Juninho\", drag the \"Auto Chamfer\" onto any toobar." beep:False title:"Auto Chamfer Installation"
colorman.reInitIcons()