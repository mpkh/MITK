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

//Qmitk headers
#include "QmitkBallModelParametersWidget.h"
#include <itkDiffusionTensor3D.h>

const std::string QmitkBallModelParametersWidget::VIEW_ID = "org.mitk.views.BallModelParametersWidget";

QmitkBallModelParametersWidget::QmitkBallModelParametersWidget( QWidget * parent, Qt::WindowFlags )
    : QWidget(parent)
{
    m_Controls = NULL;
    this->CreateQtPartControl(this);
}

QmitkBallModelParametersWidget::~QmitkBallModelParametersWidget()
{
}

void QmitkBallModelParametersWidget::CreateQtPartControl(QWidget *parent)
{
    if (!m_Controls)
    {
        // create GUI widgets
        m_Controls = new Ui::QmitkBallModelParametersWidgetControls;
        m_Controls->setupUi(parent);
    }
}
