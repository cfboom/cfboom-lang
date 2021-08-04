/*
 * Copyright 2011-2021 the original author or authors and Joel Tobey
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @cfboom Joel Tobey
 */
component
  extends="coldbox.system.testing.BaseTestCase"
  appMapping="/root"
  displayname="Class ObjectTests"
  output="false"
{
  public void function testEquality() {
    var object1 = new cfboom.lang.Object();
    var object2 = new cfboom.lang.Object();
    var object3 = object1;
    assertFalse(object1.equals(object2));
    assertFalse(object2.equals(object1));
    assertFalse(object2.equals(object3));
    assertTrue(object1.equals(object3));
    assertTrue(object3.equals(object1));
  }

  public void function testComponentName() {
    var obj = new cfboom.lang.Object();
    assertEqualsCase("cfboom.lang.Object", obj.getComponentName());
  }

  public void function testHashCode() {
    var obj = new cfboom.lang.Object();
    assertEquals(0, obj.hashCode());
  }
}