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

#include "QmitkUSAbstractCustomWidget.h"

#include <usPrototypeServiceFactory.h>
#include <usModuleContext.h>

std::string QmitkUSAbstractCustomWidget::US_DEVICE_PROPKEY_CLASS()
{
  static std::string s = "ork.mitk.services.UltrasoundCustomWidget.deviceClass";
  return s;
}

QmitkUSAbstractCustomWidget::QmitkUSAbstractCustomWidget(QWidget* parent)
  : QWidget(parent), m_PrototypeServiceFactory(0), m_IsClonedForQt(false)
{
}

QmitkUSAbstractCustomWidget::~QmitkUSAbstractCustomWidget()
{
  delete m_PrototypeServiceFactory;
}

void QmitkUSAbstractCustomWidget::SetDevice(mitk::USDevice::Pointer device)
{
  m_Device = device;

  if ( device ) { this->OnDeviceSet(); }
}

mitk::USDevice::Pointer QmitkUSAbstractCustomWidget::GetDevice() const
{
  return m_Device;
}

QmitkUSAbstractCustomWidget* QmitkUSAbstractCustomWidget::CloneForQt(QWidget* parent) const
{
  QmitkUSAbstractCustomWidget* clonedWidget = this->Clone(parent);
  clonedWidget->m_IsClonedForQt = true; // set flag that this object was really cloned
  return clonedWidget;
}

us::ServiceRegistration<QmitkUSAbstractCustomWidget> QmitkUSAbstractCustomWidget::RegisterService(us::ModuleContext* context)
{
  if (this->m_PrototypeServiceFactory) { return us::ServiceRegistration<QmitkUSAbstractCustomWidget>(); }

  // create an us::PrototypeServiceFactory which is user on any following call
  // to QmitkUSAbstractCustomWidget::RegisterService(); this factory uses the
  // clone method of the concrete subclass which should be created
  struct PrototypeFactory : public us::PrototypeServiceFactory
  {
    QmitkUSAbstractCustomWidget* const m_Prototype;

    PrototypeFactory(QmitkUSAbstractCustomWidget* prototype)
      : m_Prototype(prototype) {}

    us::InterfaceMap GetService(us::Module* /*module*/, const us::ServiceRegistrationBase& /*registration*/)
    {
      return us::MakeInterfaceMap<QmitkUSAbstractCustomWidget>(m_Prototype->Clone());
    }

    void UngetService(us::Module*, const us::ServiceRegistrationBase&, const us::InterfaceMap& service)
    {
      delete us::ExtractInterface<QmitkUSAbstractCustomWidget>(service);
    }
  };

  m_PrototypeServiceFactory = new PrototypeFactory(this);

  return context->RegisterService<QmitkUSAbstractCustomWidget>(this->m_PrototypeServiceFactory, this->GetServiceProperties());
}

us::ServiceProperties QmitkUSAbstractCustomWidget::GetServiceProperties() const
{
  us::ServiceProperties result;

  result[QmitkUSAbstractCustomWidget::US_DEVICE_PROPKEY_CLASS()] = this->GetDeviceClass();

  return result;
}

void QmitkUSAbstractCustomWidget::showEvent ( QShowEvent * event )
{
  // using object from micro service directly in Qt without cloning it first
  // can cause problems when Qt deletes this object -> throw an exception to
  // show that object should be cloned before
  if ( ! m_IsClonedForQt )
  {
    MITK_ERROR << "Object wasn't cloned with CloneForQt() before using as QWidget.";
    mitkThrow() << "Object wasn't cloned with CloneForQt() before using as QWidget.";
  }

  QWidget::showEvent(event);
}
