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


#include "mitkPlanarFourPointAngle.h"
#include "mitkPlaneGeometry.h"
#define _USE_MATH_DEFINES
#include <math.h>


mitk::PlanarFourPointAngle::PlanarFourPointAngle()
: FEATURE_ID_ANGLE( this->AddFeature( "Angle", "deg" ) )
{
  // Four point angle has two control points
  this->ResetNumberOfControlPoints( 2 );
  this->SetNumberOfPolyLines( 2 );
}


mitk::PlanarFourPointAngle::~PlanarFourPointAngle()
{
}


void mitk::PlanarFourPointAngle::GeneratePolyLine()
{
  this->ClearPolyLines();

  for (unsigned int i = 0; i < this->GetNumberOfControlPoints(); ++i)
    this->AppendPointToPolyLine(i / 2, this->GetControlPoint(i));
}

void mitk::PlanarFourPointAngle::GenerateHelperPolyLine(double /*mmPerDisplayUnit*/, unsigned int /*displayHeight*/)
{
  // Generate helper-poly-line for an four point angle
  // Need to discuss a sensible implementation
}

std::string mitk::PlanarFourPointAngle::EvaluateAnnotation()
{
  double angle = GetQuantity(FEATURE_ID_ANGLE);

  if (!(angle >= 0 || angle < M_PI)) {
    angle = 0;
  }

  char str[20];
  sprintf(str, "%.2f", angle*180/M_PI);
  std::string res = str;
  res += " \xC2\xB0";

  return res;
}

void mitk::PlanarFourPointAngle::EvaluateFeaturesInternal()
{
  if ( this->GetNumberOfControlPoints() < 4 )
  {
    // Angle not yet complete.
    return;
  }

  // Calculate angle between lines
  const Point2D &p0 = this->GetControlPoint( 0 );
  const Point2D &p1 = this->GetControlPoint( 1 );
  const Point2D &p2 = this->GetControlPoint( 2 );
  const Point2D &p3 = this->GetControlPoint( 3 );

  Vector2D v0 = p1 - p0;
  Vector2D v1 = p3 - p2;

  v0.Normalize();
  v1.Normalize();
  double angle = acos( v0 * v1 );

  this->SetQuantity( FEATURE_ID_ANGLE, angle );
}


void mitk::PlanarFourPointAngle::PrintSelf( std::ostream& os, itk::Indent indent) const
{
  Superclass::PrintSelf( os, indent );

}

 bool mitk::PlanarFourPointAngle::Equals(const mitk::PlanarFigure& other) const
 {
   const mitk::PlanarFourPointAngle* otherFourPtAngle = dynamic_cast<const mitk::PlanarFourPointAngle*>(&other);
   if ( otherFourPtAngle )
   {
     return Superclass::Equals(other);
   }
   else
   {
     return false;
   }
 }
