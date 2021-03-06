set(H_FILES
  Algorithms/itkImportMitkImageContainer.h
  Algorithms/itkImportMitkImageContainer.txx
  Algorithms/itkMITKScalarImageToHistogramGenerator.h
  Algorithms/itkMITKScalarImageToHistogramGenerator.txx
  Algorithms/mitkInstantiateAccessFunctions.h
  Algorithms/mitkPixelTypeList.h
  Algorithms/mitkPPArithmeticDec.h
  Algorithms/mitkPPArgCount.h
  Algorithms/mitkPPCat.h
  Algorithms/mitkPPConfig.h
  Algorithms/mitkPPControlExprIIf.h
  Algorithms/mitkPPControlIf.h
  Algorithms/mitkPPControlIIf.h
  Algorithms/mitkPPDebugError.h
  Algorithms/mitkPPDetailAutoRec.h
  Algorithms/mitkPPDetailDMCAutoRec.h
  Algorithms/mitkPPExpand.h
  Algorithms/mitkPPFacilitiesEmpty.h
  Algorithms/mitkPPFacilitiesExpand.h
  Algorithms/mitkPPLogicalBool.h
  Algorithms/mitkPPRepetitionDetailDMCFor.h
  Algorithms/mitkPPRepetitionDetailEDGFor.h
  Algorithms/mitkPPRepetitionDetailFor.h
  Algorithms/mitkPPRepetitionDetailMSVCFor.h
  Algorithms/mitkPPRepetitionFor.h
  Algorithms/mitkPPSeqElem.h
  Algorithms/mitkPPSeqForEach.h
  Algorithms/mitkPPSeqForEachProduct.h
  Algorithms/mitkPPSeq.h
  Algorithms/mitkPPSeqEnum.h
  Algorithms/mitkPPSeqSize.h
  Algorithms/mitkPPSeqToTuple.h
  Algorithms/mitkPPStringize.h
  Algorithms/mitkPPTupleEat.h
  Algorithms/mitkPPTupleElem.h
  Algorithms/mitkPPTupleRem.h
  Algorithms/mitkClippedSurfaceBoundsCalculator.h
  Algorithms/mitkExtractSliceFilter.h
  Algorithms/mitkConvert2Dto3DImageFilter.h
  Algorithms/mitkPlaneClipping.h

  Common/mitkCommon.h
  Common/mitkExceptionMacro.h

  DataManagement/mitkProportionalTimeGeometry.h
  DataManagement/mitkTimeGeometry.h
  DataManagement/mitkImageAccessByItk.h
  DataManagement/mitkImageCast.h
  DataManagement/mitkImagePixelAccessor.h
  DataManagement/mitkImagePixelReadAccessor.h
  DataManagement/mitkImagePixelWriteAccessor.h
  DataManagement/mitkImageReadAccessor.h
  DataManagement/mitkImageWriteAccessor.h
  DataManagement/mitkITKImageImport.h
  DataManagement/mitkITKImageImport.txx
  DataManagement/mitkImageToItk.h
  DataManagement/mitkShaderProperty.h
  DataManagement/mitkImageToItk.txx
  DataManagement/mitkTimeSlicedGeometry.h # Deprecated, empty for compatibilty reasons.
  DataManagement/mitkPropertyListReplacedObserver.cpp

  Interactions/mitkEventMapperAddOn.h

  Interfaces/mitkIDataNodeReader.h

  Rendering/mitkLocalStorageHandler.h
  Rendering/Colortables/HotIron.h
  Rendering/Colortables/Jet.h
  Rendering/Colortables/PET20.h
  Rendering/Colortables/PETColor.h


  IO/mitkPixelTypeTraits.h
)

set(CPP_FILES
  Algorithms/mitkBaseDataSource.cpp
  Algorithms/mitkCompareImageDataFilter.cpp
  Algorithms/mitkMultiComponentImageDataComparisonFilter.cpp
  Algorithms/mitkDataNodeSource.cpp
  Algorithms/mitkGeometry2DDataToSurfaceFilter.cpp
  Algorithms/mitkHistogramGenerator.cpp
  Algorithms/mitkImageChannelSelector.cpp
  Algorithms/mitkImageSliceSelector.cpp
  Algorithms/mitkImageSource.cpp
  Algorithms/mitkImageTimeSelector.cpp
  Algorithms/mitkImageToImageFilter.cpp
  Algorithms/mitkImageToSurfaceFilter.cpp
  Algorithms/mitkPointSetSource.cpp
  Algorithms/mitkPointSetToPointSetFilter.cpp
  Algorithms/mitkRGBToRGBACastImageFilter.cpp
  Algorithms/mitkSubImageSelector.cpp
  Algorithms/mitkSurfaceSource.cpp
  Algorithms/mitkSurfaceToImageFilter.cpp
  Algorithms/mitkSurfaceToSurfaceFilter.cpp
  Algorithms/mitkUIDGenerator.cpp
  Algorithms/mitkVolumeCalculator.cpp
  Algorithms/mitkClippedSurfaceBoundsCalculator.cpp
  Algorithms/mitkExtractSliceFilter.cpp
  Algorithms/mitkConvert2Dto3DImageFilter.cpp

  Controllers/mitkBaseController.cpp
  Controllers/mitkCallbackFromGUIThread.cpp
  Controllers/mitkCameraController.cpp
  Controllers/mitkCameraRotationController.cpp
  Controllers/mitkCoreActivator.cpp
  Controllers/mitkFocusManager.cpp
  Controllers/mitkLimitedLinearUndo.cpp
  Controllers/mitkOperationEvent.cpp
  Controllers/mitkPlanePositionManager.cpp
  Controllers/mitkProgressBar.cpp
  Controllers/mitkRenderingManager.cpp
  Controllers/mitkSliceNavigationController.cpp
  Controllers/mitkSlicesCoordinator.cpp
  Controllers/mitkSlicesRotator.cpp
  Controllers/mitkSlicesSwiveller.cpp
  Controllers/mitkStatusBar.cpp
  Controllers/mitkStepper.cpp
  Controllers/mitkTestManager.cpp
  Controllers/mitkUndoController.cpp
  Controllers/mitkVerboseLimitedLinearUndo.cpp
  Controllers/mitkVtkInteractorCameraController.cpp
  Controllers/mitkVtkLayerController.cpp
  DataManagement/mitkProportionalTimeGeometry.cpp
  DataManagement/mitkTimeGeometry.cpp
  DataManagement/mitkAbstractTransformGeometry.cpp
  DataManagement/mitkAnnotationProperty.cpp
  DataManagement/mitkApplicationCursor.cpp
  DataManagement/mitkBaseData.cpp
  DataManagement/mitkBaseProperty.cpp
  DataManagement/mitkClippingProperty.cpp
  DataManagement/mitkChannelDescriptor.cpp
  DataManagement/mitkColorProperty.cpp
  DataManagement/mitkDataStorage.cpp
# DataManagement/mitkDataTree.cpp
  DataManagement/mitkDataNode.cpp
  DataManagement/mitkDataNodeFactory.cpp
# DataManagement/mitkDataTreeStorage.cpp
  DataManagement/mitkDisplayGeometry.cpp
  DataManagement/mitkEnumerationProperty.cpp
  DataManagement/mitkGeometry2D.cpp
  DataManagement/mitkGeometry2DData.cpp
  DataManagement/mitkGeometry3D.cpp
  DataManagement/mitkGeometryData.cpp
  DataManagement/mitkGroupTagProperty.cpp
  DataManagement/mitkImage.cpp
  DataManagement/mitkImageAccessorBase.cpp
  DataManagement/mitkImageCaster.cpp
  DataManagement/mitkImageCastPart1.cpp
  DataManagement/mitkImageCastPart2.cpp
  DataManagement/mitkImageCastPart3.cpp
  DataManagement/mitkImageCastPart4.cpp
  DataManagement/mitkImageDataItem.cpp
  DataManagement/mitkImageDescriptor.cpp
  DataManagement/mitkImageVtkAccessor.cpp
  DataManagement/mitkImageStatisticsHolder.cpp
  DataManagement/mitkLandmarkBasedCurvedGeometry.cpp
  DataManagement/mitkLandmarkProjectorBasedCurvedGeometry.cpp
  DataManagement/mitkLandmarkProjector.cpp
  DataManagement/mitkLevelWindow.cpp
  DataManagement/mitkLevelWindowManager.cpp
  DataManagement/mitkLevelWindowPreset.cpp
  DataManagement/mitkLevelWindowProperty.cpp
  DataManagement/mitkLookupTable.cpp
  DataManagement/mitkLookupTables.cpp # specializations of GenericLookupTable
  DataManagement/mitkMemoryUtilities.cpp
  DataManagement/mitkModalityProperty.cpp
  DataManagement/mitkModeOperation.cpp
  DataManagement/mitkNodePredicateAnd.cpp
  DataManagement/mitkNodePredicateBase.cpp
  DataManagement/mitkNodePredicateCompositeBase.cpp
  DataManagement/mitkNodePredicateData.cpp
  DataManagement/mitkNodePredicateDataType.cpp
  DataManagement/mitkNodePredicateDimension.cpp
  DataManagement/mitkNodePredicateFirstLevel.cpp
  DataManagement/mitkNodePredicateNot.cpp
  DataManagement/mitkNodePredicateOr.cpp
  DataManagement/mitkNodePredicateProperty.cpp
  DataManagement/mitkNodePredicateSource.cpp
  DataManagement/mitkPlaneOrientationProperty.cpp
  DataManagement/mitkPlaneGeometry.cpp
  DataManagement/mitkPlaneOperation.cpp
  DataManagement/mitkPointOperation.cpp
  DataManagement/mitkPointSet.cpp
  DataManagement/mitkProperties.cpp
  DataManagement/mitkPropertyList.cpp
  DataManagement/mitkPropertyObserver.cpp
  DataManagement/mitkRestorePlanePositionOperation.cpp
  DataManagement/mitkApplyTransformMatrixOperation.cpp
  DataManagement/mitkRotationOperation.cpp
  DataManagement/mitkSlicedData.cpp
  DataManagement/mitkSlicedGeometry3D.cpp
  DataManagement/mitkSmartPointerProperty.cpp
  DataManagement/mitkStandaloneDataStorage.cpp
  DataManagement/mitkStateTransitionOperation.cpp
  DataManagement/mitkStringProperty.cpp
  DataManagement/mitkSurface.cpp
  DataManagement/mitkSurfaceOperation.cpp
  DataManagement/mitkThinPlateSplineCurvedGeometry.cpp
  DataManagement/mitkTransferFunction.cpp
  DataManagement/mitkTransferFunctionProperty.cpp
  DataManagement/mitkTransferFunctionInitializer.cpp
  DataManagement/mitkVector.cpp

  DataManagement/mitkVtkInterpolationProperty.cpp
  DataManagement/mitkVtkRepresentationProperty.cpp
  DataManagement/mitkVtkResliceInterpolationProperty.cpp
  DataManagement/mitkVtkScalarModeProperty.cpp
  DataManagement/mitkVtkVolumeRenderingProperty.cpp
  DataManagement/mitkWeakPointerProperty.cpp
  DataManagement/mitkRenderingModeProperty.cpp
  DataManagement/mitkResliceMethodProperty.cpp
  DataManagement/mitkMaterial.cpp
  DataManagement/mitkPointSetShapeProperty.cpp
  DataManagement/mitkFloatPropertyExtension.cpp
  DataManagement/mitkIntPropertyExtension.cpp
  DataManagement/mitkPropertyExtension.cpp
  DataManagement/mitkPropertyFilter.cpp
  DataManagement/mitkPropertyAliases.cpp
  DataManagement/mitkPropertyDescriptions.cpp
  DataManagement/mitkPropertyExtensions.cpp
  DataManagement/mitkPropertyFilters.cpp
  DataManagement/mitkShaderProperty.cpp

  Interactions/mitkAction.cpp
  Interactions/mitkAffineInteractor.cpp
  Interactions/mitkBindDispatcherInteractor.cpp
  Interactions/mitkCoordinateSupplier.cpp
  Interactions/mitkDataInteractor.cpp
  Interactions/mitkDispatcher.cpp
  Interactions/mitkDisplayCoordinateOperation.cpp
  Interactions/mitkDisplayInteractor.cpp
  Interactions/mitkDisplayPositionEvent.cpp
# Interactions/mitkDisplayVectorInteractorLevelWindow.cpp # legacy, prob even now unneeded
# Interactions/mitkDisplayVectorInteractorScroll.cpp
  Interactions/mitkEvent.cpp
  Interactions/mitkEventConfig.cpp
  Interactions/mitkEventDescription.cpp
  Interactions/mitkEventFactory.cpp
  Interactions/mitkInteractionEventHandler.cpp
  Interactions/mitkEventMapper.cpp
  Interactions/mitkEventRecorder.cpp
  Interactions/mitkEventStateMachine.cpp
  Interactions/mitkGlobalInteraction.cpp
  Interactions/mitkInteractor.cpp
  Interactions/mitkInternalEvent.cpp
  Interactions/mitkInteractionEvent.cpp
  Interactions/mitkInteractionEventConst.cpp
  Interactions/mitkInteractionPositionEvent.cpp
  Interactions/mitkInteractionKeyEvent.cpp
  Interactions/mitkMousePressEvent.cpp
  Interactions/mitkMouseMoveEvent.cpp
  Interactions/mitkMouseReleaseEvent.cpp
  Interactions/mitkMouseWheelEvent.cpp
  Interactions/mitkMouseDoubleClickEvent.cpp
  Interactions/mitkMouseModeSwitcher.cpp
  Interactions/mitkMouseMovePointSetInteractor.cpp
  Interactions/mitkMoveBaseDataInteractor.cpp
  Interactions/mitkNodeDepententPointSetInteractor.cpp
  Interactions/mitkPointSetDataInteractor.cpp
  Interactions/mitkPointSetInteractor.cpp
  Interactions/mitkPositionEvent.cpp
  Interactions/mitkPositionTracker.cpp
  Interactions/mitkStateMachineAction.cpp
  Interactions/mitkStateMachineCondition.cpp
  Interactions/mitkStateMachineState.cpp
  Interactions/mitkStateMachineTransition.cpp
  Interactions/mitkState.cpp
  Interactions/mitkStateMachineContainer.cpp
  Interactions/mitkStateEvent.cpp
  Interactions/mitkStateMachine.cpp
  Interactions/mitkStateMachineFactory.cpp
  Interactions/mitkTransition.cpp
  Interactions/mitkWheelEvent.cpp
  Interactions/mitkKeyEvent.cpp
  Interactions/mitkVtkEventAdapter.cpp
  Interactions/mitkVtkInteractorStyle.cxx
  Interactions/mitkCrosshairPositionEvent.cpp
  Interactions/mitkXML2EventParser.cpp

  Interfaces/mitkInteractionEventObserver.cpp
  Interfaces/mitkIShaderRepository.cpp
  Interfaces/mitkIPropertyAliases.cpp
  Interfaces/mitkIPropertyDescriptions.cpp
  Interfaces/mitkIPropertyExtensions.cpp
  Interfaces/mitkIPropertyFilters.cpp
  Interfaces/mitkIPersistenceService.cpp

  IO/mitkBaseDataIOFactory.cpp
  IO/mitkCoreDataNodeReader.cpp
  IO/mitkDicomSeriesReader.cpp
  IO/mitkDicomSR_LoadDICOMScalar.cpp
  IO/mitkDicomSR_LoadDICOMScalar4D.cpp
  IO/mitkDicomSR_LoadDICOMRGBPixel.cpp
  IO/mitkDicomSR_LoadDICOMRGBPixel4D.cpp
  IO/mitkDicomSR_ImageBlockDescriptor.cpp
  IO/mitkDicomSR_GantryTiltInformation.cpp
  IO/mitkDicomSR_SliceGroupingResult.cpp

  IO/mitkFileReader.cpp
  IO/mitkFileSeriesReader.cpp
  IO/mitkFileWriter.cpp
# IO/mitkIpPicGet.c
  IO/mitkImageGenerator.cpp
  IO/mitkImageWriter.cpp
  IO/mitkImageWriterFactory.cpp
  IO/mitkItkImageFileIOFactory.cpp
  IO/mitkItkImageFileReader.cpp
  IO/mitkItkLoggingAdapter.cpp
  IO/mitkItkPictureWrite.cpp
  IO/mitkIOUtil.cpp
  IO/mitkLookupTableProperty.cpp
  IO/mitkOperation.cpp
# IO/mitkPicFileIOFactory.cpp
# IO/mitkPicFileReader.cpp
# IO/mitkPicFileWriter.cpp
# IO/mitkPicHelper.cpp
# IO/mitkPicVolumeTimeSeriesIOFactory.cpp
# IO/mitkPicVolumeTimeSeriesReader.cpp
  IO/mitkPixelType.cpp
  IO/mitkPointSetIOFactory.cpp
  IO/mitkPointSetReader.cpp
  IO/mitkPointSetWriter.cpp
  IO/mitkPointSetWriterFactory.cpp
  IO/mitkRawImageFileReader.cpp
  IO/mitkStandardFileLocations.cpp
  IO/mitkSTLFileIOFactory.cpp
  IO/mitkSTLFileReader.cpp
  IO/mitkSurfaceVtkWriter.cpp
  IO/mitkSurfaceVtkWriterFactory.cpp
  IO/mitkVtkLoggingAdapter.cpp
  IO/mitkVtiFileIOFactory.cpp
  IO/mitkVtiFileReader.cpp
  IO/mitkVtkImageIOFactory.cpp
  IO/mitkVtkImageReader.cpp
  IO/mitkVtkSurfaceIOFactory.cpp
  IO/mitkVtkSurfaceReader.cpp
  IO/vtkPointSetXMLParser.cpp
  IO/mitkLog.cpp

  Rendering/mitkBaseRenderer.cpp
  Rendering/mitkVtkMapper.cpp
  Rendering/mitkRenderWindowFrame.cpp
  Rendering/mitkGeometry2DDataMapper2D.cpp
  Rendering/mitkGeometry2DDataVtkMapper3D.cpp
  Rendering/mitkGLMapper.cpp
  Rendering/mitkGradientBackground.cpp
  Rendering/mitkManufacturerLogo.cpp
  Rendering/mitkMapper.cpp
  Rendering/mitkPointSetGLMapper2D.cpp
  Rendering/mitkPointSetVtkMapper2D.cpp
  Rendering/mitkPointSetVtkMapper3D.cpp
  Rendering/mitkPolyDataGLMapper2D.cpp
  Rendering/mitkSurfaceGLMapper2D.cpp
  Rendering/mitkSurfaceVtkMapper3D.cpp
  Rendering/mitkVolumeDataVtkMapper3D.cpp
  Rendering/mitkVtkPropRenderer.cpp
  Rendering/mitkVtkWidgetRendering.cpp
  Rendering/vtkMitkRectangleProp.cpp
  Rendering/vtkMitkRenderProp.cpp
  Rendering/mitkVtkEventProvider.cpp
  Rendering/mitkRenderWindow.cpp
  Rendering/mitkRenderWindowBase.cpp
  Rendering/mitkImageVtkMapper2D.cpp
  Rendering/vtkMitkThickSlicesFilter.cpp
  Rendering/vtkMitkLevelWindowFilter.cpp
  Rendering/vtkNeverTranslucentTexture.cpp

  Rendering/mitkOverlay.cpp
  Rendering/mitkVtkOverlay.cpp
  Rendering/mitkVtkOverlay2D.cpp
  Rendering/mitkVtkOverlay3D.cpp
  Rendering/mitkOverlayManager.cpp
  Rendering/mitkAbstractOverlayLayouter.cpp

  Rendering/mitkTextOverlay2D.cpp
  Rendering/mitkTextOverlay3D.cpp
  Rendering/mitkLabelOverlay3D.cpp
  Rendering/mitkOverlay2DLayouter.cpp
  Rendering/mitkScaleLegendOverlay

  Common/mitkException.cpp
  Common/mitkCommon.h
  Common/mitkCoreObjectFactoryBase.cpp
  Common/mitkCoreObjectFactory.cpp
  Common/mitkCoreServices.cpp
)

set(RESOURCE_FILES
Interactions/globalConfig.xml
Interactions/DisplayInteraction.xml
Interactions/DisplayConfig.xml
Interactions/DisplayConfigPACS.xml
Interactions/DisplayConfigPACSPan.xml
Interactions/DisplayConfigPACSScroll.xml
Interactions/DisplayConfigPACSZoom.xml
Interactions/DisplayConfigPACSLevelWindow.xml
Interactions/DisplayConfigMITK.xml
Interactions/PointSet.xml
Interactions/Legacy/StateMachine.xml
Interactions/Legacy/DisplayConfigMITKTools.xml
Interactions/PointSetConfig.xml

mitkLevelWindowPresets.xml
)
