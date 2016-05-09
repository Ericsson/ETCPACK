rem //////////////////////////////////////////////////////////////////
rem ////////                  testvectors                     ////////
rem //////////////////////////////////////////////////////////////////
rem //////// make sure to cd the testing directory in etcpack ////////
rem //////////////////////////////////////////////////////////////////
mkdir testvectors
mkdir testvectors\pkm
mkdir testvectors\pkm_decompressed
mkdir testvectors\ktx
mkdir testvectors\ktx_decompressed

rem //////// ETC1 RGB file both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc1 -f RGB ..\originals\elina.ppm testvectors\pkm\elina_etc1.pkm
..\vc9\Release\etcpack testvectors\pkm\elina_etc1.pkm testvectors\pkm_decompressed\elina_etc1.ppm 
..\vc9\Release\etcpack -s slow -e perceptual -c etc1 -f RGB ..\originals\elina.ppm testvectors\ktx\elina_etc1.ktx
..\vc9\Release\etcpack testvectors\ktx\elina_etc1.ktx testvectors\ktx_decompressed\elina_etc1.ppm

rem //////// RGB file both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RGB ..\originals\elina.ppm testvectors\pkm\elina.pkm
..\vc9\Release\etcpack testvectors\pkm\elina.pkm testvectors\pkm_decompressed\elina.ppm 
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RGB ..\originals\elina.ppm testvectors\ktx\elina.ktx
..\vc9\Release\etcpack testvectors\ktx\elina.ktx testvectors\ktx_decompressed\elina.ppm

rem //////// sRGB file both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f sRGB ..\originals\elina.ppm testvectors\pkm\elina_sRGB.pkm
..\vc9\Release\etcpack testvectors\pkm\elina_sRGB.pkm testvectors\pkm_decompressed\elina_sRGB.ppm 
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f sRGB ..\originals\elina.ppm testvectors\ktx\elina_sRGB.ktx
..\vc9\Release\etcpack testvectors\ktx\elina_sRGB.ktx testvectors\ktx_decompressed\elina_sRGB.ppm

rem //////// RGBA file both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RGBA ..\originals\elina_alpha.tga testvectors\pkm\elina_alpha.pkm
..\vc9\Release\etcpack testvectors\pkm\elina_alpha.pkm testvectors\pkm_decompressed\elina_alpha.tga
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RGBA ..\originals\elina_alpha.tga testvectors\ktx\elina_alpha.ktx
..\vc9\Release\etcpack testvectors\ktx\elina_alpha.ktx testvectors\ktx_decompressed\elina_alpha.tga

rem //////// sRGBA file both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f sRGBA8 ..\originals\elina_alpha.tga testvectors\pkm\elina_alpha_sRGBA.pkm
..\vc9\Release\etcpack testvectors\pkm\elina_alpha_sRGBA.pkm testvectors\pkm_decompressed\elina_alpha_sRGBA.tga
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f sRGBA8 ..\originals\elina_alpha.tga testvectors\ktx\elina_alpha_sRGBA.ktx
..\vc9\Release\etcpack testvectors\ktx\elina_alpha_sRGBA.ktx testvectors\ktx_decompressed\elina_alpha_sRGBA.tga

rem //////// RGBA-punchthrough file both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RGBA1 ..\originals\elina_alpha.tga testvectors\pkm\elina_alpha1.pkm
..\vc9\Release\etcpack testvectors\pkm\elina_alpha1.pkm testvectors\pkm_decompressed\elina_alpha1.tga
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RGBA1 ..\originals\elina_alpha.tga testvectors\ktx\elina_alpha1.ktx
..\vc9\Release\etcpack testvectors\ktx\elina_alpha1.ktx testvectors\ktx_decompressed\elina_alpha1.tga

rem //////// sRGBA-punchthrough file both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f sRGBA1 ..\originals\elina_alpha.tga testvectors\pkm\elina_sRGBA1.pkm
..\vc9\Release\etcpack testvectors\pkm\elina_sRGBA1.pkm testvectors\pkm_decompressed\elina_sRGBA1.tga
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f sRGBA1 ..\originals\elina_alpha.tga testvectors\ktx\elina_sRGBA1.ktx
..\vc9\Release\etcpack testvectors\ktx\elina_sRGBA1.ktx testvectors\ktx_decompressed\elina_sRGBA1.tga

rem //////// R files both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R ..\originals\conftestimage_R11_EAC.pgm testvectors\pkm\conftestimage_R11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\conftestimage_R11_EAC.pkm testvectors\pkm_decompressed\conftestimage_R11_EAC.pgm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R ..\originals\conftestimage_R11_EAC.pgm testvectors\ktx\conftestimage_R11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\conftestimage_R11_EAC.ktx testvectors\ktx_decompressed\conftestimage_R11_EAC.pgm

..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R ..\originals\testimage_R11_EAC.pgm testvectors\pkm\testimage_R11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\testimage_R11_EAC.pkm testvectors\pkm_decompressed\testimage_R11_EAC.pgm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R ..\originals\testimage_R11_EAC.pgm testvectors\ktx\testimage_R11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\testimage_R11_EAC.ktx testvectors\ktx_decompressed\testimage_R11_EAC.pgm


rem //////// signed R files both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R_signed ..\originals\conftestimage_SIGNED_R11_EAC.pgm testvectors\pkm\conftestimage_SIGNED_R11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\conftestimage_SIGNED_R11_EAC.pkm testvectors\pkm_decompressed\conftestimage_SIGNED_R11_EAC.pgm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R_signed ..\originals\conftestimage_SIGNED_R11_EAC.pgm testvectors\ktx\conftestimage_SIGNED_R11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\conftestimage_SIGNED_R11_EAC.ktx testvectors\ktx_decompressed\conftestimage_SIGNED_R11_EAC.pgm

..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R_signed ..\originals\testimage_SIGNED_R11_EAC.pgm testvectors\pkm\testimage_SIGNED_R11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\testimage_SIGNED_R11_EAC.pkm testvectors\pkm_decompressed\testimage_SIGNED_R11_EAC.pgm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f R_signed ..\originals\testimage_SIGNED_R11_EAC.pgm testvectors\ktx\testimage_SIGNED_R11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\testimage_SIGNED_R11_EAC.ktx testvectors\ktx_decompressed\testimage_SIGNED_R11_EAC.pgm


rem //////// RG files both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG ..\originals\conftestimage_RG11_EAC.ppm testvectors\pkm\conftestimage_RG11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\conftestimage_RG11_EAC.pkm testvectors\pkm_decompressed\conftestimage_RG11_EAC.ppm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG ..\originals\conftestimage_RG11_EAC.ppm testvectors\ktx\conftestimage_RG11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\conftestimage_RG11_EAC.ktx testvectors\ktx_decompressed\conftestimage_RG11_EAC.ppm

..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG ..\originals\testimage_RG11_EAC.ppm testvectors\pkm\testimage_RG11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\testimage_RG11_EAC.pkm testvectors\pkm_decompressed\testimage_RG11_EAC.ppm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG ..\originals\testimage_RG11_EAC.ppm testvectors\ktx\testimage_RG11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\testimage_RG11_EAC.ktx testvectors\ktx_decompressed\testimage_RG11_EAC.ppm


rem //////// signed RG files both with .pkm and .ktx ////////
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG_signed ..\originals\conftestimage_SIGNED_RG11_EAC.ppm testvectors\pkm\conftestimage_SIGNED_RG11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\conftestimage_SIGNED_RG11_EAC.pkm testvectors\pkm_decompressed\conftestimage_SIGNED_RG11_EAC.ppm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG_signed ..\originals\conftestimage_SIGNED_RG11_EAC.ppm testvectors\ktx\conftestimage_SIGNED_RG11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\conftestimage_SIGNED_RG11_EAC.ktx testvectors\ktx_decompressed\conftestimage_SIGNED_RG11_EAC.ppm

..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG_signed ..\originals\testimage_SIGNED_RG11_EAC.ppm testvectors\pkm\testimage_SIGNED_RG11_EAC.pkm
..\vc9\Release\etcpack testvectors\pkm\testimage_SIGNED_RG11_EAC.pkm testvectors\pkm_decompressed\testimage_SIGNED_RG11_EAC.ppm
..\vc9\Release\etcpack -s slow -e perceptual -c etc2 -f RG_signed ..\originals\testimage_SIGNED_RG11_EAC.ppm testvectors\ktx\testimage_SIGNED_RG11_EAC.ktx
..\vc9\Release\etcpack testvectors\ktx\testimage_SIGNED_RG11_EAC.ktx testvectors\ktx_decompressed\testimage_SIGNED_RG11_EAC.ppm

