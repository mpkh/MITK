SET(SRC_CPP_FILES
  QmitkODFDetailsWidget.cpp
  QmitkODFRenderWidget.cpp
  QmitkPartialVolumeAnalysisWidget.cpp
  QmitkIVIMWidget.cpp
)

SET(INTERNAL_CPP_FILES
  mitkPluginActivator.cpp
  QmitkQBallReconstructionView.cpp
  QmitkPreprocessingView.cpp
  QmitkDiffusionDicomImportView.cpp
  QmitkDiffusionQuantificationView.cpp
  QmitkTensorReconstructionView.cpp
  QmitkDiffusionImagingPublicPerspective.cpp
  QmitkControlVisualizationPropertiesView.cpp
  QmitkODFDetailsView.cpp
  QmitkGibbsTrackingView.cpp
  QmitkFiberBundleOperationsView.cpp
  QmitkFiberBundleDeveloperView.cpp
  QmitkPartialVolumeAnalysisView.cpp
  QmitkIVIMView.cpp
)

SET(UI_FILES
  src/internal/QmitkQBallReconstructionViewControls.ui
  src/internal/QmitkPreprocessingViewControls.ui
  src/internal/QmitkDiffusionDicomImportViewControls.ui
  src/internal/QmitkDiffusionQuantificationViewControls.ui
  src/internal/QmitkTensorReconstructionViewControls.ui
  src/internal/QmitkControlVisualizationPropertiesViewControls.ui
  src/internal/QmitkODFDetailsViewControls.ui
  src/internal/QmitkGibbsTrackingViewControls.ui
  src/internal/QmitkFiberBundleOperationsViewControls.ui
  src/internal/QmitkFiberBundleDeveloperViewControls.ui
  src/internal/QmitkPartialVolumeAnalysisViewControls.ui
  src/internal/QmitkIVIMViewControls.ui
)

SET(MOC_H_FILES
  src/internal/mitkPluginActivator.h
  src/internal/QmitkQBallReconstructionView.h
  src/internal/QmitkPreprocessingView.h
  src/internal/QmitkDiffusionDicomImportView.h
  src/internal/QmitkDiffusionImagingPublicPerspective.h
  src/internal/QmitkDiffusionQuantificationView.h
  src/internal/QmitkTensorReconstructionView.h
  src/internal/QmitkControlVisualizationPropertiesView.h
  src/internal/QmitkODFDetailsView.h
  src/QmitkODFRenderWidget.h
  src/QmitkODFDetailsWidget.h
  src/internal/QmitkGibbsTrackingView.h
  src/internal/QmitkFiberBundleOperationsView.h
  src/internal/QmitkFiberBundleDeveloperView.h
  src/internal/QmitkPartialVolumeAnalysisView.h
  src/QmitkPartialVolumeAnalysisWidget.h
  src/internal/QmitkIVIMView.h
)

SET(CACHED_RESOURCE_FILES
# list of resource files which can be used by the plug-in
# system without loading the plug-ins shared library,
# for example the icon used in the menu and tabs for the
# plug-in views in the workbench
  plugin.xml

  resources/preprocessing.png
  resources/dwiimport.png
  resources/quantification.png
  resources/reconodf.png
  resources/recontensor.png
  resources/vizControls.png
  resources/OdfDetails.png
  resources/GibbsTracking.png
  resources/FiberBundleOperations.png
  resources/PartialVolumeAnalysis_24.png
  resources/IVIM_48.png
)

SET(QRC_FILES
# uncomment the following line if you want to use Qt resources
  resources/QmitkDiffusionImaging.qrc
)

SET(CPP_FILES )

foreach(file ${SRC_CPP_FILES})
  SET(CPP_FILES ${CPP_FILES} src/${file})
endforeach(file ${SRC_CPP_FILES})

foreach(file ${INTERNAL_CPP_FILES})
  SET(CPP_FILES ${CPP_FILES} src/internal/${file})
endforeach(file ${INTERNAL_CPP_FILES})

