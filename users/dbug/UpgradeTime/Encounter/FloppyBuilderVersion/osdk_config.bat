@ECHO OFF

::
:: Set the build paremeters
::
SET OSDKBRIEF=NOPAUSE
SET OSDKADDR=
SET OSDKFILE=
SET OSDKNAME=EncounterHD
SET OSDKDISK=%OSDKNAME%.dsk

SET OSDKFILE_INTRO=intro_main common intro_utils loader_api irq audio keyboard time display
SET OSDKFILE_GAME=game_main common game_utils loader_api irq audio keyboard time display