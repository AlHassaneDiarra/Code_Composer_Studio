################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
src/realtime_tremolo.obj: ../src/realtime_tremolo.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5505 --symdebug:coff --define="_DEBUG" --define="C55X" --include_path="C:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --include_path="../inc" --include_path="C:/ti/bios_5_42_01_09/packages/ti/rtdx/include/c5500" --include_path="C:/Users/lassa/ProjetInitialEtudiant/ProjetInitialEtudiant/realtime_tremolo/Debug" --include_path="C:/ti/bios_5_42_01_09/packages/ti/bios/include" --diag_warning=225 --ptrdiff_size=16 --no_mac_expand --memory_model=large --asm_source=mnemonic --opt_for_speed=2 --preproc_with_compile --preproc_dependency="src/realtime_tremolo.pp" --obj_directory="src" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/realtime_tremoloTest.obj: ../src/realtime_tremoloTest.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5505 --symdebug:coff --define="_DEBUG" --define="C55X" --include_path="C:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --include_path="../inc" --include_path="C:/ti/bios_5_42_01_09/packages/ti/rtdx/include/c5500" --include_path="C:/Users/lassa/ProjetInitialEtudiant/ProjetInitialEtudiant/realtime_tremolo/Debug" --include_path="C:/ti/bios_5_42_01_09/packages/ti/bios/include" --diag_warning=225 --ptrdiff_size=16 --no_mac_expand --memory_model=large --asm_source=mnemonic --opt_for_speed=2 --preproc_with_compile --preproc_dependency="src/realtime_tremoloTest.pp" --obj_directory="src" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/vector.obj: ../src/vector.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -v5505 --symdebug:coff --define="_DEBUG" --define="C55X" --include_path="C:/ti/ccsv5/tools/compiler/c5500_4.4.1/include" --include_path="../inc" --include_path="C:/ti/bios_5_42_01_09/packages/ti/rtdx/include/c5500" --include_path="C:/Users/lassa/ProjetInitialEtudiant/ProjetInitialEtudiant/realtime_tremolo/Debug" --include_path="C:/ti/bios_5_42_01_09/packages/ti/bios/include" --diag_warning=225 --ptrdiff_size=16 --no_mac_expand --memory_model=large --asm_source=mnemonic --opt_for_speed=2 --preproc_with_compile --preproc_dependency="src/vector.pp" --obj_directory="src" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


