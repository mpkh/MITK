/*===================================================================

The Medical Imaging Interaction Toolkit (MITK)

Copyright (c) German Cancer Research Center,
Division of Medical and Biological Informatics.
All rights reserved.

This software is distributed WITHOUT ANY WARRANTY; without
even the implied warranty of MERCHANTABILITY or FITNESS FOR
A PARTICULAR PURPOSE.

See LICENSE.txt or http://www.mitk.org for details.

===================================================================*/

#ifndef MITKUSZONESINTERACTOR_H
#define MITKUSZONESINTERACTOR_H

#include <mitkDataInteractor.h>
#include "MitkUSNavigationExports.h"

namespace itk {
  template<class T> class SmartPointer;
}

namespace mitk
{
class DataStorage;
class DataNode;
class Surface;

class MitkUSNavigation_EXPORT USZonesInteractor : public DataInteractor
{
public:
  mitkClassMacro(USZonesInteractor, DataInteractor)
  mitkNewMacro2Param(Self, itk::SmartPointer<DataStorage>, itk::SmartPointer<DataNode>)

protected:
  USZonesInteractor(itk::SmartPointer<DataStorage> dataStorage, itk::SmartPointer<DataNode> baseNode);
  virtual ~USZonesInteractor();

  virtual void ConnectActionsAndFunctions();
  virtual void DataNodeChanged();

  bool AddCenter(StateMachineAction* , InteractionEvent*);
  bool ChangeRadius(StateMachineAction* , InteractionEvent*);
  bool EndCreation(StateMachineAction* , InteractionEvent*);

  itk::SmartPointer<Surface> MakeSphere(const  itk::SmartPointer<DataNode> dataNode, mitk::ScalarType radius) const;

  itk::SmartPointer<DataStorage>  m_DataStorage;
  itk::SmartPointer<DataNode>     m_BaseNode;
  itk::SmartPointer<DataNode>     m_CurrentNode;
};

} // namespace mitk

#endif // MITKUSZONESINTERACTOR_H

