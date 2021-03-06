/*=============================================================================

  Library: CppMicroServices

  Copyright (c) German Cancer Research Center,
    Division of Medical and Biological Informatics

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

=============================================================================*/


#ifndef USMODULEINFO_H
#define USMODULEINFO_H

#include <usCoreConfig.h>

#include <string>
#include <vector>

#ifdef _MSC_VER
# pragma warning(push)
# pragma warning(disable: 4251)
#endif

US_BEGIN_NAMESPACE

struct ModuleActivator;

/**
 * This class is not intended to be used directly. It is exported to support
 * the CppMicroServices module system.
 */
struct US_Core_EXPORT ModuleInfo
{
  ModuleInfo(const std::string& name, const std::string& libName);

  typedef ModuleActivator*(*ModuleActivatorHook)(void);
  typedef int(*InitResourcesHook)(ModuleInfo*);
  typedef const unsigned char* ModuleResourceData;

  std::string name;
  std::string libName;

  std::string location;

  std::string autoLoadDir;

  long id;

  ModuleActivatorHook activatorHook;

  // In case of statically linked (imported) modules, there could
  // be more than one set of ModuleResourceData pointers. We aggregate
  // all pointers here.
  std::vector<ModuleResourceData> resourceData;
  std::vector<ModuleResourceData> resourceNames;
  std::vector<ModuleResourceData> resourceTree;
};

US_END_NAMESPACE

#ifdef _MSC_VER
# pragma warning(pop)
#endif

#endif // USMODULEINFO_H
