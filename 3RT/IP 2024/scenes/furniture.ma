//Maya ASCII 2024 scene
//Name: furniture.ma
//Last modified: Tue, Jul 23, 2024 03:39:22 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "50AB27B5-42FC-72FD-3C5D-2BAB3A01DDA8";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "50CF00D3-48BF-5A7E-227A-B8883F0EB734";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.29826036169282333 3.3591880395020679 -0.74706245470579646 ;
	setAttr ".r" -type "double3" -69.338352729502972 853.79999999961251 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D675B622-45DA-4978-B973-C2AAE07E7EF3";
	setAttr -k off ".v" no;
	setAttr ".fl" 31.782747683290079;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 2.875835597749985;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0075457121186417453 58.31348968806261 74.46574460462088 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "10389489-46C0-48C1-2D8B-80AB8C2E01C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.001000000000001 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CC0603B4-4A23-9152-7227-69BBE955E8BE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "A5771932-4F71-D718-3359-12A95A82D5C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.7758625269212055 0.44899451789421591 10.001000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FFED3A90-4CAD-6F7F-344A-5692ADCF0390";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 1.4453448142500578;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "D012C80A-4878-C326-1993-2999E99E5ABB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AA99B8F7-4E3A-41C6-902F-94825C9D161B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "mattress";
	rename -uid "DDBE5BD2-46AB-F1D8-29E4-799581E759FD";
	setAttr ".t" -type "double3" 0 0.20000000000000007 0 ;
	setAttr ".rp" -type "double3" 0 -0.20000000000000007 0 ;
	setAttr ".sp" -type "double3" 0 -0.20000000000000007 0 ;
createNode mesh -n "mattressShape" -p "mattress";
	rename -uid "0316E2A7-4F35-D18F-4530-C7A232C3A8DB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.38312059640884399 0.37786051630973816 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "FC6B2B2D-49F8-D7B9-145A-E582C2536F67";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr ".s" -type "double3" 10.552500243938676 10.552500243938676 10.552500243938676 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "C273B3DC-45D4-EB68-6FF6-79BF137B16FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "world_center";
	rename -uid "35F42243-473D-310B-19E2-218C645E81F9";
createNode mesh -n "world_centerShape" -p "world_center";
	rename -uid "A94A181A-4F60-CEAC-43BD-1FA65089A4B6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F48337AA-4DED-1145-9BE0-8E8015E85AAC";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D05EEBAC-46B4-6D91-1E2E-25BC9F60A14B";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7D3355D7-434B-A916-68A6-9A9548BC4B57";
createNode displayLayerManager -n "layerManager";
	rename -uid "0A63B467-4B53-F1FD-3387-0EB3D4DEA0D1";
	setAttr -s 2 ".dli[1]"  6;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "D2E8BD84-4E7E-7EF7-9F54-CF82A7B664E2";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AB6A3303-48F5-5214-826A-7CB80910FB1A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A77CA43E-42CA-48A4-BA46-37877DD60FF0";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A3EE3A85-4B28-8910-E0E7-CC9610AF0E05";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "4D055463-4B81-B292-9171-96B6F88A4AF2";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B5246316-41DC-E62A-8F31-8DB8AB81ADC3";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "0428D14B-461E-93D9-CC5D-DD9B38F9C9A6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode shadingEngine -n "UE4guy:UE4guy:Material__10";
	rename -uid "6517DE30-4965-ECD4-ED88-33AFEFAC780D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "UE4guy:UE4guy:materialInfo2";
	rename -uid "65734C02-42C5-6A3A-9049-75B9439138FC";
createNode file -n "UE4guy:UE4guy:Scout_BodyTexFile01";
	rename -uid "424667D2-4E59-B8B0-8E16-12873DBC5046";
	setAttr ".ftn" -type "string" "/Users/ksl5-User/Desktop/Scout/ScoutMaps/scout_Texture_001.tga";
	setAttr ".ufe" yes;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "UE4guy:UE4guy:Scout_Body_place2DTexture";
	rename -uid "4AF3403F-453C-58FA-6759-A996F8EA6129";
createNode shadingEngine -n "UE4guy:UE4guy:Material__12";
	rename -uid "BCC77E20-4017-F9A9-4DA8-248663FE5956";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "UE4guy:UE4guy:materialInfo3";
	rename -uid "EAE8E339-43B1-A7C7-DBB7-CEB51F1FE6F8";
createNode file -n "UE4guy:UE4guy:Scout_HeadTexFile01";
	rename -uid "6F917C2E-46F9-790E-373A-7A840FB78A7F";
	setAttr ".ftn" -type "string" "/Users/ksl5-User/Desktop/Scout/ScoutMaps/scout_head.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "UE4guy:UE4guy:Scout_HeadTexFile_2D";
	rename -uid "61E64E8B-4560-4EF4-8EF8-BAA07CF1B2BB";
createNode lambert -n "UE4guy:UE4guy:Scout_Body_lambert";
	rename -uid "C84F320D-4966-0739-C952-EB95DE597318";
	setAttr ".ambc" -type "float3" 0.30894941 0.30894941 0.30894941 ;
createNode lambert -n "UE4guy:UE4guy:scout_Head_lambert";
	rename -uid "3DF6572F-4E66-8B9D-276D-E2B8B52E7BA8";
	setAttr ".ambc" -type "float3" 0.16260014 0.16260014 0.16260014 ;
createNode script -n "UE4guy:UE4guy:uiConfigurationScriptNode";
	rename -uid "984698EB-479A-B291-94D4-3BAAA86FAE84";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1118\n            -height 688\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "UE4guy:UE4guy:sceneConfigurationScriptNode";
	rename -uid "510D82E7-4E95-D42F-7B2B-D4A5521A4D8B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode blinn -n "UE4guy:UE4guy:Scout_Eyes_blinn";
	rename -uid "D377DD7E-493B-1F03-08FF-22A9B8C0A77E";
createNode shadingEngine -n "UE4guy:UE4guy:blinn1SG";
	rename -uid "AB143CF6-4BDE-F1E5-BC2E-9EA964EE404D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "UE4guy:UE4guy:materialInfo4";
	rename -uid "5E8E5396-4B54-EBBC-C7F6-3DBFB397A7BD";
createNode file -n "UE4guy:UE4guy:Scout_EyeTexFile01";
	rename -uid "6BD6F9DA-44BF-5A79-380D-DD95F4E31719";
	setAttr ".ftn" -type "string" "/Users/ksl5-User/Desktop/Scout/ScoutMaps/eye-iris-blue.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "UE4guy:UE4guy:place2dTexture4";
	rename -uid "5DCD77F2-4B93-36E0-9C93-2895675230DF";
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_Spine_Stretch";
	rename -uid "9082ED18-4B16-71C9-65F2-96B7820C949B";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_R_Switch";
	rename -uid "3D85499E-4483-605C-446F-4E8AC673D028";
	setAttr ".i2" -type "float3" 0.1 1 1 ;
createNode reverse -n "UE4guy:UE4guy:Rev_R_Switch";
	rename -uid "1A0DAC6C-41F4-49D3-351A-F49BBE0DE888";
createNode reverse -n "UE4guy:UE4guy:Rev_L_Switch";
	rename -uid "FA9D7DE7-4F20-D3A1-A055-0694AFEDC179";
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_L_Switch";
	rename -uid "DAB14578-497C-6CEB-9118-80A3E3E26422";
	setAttr ".i2" -type "float3" 0.1 1 1 ;
createNode multiplyDivide -n "UE4guy:UE4guy:multiplyDivide1";
	rename -uid "8073F811-4CD3-7796-541A-60AAF96EA47A";
	setAttr ".i2" -type "float3" 0.1 1 1 ;
createNode reverse -n "UE4guy:UE4guy:reverse1";
	rename -uid "BA054526-44C4-29C5-4059-CC9CA9F277D9";
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_Spine_Stretch_Global";
	rename -uid "B4352D8E-4D80-3636-5E99-B885175363D5";
	setAttr ".i2" -type "float3" 23.811001 1 1 ;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_L_Arm_Stretch";
	rename -uid "8416EAF2-4687-A391-5D4F-A49A41D37A68";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_L_Arm_Global";
	rename -uid "9CB83402-4C61-BAFF-8232-EA94E95F9B92";
	setAttr ".i2" -type "float3" 22.457001 1 1 ;
createNode condition -n "UE4guy:UE4guy:Cond_L_Arm_Stretch";
	rename -uid "5B3B3B30-4C68-AADF-9EA6-B9A37FFA8B5A";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_R_Arm_Stretch";
	rename -uid "B620E9B7-4815-0E1B-22CB-A6AAAD816074";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_R_Arm_Global";
	rename -uid "3C1DCBA4-4502-AB3C-4B66-DE9B4FF75F98";
	setAttr ".i2" -type "float3" 22.052 1 1 ;
createNode condition -n "UE4guy:UE4guy:Cond_R_Arm_Stretch";
	rename -uid "2E608897-4BF8-F7AF-498B-3C9BF10774BA";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_R_Leg_Stretch";
	rename -uid "EEE64DA1-4800-F214-CF14-AB915E69CD6C";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_R_Leg_Global";
	rename -uid "F32BB386-47E6-D9CE-0309-B8820C13A864";
	setAttr ".i2" -type "float3" 40.860001 1 1 ;
createNode condition -n "UE4guy:UE4guy:Cond_R_Leg_Stretch";
	rename -uid "E4410E53-40BC-56F8-9E7F-D485792F925E";
	setAttr ".op" 2;
createNode condition -n "UE4guy:UE4guy:Cond_L_Leg_Stretch";
	rename -uid "DD04C51A-4316-EC1A-0CC8-E98639C9C8D7";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_L_Leg_Stretch";
	rename -uid "BB73080B-4513-37AB-810F-D6B33BBA7161";
	setAttr ".op" 2;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_L_Leg_Global";
	rename -uid "F54B0ACB-4212-7861-95D2-53B1859D9F68";
	setAttr ".i2" -type "float3" 40.886002 1 1 ;
createNode materialInfo -n "UE4guy:UE4guy:pasted__materialInfo12";
	rename -uid "EB9D3E0D-4D52-57AC-E928-41A1A8681E1A";
createNode shadingEngine -n "UE4guy:UE4guy:pasted__blinn1SG";
	rename -uid "FFB1A52C-4D15-56BA-8C20-3A9740682C64";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "UE4guy:UE4guy:Scout_Baseball_Bat_Blinn";
	rename -uid "98B64520-41F2-4439-C386-2C878D5D3846";
	setAttr ".ambc" -type "float3" 0.1219501 0.1219501 0.1219501 ;
createNode file -n "UE4guy:UE4guy:Scout_BatTexFile01";
	rename -uid "A97B6BA2-4193-2FD5-0E2B-CA8B947D0A7D";
	setAttr ".ftn" -type "string" "/Users/ksl5-User/Desktop/Scout/ScoutMaps/scout_bat.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "UE4guy:UE4guy:Scout_BatTexFile_2D";
	rename -uid "8EA4400D-499F-564B-C990-4A8667F1F952";
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_L_Leg_Switch";
	rename -uid "D864BAF9-494C-9FAA-9D27-9EB76142EACF";
	setAttr ".i2" -type "float3" 0.1 1 1 ;
createNode reverse -n "UE4guy:UE4guy:REV_L_Leg_Switch";
	rename -uid "845EF90A-4A5D-B220-6C60-599B807710E0";
createNode reverse -n "UE4guy:UE4guy:REV_R_Leg_Switch1";
	rename -uid "442F0BC2-43D0-67E1-56E7-D1872F199F1D";
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_R_Leg_Switch1";
	rename -uid "D6BC6EE9-41A7-3E40-22AC-2D9C3AC214B0";
	setAttr ".i2" -type "float3" 0.1 1 1 ;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_L_FK_SS";
	rename -uid "2EA33F24-4BF3-7DEA-474E-718F0C018867";
	setAttr ".i2" -type "float3" 0.1 1 1 ;
createNode reverse -n "UE4guy:UE4guy:Rev_L_FK_SS";
	rename -uid "A042A5C7-4D37-D06A-3307-C0ABE281D9EE";
createNode expression -n "UE4guy:UE4guy:Texture_EXPR";
	rename -uid "BF3CFE2A-4E72-3E69-0126-1592D1A22814";
	setAttr -k on ".nds";
	setAttr ".in[0]"  0;
	setAttr ".ixp" -type "string" ".O[0]= .I[0] +1;";
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_Spine_VolPres_POW";
	rename -uid "8AE51772-458A-CFDA-B4A9-16BB83C5F376";
	setAttr ".op" 3;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_Spine_VolPres_POW1";
	rename -uid "867F6D70-4639-F9ED-6727-E2A0AD533C19";
	setAttr ".i2" -type "float3" -0.1 1 1 ;
createNode multiplyDivide -n "UE4guy:UE4guy:MDN_Spine_VolPres_POW2";
	rename -uid "A3671119-4E90-72C3-98E3-0F93F593D10E";
	setAttr ".op" 2;
createNode phong -n "UE4guy:UE4guy:EthanWhite";
	rename -uid "B967B04F-42E4-6D3F-2C5E-A9B75F7671DA";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 6.311790943145752;
createNode shadingEngine -n "UE4guy:UE4guy:EthanBodySG";
	rename -uid "ABF4B06D-4586-72F4-11C2-3CA717D6552E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "UE4guy:UE4guy:materialInfo1";
	rename -uid "02BD380F-4A2C-5177-48DB-FCA99F37AB92";
createNode file -n "UE4guy:UE4guy:MapFBXASC032FBXASC03544";
	rename -uid "5A9568C1-4669-F948-473C-0AA29FC90522";
	setAttr ".ftn" -type "string" "W:/2013_10 - Sample Assets/SampleAssets - Workspace/sourceimages/EthanAlbedo.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "UE4guy:UE4guy:place2dTexture1";
	rename -uid "076FEF09-4AF3-B7BA-A660-47842560B620";
createNode file -n "UE4guy:UE4guy:file8";
	rename -uid "CDA95CDC-482F-C7DC-76B8-1FBFCAB86662";
	setAttr ".ftn" -type "string" "W:/2013_10 - Sample Assets/SampleAssets - Workspace/sourceimages/EthanSpecularGloss.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "UE4guy:UE4guy:place2dTexture2";
	rename -uid "D4204186-4DFD-1097-4A1D-63ABC89A23F7";
createNode bump2d -n "UE4guy:UE4guy:bump2d1";
	rename -uid "19984392-40A1-37E5-2CE2-22824772D3E2";
	setAttr ".bi" 1;
createNode file -n "UE4guy:UE4guy:file1";
	rename -uid "46F74DB6-44C0-583E-922E-38BBA8783B58";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "W:/2013_10 - Sample Assets/SampleAssets - Workspace/sourceimages/EthanNormals.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "UE4guy:UE4guy:place2dTexture3";
	rename -uid "DA38FFC3-4FB4-A1D4-117C-5F8670C982BE";
createNode displayLayer -n "UE4guy:UE4guy_lr";
	rename -uid "FD6C1307-43A6-364A-DF58-CF965B6919CA";
	setAttr ".c" 15;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode materialInfo -n "UE4guy:UE4guy:materialInfo7";
	rename -uid "62B2F9FF-43D0-B302-4D6B-738C68BD8F9F";
createNode shadingEngine -n "UE4guy:UE4guy:mannequin_geo_calf_rSG1";
	rename -uid "77A172FD-4907-FA5C-0D39-77893D8973B7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "UE4guy:UE4guy:lambert5";
	rename -uid "E676C161-4FB8-BECA-3305-D4B2D586B1F4";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode materialInfo -n "UE4guy:UE4guy:materialInfo9";
	rename -uid "DAF73DC4-4F11-89F5-50B5-DDBDB668A139";
createNode shadingEngine -n "UE4guy:UE4guy:mannequin_geo_logoSG1";
	rename -uid "576DEE8A-4178-B5A1-4CBA-9DB42658F430";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "UE4guy:UE4guy:lambert6";
	rename -uid "1CF14F88-433C-B03B-4D43-E18A4AA87287";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode polyCube -n "polyCube1";
	rename -uid "6D545596-4238-CF14-F758-18B6F0E5A780";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1.8800000000000001;
	setAttr ".h" 0.4;
	setAttr ".d" 1.3800000000000001;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "39253E62-4400-197B-B564-84B025E306A2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 30.594368042757921 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.2;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "39C70CA1-45CB-0687-6AB0-42B4492D0B31";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -28.34644699 0 18.81327438
		 28.34644699 0 18.81327438 -28.34644699 0 18.81327438 28.34644699 0 18.81327438 -28.34644699
		 0 -18.81327438 28.34644699 0 -18.81327438 -28.34644699 0 -18.81327438 28.34644699
		 0 -18.81327438;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "0699FA54-415F-03F8-356C-12B51052CFA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[0:7]" "e[16]" "e[18:19]" "e[21:24]" "e[26:27]" "e[29:32]" "e[34:35]" "e[37:40]" "e[42:43]" "e[45:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 30.594368042757921 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyPoke -n "polyPoke1";
	rename -uid "A10B6E56-480B-09B3-D6BA-52999C97C7C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[32:33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 30.594368042757921 0 1;
	setAttr ".ws" yes;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "BC210310-4E31-45A2-081E-A19226BB8B49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 30.594368042757921 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak2";
	rename -uid "69AD279A-4F37-3D58-D6EB-44B25A086F08";
	setAttr ".uopa" yes;
	setAttr -s 98 ".tk[0:97]" -type "float3"  0 0 9.30379868 0 0 10.0070486069
		 0 0 10.29834366 0 0 10.29834366 0 0 10.0070486069 0 0 9.30379868 0 0 8.1079464 0
		 0 8.20053101 0 0 8.23888016 0 0 -8.23888016 0 0 -8.20053101 0 0 -8.1079464 0 0 10.29834366
		 0 0 10.0070486069 0 0 9.30379868 0 0 9.30379868 0 0 10.0070486069 0 0 10.29834366
		 0 0 8.23888016 0 0 8.20053101 0 0 8.1079464 0 0 -8.1079464 0 0 -8.20053101 0 0 -8.23888016
		 0 0 -9.30379868 0 0 -10.0070486069 0 0 -10.29834366 0 0 -10.29834366 0 0 -10.0070486069
		 0 0 -9.30379868 0 0 8.23888016 0 0 8.20053101 0 0 8.1079464 0 0 -8.1079464 0 0 -8.20053101
		 0 0 -8.23888016 0 0 -10.29834366 0 0 -10.0070486069 0 0 -9.30379868 0 0 -9.30379868
		 0 0 -10.0070486069 0 0 -10.29834366 0 0 8.1079464 0 0 8.20053101 0 0 8.23888016 0
		 0 -8.23888016 0 0 -8.20053101 0 0 -8.1079464 0 0 9.26861095 0 0 9.11782646 0 0 8.75379848
		 0 0 8.75379848 0 0 9.11782646 0 0 9.26861095 0 0 10.022428513 0 0 9.76125908 0 0
		 9.13074303 0 0 9.13074303 0 0 9.76125908 0 0 10.022428513 0 0 10.022428513 0 0 9.76125908
		 0 0 9.13074303 0 0 9.13074303 0 0 9.76125908 0 0 10.022428513 0 0 9.26861095 0 0
		 9.11782646 0 0 8.75379848 0 0 8.75379848 0 0 9.11782646 0 0 9.26861095 0 0 -9.26861095
		 0 0 -9.11782646 0 0 -8.75379848 0 0 -8.75379848 0 0 -9.11782646 0 0 -9.26861095 0
		 0 -10.022428513 0 0 -9.76125908 0 0 -9.13074303 0 0 -9.13074303 0 0 -9.76125908 0
		 0 -10.022428513 0 0 -10.022428513 0 0 -9.76125908 0 0 -9.13074303 0 0 -9.13074303
		 0 0 -9.76125908 0 0 -10.022428513 0 0 -9.26861095 0 0 -9.11782646 0 0 -8.75379848
		 0 0 -8.75379848 0 0 -9.11782646 0 0 -9.26861095 0 0 6.1623432e-08 0 0 -8.0584492e-08;
createNode polyCube -n "polyCube3";
	rename -uid "C9873D48-4B52-4C98-2456-8E8810C7A77D";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyPlane -n "polyPlane1";
	rename -uid "B78BAA02-42DD-37DD-8A4C-81BF83795C64";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".cuv" 2;
createNode polyNormal -n "polyNormal1";
	rename -uid "B99EC4BC-4979-8A20-72A4-E383C191F19A";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "2642D19F-43B4-D00E-F7C5-ED86023BCC83";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -2.1316282e-14 0 0 -2.1316282e-14
		 0 0 -28.14071083 0 0 -28.14071083 0 0 -28.14071083 0 0 -28.14071083 0 0 -2.1316282e-14
		 0 0 -2.1316282e-14 0;
createNode polyTweak -n "polyTweak4";
	rename -uid "C30D4A72-4683-143A-97FE-DF9EE9427432";
	setAttr ".uopa" yes;
	setAttr -s 98 ".tk[0:97]" -type "float3"  0 2.4868996e-14 0 0 0.32263857
		 0 0 1.10155702 0 0 1.10155702 0 0 0.32263857 0 0 2.4868996e-14 0 0 5.19576979 0 0
		 4.87313032 0 0 4.094213486 0 0 4.094213486 0 0 4.87313032 0 0 5.19576979 0 0 4.094213486
		 0 0 4.87313032 0 0 5.19576979 0 0 5.19576979 0 0 4.87313032 0 0 4.094213486 0 0 4.094213486
		 0 0 4.87313032 0 0 5.19576979 0 0 5.19576979 0 0 4.87313032 0 0 4.094213486 0 0 5.19576979
		 0 0 4.87313032 0 0 4.094213486 0 0 4.094213486 0 0 4.87313032 0 0 5.19576979 0 0
		 1.10155702 0 0 0.32263857 0 0 2.4868996e-14 0 0 2.4868996e-14 0 0 0.32263857 0 0
		 1.10155702 0 0 1.10155702 0 0 0.32263857 0 0 2.4868996e-14 0 0 2.4868996e-14 0 0
		 0.32263857 0 0 1.10155702 0 0 2.4868996e-14 0 0 0.32263857 0 0 1.10155702 0 0 1.10155702
		 0 0 0.32263857 0 0 2.4868996e-14 0 0 1.10155702 0 0 0.32263857 0 0 2.4868996e-14
		 0 0 5.19576979 0 0 4.87313032 0 0 4.094213486 0 0 1.10155702 0 0 0.32263857 0 0 2.4868996e-14
		 0 0 5.19576979 0 0 4.87313032 0 0 4.094213486 0 0 1.10155702 0 0 0.32263857 0 0 2.4868996e-14
		 0 0 5.19576979 0 0 4.87313032 0 0 4.094213486 0 0 1.10155702 0 0 0.32263857 0 0 2.4868996e-14
		 0 0 5.19576979 0 0 4.87313032 0 0 4.094213486 0 0 4.094213486 0 0 4.87313032 0 0
		 5.19576979 0 0 2.4868996e-14 0 0 0.32263857 0 0 1.10155702 0 0 4.094213486 0 0 4.87313032
		 0 0 5.19576979 0 0 2.4868996e-14 0 0 0.32263857 0 0 1.10155702 0 0 4.094213486 0
		 0 4.87313032 0 0 5.19576979 0 0 2.4868996e-14 0 0 0.32263857 0 0 1.10155702 0 0 4.094213486
		 0 0 4.87313032 0 0 5.19576979 0 0 2.4868996e-14 0 0 0.32263857 0 0 1.10155702 0 0
		 5.19576836 0 0 2.4868996e-14 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "131505CC-4DF3-8C21-EFCD-1D96A3F3CCAB";
	setAttr ".dc" -type "componentList" 1 "e[176:207]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 37 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "deleteComponent1.og" "mattressShape.i";
connectAttr "polyNormal1.out" "pCubeShape2.i";
connectAttr "polyPlane1.out" "world_centerShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "UE4guy:UE4guy:Material__10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "UE4guy:UE4guy:Material__12.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "UE4guy:UE4guy:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "UE4guy:UE4guy:pasted__blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "UE4guy:UE4guy:EthanBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "UE4guy:UE4guy:mannequin_geo_calf_rSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "UE4guy:UE4guy:mannequin_geo_logoSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "UE4guy:UE4guy:Material__10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "UE4guy:UE4guy:Material__12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "UE4guy:UE4guy:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "UE4guy:UE4guy:pasted__blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "UE4guy:UE4guy:EthanBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "UE4guy:UE4guy:mannequin_geo_calf_rSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "UE4guy:UE4guy:mannequin_geo_logoSG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "UE4guy:UE4guy:Scout_Body_lambert.oc" "UE4guy:UE4guy:Material__10.ss"
		;
connectAttr "UE4guy:UE4guy:Material__10.msg" "UE4guy:UE4guy:materialInfo2.sg";
connectAttr "UE4guy:UE4guy:Scout_Body_lambert.msg" "UE4guy:UE4guy:materialInfo2.m"
		;
connectAttr "UE4guy:UE4guy:Scout_BodyTexFile01.msg" "UE4guy:UE4guy:materialInfo2.t"
		 -na;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.c" "UE4guy:UE4guy:Scout_BodyTexFile01.c"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.tf" "UE4guy:UE4guy:Scout_BodyTexFile01.tf"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.rf" "UE4guy:UE4guy:Scout_BodyTexFile01.rf"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.s" "UE4guy:UE4guy:Scout_BodyTexFile01.s"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.wu" "UE4guy:UE4guy:Scout_BodyTexFile01.wu"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.wv" "UE4guy:UE4guy:Scout_BodyTexFile01.wv"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.re" "UE4guy:UE4guy:Scout_BodyTexFile01.re"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.of" "UE4guy:UE4guy:Scout_BodyTexFile01.of"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.r" "UE4guy:UE4guy:Scout_BodyTexFile01.ro"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.o" "UE4guy:UE4guy:Scout_BodyTexFile01.uv"
		;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.ofs" "UE4guy:UE4guy:Scout_BodyTexFile01.fs"
		;
connectAttr "UE4guy:UE4guy:Texture_EXPR.out[0]" "UE4guy:UE4guy:Scout_BodyTexFile01.fe"
		;
connectAttr ":defaultColorMgtGlobals.cme" "UE4guy:UE4guy:Scout_BodyTexFile01.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "UE4guy:UE4guy:Scout_BodyTexFile01.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "UE4guy:UE4guy:Scout_BodyTexFile01.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "UE4guy:UE4guy:Scout_BodyTexFile01.ws"
		;
connectAttr "UE4guy:UE4guy:scout_Head_lambert.oc" "UE4guy:UE4guy:Material__12.ss"
		;
connectAttr "UE4guy:UE4guy:Material__12.msg" "UE4guy:UE4guy:materialInfo3.sg";
connectAttr "UE4guy:UE4guy:scout_Head_lambert.msg" "UE4guy:UE4guy:materialInfo3.m"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile01.msg" "UE4guy:UE4guy:materialInfo3.t"
		 -na;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.c" "UE4guy:UE4guy:Scout_HeadTexFile01.c"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.tf" "UE4guy:UE4guy:Scout_HeadTexFile01.tf"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.rf" "UE4guy:UE4guy:Scout_HeadTexFile01.rf"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.s" "UE4guy:UE4guy:Scout_HeadTexFile01.s"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.wu" "UE4guy:UE4guy:Scout_HeadTexFile01.wu"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.wv" "UE4guy:UE4guy:Scout_HeadTexFile01.wv"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.re" "UE4guy:UE4guy:Scout_HeadTexFile01.re"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.of" "UE4guy:UE4guy:Scout_HeadTexFile01.of"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.r" "UE4guy:UE4guy:Scout_HeadTexFile01.ro"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.o" "UE4guy:UE4guy:Scout_HeadTexFile01.uv"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.ofs" "UE4guy:UE4guy:Scout_HeadTexFile01.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "UE4guy:UE4guy:Scout_HeadTexFile01.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "UE4guy:UE4guy:Scout_HeadTexFile01.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "UE4guy:UE4guy:Scout_HeadTexFile01.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "UE4guy:UE4guy:Scout_HeadTexFile01.ws"
		;
connectAttr "UE4guy:UE4guy:Scout_BodyTexFile01.oc" "UE4guy:UE4guy:Scout_Body_lambert.c"
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile01.oc" "UE4guy:UE4guy:scout_Head_lambert.c"
		;
connectAttr "UE4guy:UE4guy:Scout_EyeTexFile01.oc" "UE4guy:UE4guy:Scout_Eyes_blinn.c"
		;
connectAttr "UE4guy:UE4guy:Scout_Eyes_blinn.oc" "UE4guy:UE4guy:blinn1SG.ss";
connectAttr "UE4guy:UE4guy:blinn1SG.msg" "UE4guy:UE4guy:materialInfo4.sg";
connectAttr "UE4guy:UE4guy:Scout_Eyes_blinn.msg" "UE4guy:UE4guy:materialInfo4.m"
		;
connectAttr "UE4guy:UE4guy:Scout_EyeTexFile01.msg" "UE4guy:UE4guy:materialInfo4.t"
		 -na;
connectAttr "UE4guy:UE4guy:place2dTexture4.c" "UE4guy:UE4guy:Scout_EyeTexFile01.c"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.tf" "UE4guy:UE4guy:Scout_EyeTexFile01.tf"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.rf" "UE4guy:UE4guy:Scout_EyeTexFile01.rf"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.mu" "UE4guy:UE4guy:Scout_EyeTexFile01.mu"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.mv" "UE4guy:UE4guy:Scout_EyeTexFile01.mv"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.s" "UE4guy:UE4guy:Scout_EyeTexFile01.s"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.wu" "UE4guy:UE4guy:Scout_EyeTexFile01.wu"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.wv" "UE4guy:UE4guy:Scout_EyeTexFile01.wv"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.re" "UE4guy:UE4guy:Scout_EyeTexFile01.re"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.of" "UE4guy:UE4guy:Scout_EyeTexFile01.of"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.r" "UE4guy:UE4guy:Scout_EyeTexFile01.ro"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.n" "UE4guy:UE4guy:Scout_EyeTexFile01.n"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.vt1" "UE4guy:UE4guy:Scout_EyeTexFile01.vt1"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.vt2" "UE4guy:UE4guy:Scout_EyeTexFile01.vt2"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.vt3" "UE4guy:UE4guy:Scout_EyeTexFile01.vt3"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.vc1" "UE4guy:UE4guy:Scout_EyeTexFile01.vc1"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.o" "UE4guy:UE4guy:Scout_EyeTexFile01.uv"
		;
connectAttr "UE4guy:UE4guy:place2dTexture4.ofs" "UE4guy:UE4guy:Scout_EyeTexFile01.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "UE4guy:UE4guy:Scout_EyeTexFile01.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "UE4guy:UE4guy:Scout_EyeTexFile01.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "UE4guy:UE4guy:Scout_EyeTexFile01.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "UE4guy:UE4guy:Scout_EyeTexFile01.ws";
connectAttr "UE4guy:UE4guy:MDN_Spine_Stretch_Global.ox" "UE4guy:UE4guy:MDN_Spine_Stretch.i2x"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Switch.ox" "UE4guy:UE4guy:Rev_R_Switch.ix";
connectAttr "UE4guy:UE4guy:MDN_L_Switch.ox" "UE4guy:UE4guy:Rev_L_Switch.ix";
connectAttr "UE4guy:UE4guy:multiplyDivide1.ox" "UE4guy:UE4guy:reverse1.ix";
connectAttr "UE4guy:UE4guy:MDN_L_Arm_Global.ox" "UE4guy:UE4guy:MDN_L_Arm_Stretch.i2x"
		;
connectAttr "UE4guy:UE4guy:MDN_L_Arm_Stretch.ox" "UE4guy:UE4guy:Cond_L_Arm_Stretch.ctr"
		;
connectAttr "UE4guy:UE4guy:MDN_L_Arm_Global.ox" "UE4guy:UE4guy:Cond_L_Arm_Stretch.st"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Arm_Global.ox" "UE4guy:UE4guy:MDN_R_Arm_Stretch.i2x"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Arm_Stretch.ox" "UE4guy:UE4guy:Cond_R_Arm_Stretch.ctr"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Arm_Global.ox" "UE4guy:UE4guy:Cond_R_Arm_Stretch.st"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Leg_Global.ox" "UE4guy:UE4guy:MDN_R_Leg_Stretch.i2x"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Leg_Stretch.ox" "UE4guy:UE4guy:Cond_R_Leg_Stretch.ctr"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Leg_Global.ox" "UE4guy:UE4guy:Cond_R_Leg_Stretch.st"
		;
connectAttr "UE4guy:UE4guy:MDN_L_Leg_Stretch.ox" "UE4guy:UE4guy:Cond_L_Leg_Stretch.ctr"
		;
connectAttr "UE4guy:UE4guy:MDN_L_Leg_Global.ox" "UE4guy:UE4guy:Cond_L_Leg_Stretch.st"
		;
connectAttr "UE4guy:UE4guy:MDN_L_Leg_Global.ox" "UE4guy:UE4guy:MDN_L_Leg_Stretch.i2x"
		;
connectAttr "UE4guy:UE4guy:pasted__blinn1SG.msg" "UE4guy:UE4guy:pasted__materialInfo12.sg"
		;
connectAttr "UE4guy:UE4guy:Scout_Baseball_Bat_Blinn.msg" "UE4guy:UE4guy:pasted__materialInfo12.m"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile01.msg" "UE4guy:UE4guy:pasted__materialInfo12.t"
		 -na;
connectAttr "UE4guy:UE4guy:Scout_Baseball_Bat_Blinn.oc" "UE4guy:UE4guy:pasted__blinn1SG.ss"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile01.oc" "UE4guy:UE4guy:Scout_Baseball_Bat_Blinn.c"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.c" "UE4guy:UE4guy:Scout_BatTexFile01.c"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.tf" "UE4guy:UE4guy:Scout_BatTexFile01.tf"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.rf" "UE4guy:UE4guy:Scout_BatTexFile01.rf"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.mu" "UE4guy:UE4guy:Scout_BatTexFile01.mu"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.mv" "UE4guy:UE4guy:Scout_BatTexFile01.mv"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.s" "UE4guy:UE4guy:Scout_BatTexFile01.s"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.wu" "UE4guy:UE4guy:Scout_BatTexFile01.wu"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.wv" "UE4guy:UE4guy:Scout_BatTexFile01.wv"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.re" "UE4guy:UE4guy:Scout_BatTexFile01.re"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.of" "UE4guy:UE4guy:Scout_BatTexFile01.of"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.r" "UE4guy:UE4guy:Scout_BatTexFile01.ro"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.n" "UE4guy:UE4guy:Scout_BatTexFile01.n"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.vt1" "UE4guy:UE4guy:Scout_BatTexFile01.vt1"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.vt2" "UE4guy:UE4guy:Scout_BatTexFile01.vt2"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.vt3" "UE4guy:UE4guy:Scout_BatTexFile01.vt3"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.vc1" "UE4guy:UE4guy:Scout_BatTexFile01.vc1"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.o" "UE4guy:UE4guy:Scout_BatTexFile01.uv"
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.ofs" "UE4guy:UE4guy:Scout_BatTexFile01.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "UE4guy:UE4guy:Scout_BatTexFile01.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "UE4guy:UE4guy:Scout_BatTexFile01.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "UE4guy:UE4guy:Scout_BatTexFile01.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "UE4guy:UE4guy:Scout_BatTexFile01.ws";
connectAttr "UE4guy:UE4guy:MDN_L_Leg_Switch.ox" "UE4guy:UE4guy:REV_L_Leg_Switch.ix"
		;
connectAttr "UE4guy:UE4guy:MDN_R_Leg_Switch1.ox" "UE4guy:UE4guy:REV_R_Leg_Switch1.ix"
		;
connectAttr "UE4guy:UE4guy:MDN_L_FK_SS.ox" "UE4guy:UE4guy:Rev_L_FK_SS.ix";
connectAttr ":time1.o" "UE4guy:UE4guy:Texture_EXPR.tim";
connectAttr "UE4guy:UE4guy:MDN_Spine_Stretch.ox" "UE4guy:UE4guy:MDN_Spine_VolPres_POW.i1x"
		;
connectAttr "UE4guy:UE4guy:MDN_Spine_VolPres_POW1.ox" "UE4guy:UE4guy:MDN_Spine_VolPres_POW.i2x"
		;
connectAttr "UE4guy:UE4guy:MDN_Spine_VolPres_POW.ox" "UE4guy:UE4guy:MDN_Spine_VolPres_POW2.i1x"
		;
connectAttr "UE4guy:UE4guy:MapFBXASC032FBXASC03544.oc" "UE4guy:UE4guy:EthanWhite.c"
		;
connectAttr "UE4guy:UE4guy:file8.oc" "UE4guy:UE4guy:EthanWhite.sc";
connectAttr "UE4guy:UE4guy:bump2d1.o" "UE4guy:UE4guy:EthanWhite.n";
connectAttr "UE4guy:UE4guy:EthanWhite.oc" "UE4guy:UE4guy:EthanBodySG.ss";
connectAttr "UE4guy:UE4guy:EthanBodySG.msg" "UE4guy:UE4guy:materialInfo1.sg";
connectAttr "UE4guy:UE4guy:EthanWhite.msg" "UE4guy:UE4guy:materialInfo1.m";
connectAttr "UE4guy:UE4guy:MapFBXASC032FBXASC03544.msg" "UE4guy:UE4guy:materialInfo1.t"
		 -na;
connectAttr "UE4guy:UE4guy:place2dTexture1.o" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.uv"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.ofu" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.ofu"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.ofv" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.ofv"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.rf" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.rf"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.reu" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.reu"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.rev" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.rev"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.vt1" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.vt1"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.vt2" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.vt2"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.vt3" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.vt3"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.vc1" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.vc1"
		;
connectAttr "UE4guy:UE4guy:place2dTexture1.ofs" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "UE4guy:UE4guy:MapFBXASC032FBXASC03544.ws"
		;
connectAttr "UE4guy:UE4guy:place2dTexture2.o" "UE4guy:UE4guy:file8.uv";
connectAttr "UE4guy:UE4guy:place2dTexture2.ofu" "UE4guy:UE4guy:file8.ofu";
connectAttr "UE4guy:UE4guy:place2dTexture2.ofv" "UE4guy:UE4guy:file8.ofv";
connectAttr "UE4guy:UE4guy:place2dTexture2.rf" "UE4guy:UE4guy:file8.rf";
connectAttr "UE4guy:UE4guy:place2dTexture2.reu" "UE4guy:UE4guy:file8.reu";
connectAttr "UE4guy:UE4guy:place2dTexture2.rev" "UE4guy:UE4guy:file8.rev";
connectAttr "UE4guy:UE4guy:place2dTexture2.vt1" "UE4guy:UE4guy:file8.vt1";
connectAttr "UE4guy:UE4guy:place2dTexture2.vt2" "UE4guy:UE4guy:file8.vt2";
connectAttr "UE4guy:UE4guy:place2dTexture2.vt3" "UE4guy:UE4guy:file8.vt3";
connectAttr "UE4guy:UE4guy:place2dTexture2.vc1" "UE4guy:UE4guy:file8.vc1";
connectAttr "UE4guy:UE4guy:place2dTexture2.ofs" "UE4guy:UE4guy:file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "UE4guy:UE4guy:file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "UE4guy:UE4guy:file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "UE4guy:UE4guy:file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "UE4guy:UE4guy:file8.ws";
connectAttr "UE4guy:UE4guy:file1.oa" "UE4guy:UE4guy:bump2d1.bv";
connectAttr "UE4guy:UE4guy:place2dTexture3.o" "UE4guy:UE4guy:file1.uv";
connectAttr "UE4guy:UE4guy:place2dTexture3.ofu" "UE4guy:UE4guy:file1.ofu";
connectAttr "UE4guy:UE4guy:place2dTexture3.ofv" "UE4guy:UE4guy:file1.ofv";
connectAttr "UE4guy:UE4guy:place2dTexture3.rf" "UE4guy:UE4guy:file1.rf";
connectAttr "UE4guy:UE4guy:place2dTexture3.reu" "UE4guy:UE4guy:file1.reu";
connectAttr "UE4guy:UE4guy:place2dTexture3.rev" "UE4guy:UE4guy:file1.rev";
connectAttr "UE4guy:UE4guy:place2dTexture3.vt1" "UE4guy:UE4guy:file1.vt1";
connectAttr "UE4guy:UE4guy:place2dTexture3.vt2" "UE4guy:UE4guy:file1.vt2";
connectAttr "UE4guy:UE4guy:place2dTexture3.vt3" "UE4guy:UE4guy:file1.vt3";
connectAttr "UE4guy:UE4guy:place2dTexture3.vc1" "UE4guy:UE4guy:file1.vc1";
connectAttr "UE4guy:UE4guy:place2dTexture3.ofs" "UE4guy:UE4guy:file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "UE4guy:UE4guy:file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "UE4guy:UE4guy:file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "UE4guy:UE4guy:file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "UE4guy:UE4guy:file1.ws";
connectAttr "layerManager.dli[1]" "UE4guy:UE4guy_lr.id";
connectAttr "UE4guy:UE4guy:mannequin_geo_calf_rSG1.msg" "UE4guy:UE4guy:materialInfo7.sg"
		;
connectAttr "UE4guy:UE4guy:lambert5.msg" "UE4guy:UE4guy:materialInfo7.m";
connectAttr "UE4guy:UE4guy:lambert5.oc" "UE4guy:UE4guy:mannequin_geo_calf_rSG1.ss"
		;
connectAttr "UE4guy:UE4guy:mannequin_geo_logoSG1.msg" "UE4guy:UE4guy:materialInfo9.sg"
		;
connectAttr "UE4guy:UE4guy:lambert6.msg" "UE4guy:UE4guy:materialInfo9.m";
connectAttr "UE4guy:UE4guy:lambert6.oc" "UE4guy:UE4guy:mannequin_geo_logoSG1.ss"
		;
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "mattressShape.wm" "polyBevel1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "mattressShape.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyPoke1.ip";
connectAttr "mattressShape.wm" "polyPoke1.mp";
connectAttr "polyTweak2.out" "polySoftEdge1.ip";
connectAttr "mattressShape.wm" "polySoftEdge1.mp";
connectAttr "polyPoke1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyNormal1.ip";
connectAttr "polyCube3.out" "polyTweak3.ip";
connectAttr "polySoftEdge1.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent1.ig";
connectAttr "UE4guy:UE4guy:Material__10.pa" ":renderPartition.st" -na;
connectAttr "UE4guy:UE4guy:Material__12.pa" ":renderPartition.st" -na;
connectAttr "UE4guy:UE4guy:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "UE4guy:UE4guy:pasted__blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "UE4guy:UE4guy:EthanBodySG.pa" ":renderPartition.st" -na;
connectAttr "UE4guy:UE4guy:mannequin_geo_calf_rSG1.pa" ":renderPartition.st" -na
		;
connectAttr "UE4guy:UE4guy:mannequin_geo_logoSG1.pa" ":renderPartition.st" -na;
connectAttr "UE4guy:UE4guy:Scout_Body_lambert.msg" ":defaultShaderList1.s" -na;
connectAttr "UE4guy:UE4guy:scout_Head_lambert.msg" ":defaultShaderList1.s" -na;
connectAttr "UE4guy:UE4guy:Scout_Eyes_blinn.msg" ":defaultShaderList1.s" -na;
connectAttr "UE4guy:UE4guy:Scout_Baseball_Bat_Blinn.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "UE4guy:UE4guy:EthanWhite.msg" ":defaultShaderList1.s" -na;
connectAttr "UE4guy:UE4guy:lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "UE4guy:UE4guy:lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "UE4guy:UE4guy:Scout_Body_place2DTexture.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile_2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "UE4guy:UE4guy:MDN_Spine_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_R_Switch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:Rev_R_Switch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:Rev_L_Switch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:MDN_L_Switch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "UE4guy:UE4guy:reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:MDN_Spine_Stretch_Global.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_L_Arm_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_L_Arm_Global.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "UE4guy:UE4guy:Cond_L_Arm_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_R_Arm_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_R_Arm_Global.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "UE4guy:UE4guy:Cond_R_Arm_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_R_Leg_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_R_Leg_Global.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "UE4guy:UE4guy:Cond_R_Leg_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:Cond_L_Leg_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_L_Leg_Stretch.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_L_Leg_Global.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile_2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_L_Leg_Switch.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "UE4guy:UE4guy:REV_L_Leg_Switch.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "UE4guy:UE4guy:REV_R_Leg_Switch1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_R_Leg_Switch1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_L_FK_SS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:Rev_L_FK_SS.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:MDN_Spine_VolPres_POW.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_Spine_VolPres_POW1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:MDN_Spine_VolPres_POW2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "UE4guy:UE4guy:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "UE4guy:UE4guy:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "UE4guy:UE4guy:bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "UE4guy:UE4guy:place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "UE4guy:UE4guy:Scout_BodyTexFile01.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "UE4guy:UE4guy:Scout_HeadTexFile01.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "UE4guy:UE4guy:Scout_EyeTexFile01.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "UE4guy:UE4guy:Scout_BatTexFile01.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "UE4guy:UE4guy:MapFBXASC032FBXASC03544.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "UE4guy:UE4guy:file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "UE4guy:UE4guy:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "mattressShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "world_centerShape.iog" ":initialShadingGroup.dsm" -na;
// End of furniture.ma
