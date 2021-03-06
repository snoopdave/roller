/*
* Licensed to the Apache Software Foundation (ASF) under one or more
*  contributor license agreements.  The ASF licenses this file to You
* under the Apache License, Version 2.0 (the "License"); you may not
* use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.  For additional information regarding
* copyright in this work, please see the NOTICE file in the top level
* directory of this distribution.
*/
/*
 * DisplayGroup.java
 *
 * Created on June 4, 2005, 1:10 PM
 */

package org.apache.roller.weblogger.config.runtime;

import java.util.ArrayList;
import java.util.List;

/**
 * Represents a single DisplayGroup.
 * Each DisplayGroup may contain 0 or more PropertyDefs.
 *
 * @author Allen Gilliland
 */
public class DisplayGroup {
    
    private List<PropertyDef> propertyDefs = null;
    private String name = null;
    private String key = null;
    
    
    public DisplayGroup() {
        this.propertyDefs = new ArrayList<>();
    }
    
    public DisplayGroup(List<PropertyDef> propdefs) {
        this.propertyDefs = propdefs;
    }
    
    
    public boolean addPropertyDef(PropertyDef prop) {
        return this.propertyDefs.add(prop);
    }
    
    public boolean removePropertyDef(PropertyDef prop) {
        return this.propertyDefs.remove(prop);
    }
    

    @Override
    public String toString() {
        return name+","+key;
    }
    
    public List<PropertyDef> getPropertyDefs() {
        return propertyDefs;
    }

    public void setPropertyDefs(List<PropertyDef> propertyDefs) {
        this.propertyDefs = propertyDefs;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
    
    
}
