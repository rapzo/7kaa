my @obj_files;

## compiler flags ##
@defines = qw( AMPLUS );
if (defined($debug) && $debug) {
  push (@defines, "DEBUG");
}
if (defined($no_asm) && $no_asm) {
  push (@defines, "NO_ASM");
}
## end compiler flags ##

## include paths ##
@includes = qw( ../../include );

if (defined($wine_prefix)) {
  push (@includes, "$wine_prefix/include/wine/windows",
                   "$wine_prefix/include/wine/msvcrt");
}

if (defined($dxsdk_path)) {
  push (@includes, "$dxsdk_path/include");
}
## include paths ##

## build asm ##
unless ($no_asm) {
  push (@obj_files, include_targets('asm/targets.pl'));
}
## end build asm ##

### Compiler targets ###
# USE_DPLAY
# OREMOTE
# OREMOTE2
# OREMOTEM
# OREMOTEQ
# OERRCTRL
# ODPLAY
# OCRC_STO
# OGAMEMP

@targets = qw(
AM.cpp
OAI_ACT.cpp
OAI_ACT2.cpp
OAI_ATTK.cpp
OAI_BUIL.cpp
OAI_CAP2.cpp
OAI_CAPT.cpp
OAI_DEFE.cpp
OAI_DIPL.cpp
OAI_ECO.cpp
OAI_GRAN.cpp
OAI_INFO.cpp
OAI_MAIN.cpp
OAI_MAR2.cpp
OAI_MAR3.cpp
OAI_MARI.cpp
OAI_MILI.cpp
OAI_MONS.cpp
OAI_QUER.cpp
OAI_SEEK.cpp
OAI_SPY.cpp
OAI_TALK.cpp
OAI_TOWN.cpp
OAI_TRAD.cpp
OAI_UNIT.cpp
OANLINE.cpp
OAUDIO.cpp
OBATTLE.cpp
OBLOB.cpp
OBOX.cpp
OBULLET.cpp
OBULLETA.cpp
OBUTT3D.cpp
OBUTTCUS.cpp
OBUTTON.cpp
OB_FLAME.cpp
OB_HOMIN.cpp
OB_PROJ.cpp
OCOLTBL.cpp
OCONFIG.cpp
ODATE.cpp
ODB.cpp
ODIR.cpp
ODYNARR.cpp
ODYNARRB.cpp
OEFFECT.cpp
OERROR.cpp
OEXPMASK.cpp
OFILE.cpp
OFILETXT.cpp
OFIRM.cpp
OFIRM2.cpp
OFIRMA.cpp
OFIRMAI.cpp
OFIRMDIE.cpp
OFIRMDRW.cpp
OFIRMIF.cpp
OFIRMIF2.cpp
OFIRMIF3.cpp
OFIRMRES.cpp
OFLAME.cpp
OFONT.cpp
OF_BASE.cpp
OF_BASE2.cpp
OF_CAMP.cpp
OF_CAMP2.cpp
OF_FACT.cpp
OF_FACT2.cpp
OF_HARB.cpp
OF_HARB2.cpp
OF_INN.cpp
OF_INN2.cpp
OF_MARK.cpp
OF_MARK2.cpp
OF_MINE.cpp
OF_MINE2.cpp
OF_MONS.cpp
OF_RESE.cpp
OF_RESE2.cpp
OF_WAR.cpp
OF_WAR2.cpp
OGAMCRED.cpp
OGAME.cpp
OGAMENCY.cpp
OGAMEND.cpp
OGAMESET.cpp
OGAMHALL.cpp
OGAMMAIN.cpp
OGAMMENU.cpp
OGAMSCE2.cpp
OGAMSCEN.cpp
OGAMSING.cpp
OGENHILL.cpp
OGENMAP.cpp
OGETA.cpp
OGFILE.cpp
OGFILE2.cpp
OGFILE3.cpp
OGFILEA.cpp
OGF_V1.cpp
OGODRES.cpp
OGRPSEL.cpp
OHELP.cpp
OHILLRES.cpp
OIMGRES.cpp
OINFO.cpp
OINGMENU.cpp
OLIGHTN.cpp
OLIGHTN2.cpp
OLOG.cpp
OLONGLOG.cpp
OLZW.cpp
OMATRIX.cpp
OMISC.cpp
OMONSRES.cpp
OMOUSE.cpp
OMOUSECR.cpp
OMOUSEFR.cpp
OMOUSEGE.cpp
OMOUSESP.cpp
OMP_CRC.cpp
OMUSIC.cpp
ONATIONA.cpp
ONATIONB.cpp
ONEWS.cpp
ONEWS2.cpp
ONEWSENG.cpp
ONEWSFRE.cpp
ONEWSGER.cpp
ONEWSSPA.cpp
OOPTMENU.cpp
OPLANT.cpp
OPLASMA.cpp
OPOWER.cpp
ORACERES.cpp
ORAIN1.cpp
ORAIN2.cpp
ORAIN3.cpp
ORAWRES.cpp
OREBEL.cpp
OREGION.cpp
OREGIONS.cpp
ORES.cpp
ORESX.cpp
OROCK.cpp
OROCKRES.cpp
OR_AI.cpp
OR_ECO.cpp
OR_MIL.cpp
OR_NAT.cpp
OR_NEWS.cpp
OR_RANK.cpp
OR_SPY.cpp
OR_TECH.cpp
OR_TOWN.cpp
OR_TRADE.cpp
OSCROLL.cpp
OSE.cpp
OSERES.cpp
OSFRMRES.cpp
OSITE.cpp
OSITEDRW.cpp
OSKILL.cpp
OSLIDCUS.cpp
OSNOW1.cpp
OSNOW2.cpp
OSNOWG.cpp
OSNOWRES.cpp
OSPATH.cpp
OSPATHBT.cpp
OSPATHS2.cpp
OSPREDBG.cpp
OSPREOFF.cpp
OSPRESMO.cpp
OSPREUSE.cpp
OSPRITE.cpp
OSPRITE2.cpp
OSPRITEA.cpp
OSPRTRES.cpp
OSPY.cpp
OSPY2.cpp
OSPYA.cpp
OSTR.cpp
OSYS.cpp
OSYS2.cpp
OSYS3.cpp
OTALKENG.cpp
OTALKFRE.cpp
OTALKGER.cpp
OTALKMSG.cpp
OTALKRES.cpp
OTALKSPA.cpp
OTECHRES.cpp
OTERRAIN.cpp
OTORNADO.cpp
OTOWN.cpp
OTOWNA.cpp
OTOWNAI.cpp
OTOWNBLD.cpp
OTOWNDRW.cpp
OTOWNIF.cpp
OTOWNIND.cpp
OTOWNRES.cpp
OTRANSL.cpp
OTUTOR.cpp
OTUTOR2.cpp
OUNIT.cpp
OUNIT2.cpp
OUNITA.cpp
OUNITAAC.cpp
OUNITAAT.cpp
OUNITAC.cpp
OUNITAI.cpp
OUNITAM.cpp
OUNITAMT.cpp
OUNITAT.cpp
OUNITAT2.cpp
OUNITAT3.cpp
OUNITATB.cpp
OUNITD.cpp
OUNITDRW.cpp
OUNITHB.cpp
OUNITI.cpp
OUNITIF.cpp
OUNITIND.cpp
OUNITM.cpp
OUNITRES.cpp
OUNITS.cpp
OU_CARA.cpp
OU_CARA2.cpp
OU_CARAS.cpp
OU_CARAT.cpp
OU_CART.cpp
OU_GOD.cpp
OU_GOD2.cpp
OU_MARI.cpp
OU_MARI2.cpp
OU_MARIF.cpp
OU_MARIS.cpp
OU_MARIT.cpp
OU_MONS.cpp
OU_VEHI.cpp
OVBROWIF.cpp
OVBROWSE.cpp
OVGA.cpp
OVGA2.cpp
OVGABUF.cpp
OVGABUF2.cpp
OVGALOCK.cpp
OVIDEO.cpp
OVOLUME.cpp
OVQUEUE.cpp
OWALLRES.cpp
OWARPT.cpp
OWEATHER.cpp
OWORLD.cpp
OWORLD_M.cpp
OWORLD_Z.cpp
OW_FIRE.cpp
OW_PLANT.cpp
OW_ROCK.cpp
OW_SOUND.cpp
OW_WALL.cpp
ico.rc
);

if ($no_asm) {
push (@targets, qw(
CRC.cpp
IB.cpp
IB2.cpp
IB_32.cpp
IB_A.cpp
IB_AR.cpp
IB_AT.cpp
IB_ATD.cpp
IB_ATDM.cpp
IB_ATR.cpp
IB_ATRD.cpp
IB_ATRDM.cpp
IB_DW.cpp
IB_R.cpp
IB_T.cpp
IB_TD.cpp
IB_TDM.cpp
IB_TR.cpp
IB_TRD.cpp
IB_TRDM.cpp
IC.cpp
IC_R.cpp
IJ_T.cpp
IR.cpp
IR_A.cpp
IR_AM.cpp
IR_BAR.cpp
IR_M.cpp
I_BAR.cpp
I_BLACK.cpp
I_EMASK.cpp
I_EREMAP.cpp
I_FREMAP.cpp
I_LINE.cpp
I_PIXEL.cpp
I_READ.cpp
I_SNOW.cpp
));
}

push (@obj_files, build_targets(\@targets, \@includes, \@defines));

@obj_files;