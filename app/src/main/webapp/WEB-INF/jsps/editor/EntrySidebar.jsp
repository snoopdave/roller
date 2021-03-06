<%--
  Licensed to the Apache Software Foundation (ASF) under one or more
   contributor license agreements.  The ASF licenses this file to You
  under the Apache License, Version 2.0 (the "License"); you may not
  use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.  For additional information regarding
  copyright in this work, please see the NOTICE file in the top level
  directory of this distribution.
--%>
<%@ include file="/WEB-INF/jsps/taglibs-struts2.jsp" %>

<div class="sidebarFade">
    <div class="menu-tr">
        <div class="menu-tl">
            
            <div class="sidebarInner">

                <%-- comments on this entry --%>
                
                <h3><s:text name="weblogEdit.comments" /></h3>

                <s:if test="bean.commentCount > 0">
                    <s:url action="comments" var="commentsURL">
                       <s:param name="bean.entryId" value="bean.id" />
                       <s:param name="weblog" value="weblog" />
                    </s:url>
                    <s:text name="weblogEdit.hasComments">
                        <s:param value="%{commentsURL}" />
                        <s:param value="bean.commentCount" />
                    </s:text>
                </s:if>
                <s:else>
                    <span><s:text name="generic.none" /></span>
                </s:else>

                <%-- pending entries --%>
                    
                <hr size="1" noshade="noshade" />  
                <h3><s:text name="weblogEdit.pendingEntries" /></h3>
                
                <s:set var="pendingEntries" value="recentPendingEntries" />
                <s:if test="#pendingEntries.isEmpty">
                    <span><s:text name="generic.none" /></span>
                </s:if>
                <s:iterator var="post" value="#pendingEntries">
                    <span class="entryEditSidebarLink">
                        <s:url var="editUrl" action="entryEdit">
                            <s:param name="weblog" value="%{actionWeblog.handle}" />
                            <s:param name="bean.id" value="#post.id" />
                        </s:url>
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"> </span> 
                        <s:a href="%{editUrl}"><str:truncateNicely lower="40">
                             <s:property value="#post.title" /></str:truncateNicely></s:a>
                    </span><br />
                </s:iterator>

                <%-- draft entries --%>
                
                <hr size="1" noshade="noshade" />            
                <h3><s:text name="weblogEdit.draftEntries" /></h3>
                
                <s:set var="draftEntries" value="recentDraftEntries" />
                <s:if test="#draftEntries.isEmpty">
                    <span><s:text name="generic.none" /></span>
                </s:if>
                <s:iterator var="post" value="#draftEntries">
                    <span class="entryEditSidebarLink">
                        <s:url var="editUrl" action="entryEdit">
                            <s:param name="weblog" value="%{actionWeblog.handle}" />
                            <s:param name="bean.id" value="#post.id" />
                        </s:url>
                        <span class="glyphicon glyphicon-edit" aria-hidden="true"> </span> 
                        <s:a href="%{editUrl}"><str:truncateNicely lower="40">
                             <s:property value="#post.title" /></str:truncateNicely></s:a>
                    </span><br />
                </s:iterator>
                
                
                <s:if test="userAnAuthor">

                    <%-- published entries --%>

                    <hr size="1" noshade="noshade" />
                    <h3><s:text name="weblogEdit.publishedEntries" /></h3>
                    
                    <s:set var="pubEntries" value="recentPublishedEntries" />
                    <s:if test="#pubEntries.isEmpty">
                        <span><s:text name="generic.none" /></span>
                    </s:if>
                    <s:iterator var="post" value="#pubEntries">
                        <span class="entryEditSidebarLink">
                            <s:url var="editUrl" action="entryEdit">
                                <s:param name="weblog" value="%{actionWeblog.handle}" />
                                <s:param name="bean.id" value="#post.id" />
                            </s:url>
                            <span class="glyphicon glyphicon-book" aria-hidden="true"> </span> 
                            <s:a href="%{editUrl}"><str:truncateNicely lower="40">
                                <s:property value="#post.title" /></str:truncateNicely></s:a>
                        </span><br />
                    </s:iterator>


                    <%-- scheduled entries --%>

                    <hr size="1" noshade="noshade" />            
                    <h3><s:text name="weblogEdit.scheduledEntries" /></h3>
                    
                    <s:set var="schedEntries" value="recentScheduledEntries" />
                    <s:if test="#schedEntries.isEmpty">
                        <span><s:text name="generic.none" /></span>
                    </s:if>
                    <s:iterator var="post" value="#schedEntries">
                        <span class="entryEditSidebarLink">
                            <s:url var="editUrl" action="entryEdit">
                                <s:param name="weblog" value="%{actionWeblog.handle}" />
                                <s:param name="bean.id" value="#post.id" />
                            </s:url>
                            <span class="glyphicon glyphicon-time" aria-hidden="true"> </span>
                            <s:a href="%{editUrl}"><str:truncateNicely lower="40">
                                <s:property value="#post.title" /></str:truncateNicely></s:a>
                        </span><br />
                    </s:iterator>
                    
                </s:if>
                
                <br />
                <br />
            </div>
            
        </div>
    </div>
</div>
