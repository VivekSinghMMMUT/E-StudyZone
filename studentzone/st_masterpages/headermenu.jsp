      <!-- Header div open-->
             <div class="row header">
                <div class="col-sm-3 logo">
                    <img src="../images/elogo.png" height="100"/>
                </div>
                <div class="col-sm-9 title text-center"><br>
                   <span id="spt"><b><span style="color:blue;">E</span>-<span style="color:red;">S</span><span style="color:orange;">t</span><span style="color:blue;">u</span><span style="color:green;">d</span><span style="color:red;">y </span><span style="color:white;opacity: 0.8;">Zone</span></b>
                    </span> <span style="font-size:23px;color: white;opacity: 0.55;"><b>Knowledge @ your doorsteps</b></span>
               </div>
            </div>
            <!-- Header div close-->

      

            <!-- Menu div open-->
               <div class="row menu">
                <nav class="navbar navbar-default">
                    <div class="container-fluid" style="background-color: black;">
                        <!--                         Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="#" class="navbar-brand" style="color:white;font-weight: bold;">Menu</a>
                        </div>

                        <!--                         Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav ">
                                <li class="active"><a href="welcome.jsp" style="color:black;font-weight: bold;"><span class="glyphicon glyphicon-home" style=""></span> &nbsp;&nbsp;Home <span class="sr-only">(current)</span></a></li>
                                <li><a href="feedback.jsp" style="color:white;font-weight: bold;"><span class="glyphicon glyphicon-pencil" style=""></span> &nbsp;&nbsp;Feedback</a></li>
                                <li><a href="uploadstudentmaterial.jsp" style="color:white;font-weight: bold;"><span class="glyphicon glyphicon-upload" style=""></span> &nbsp;&nbsp;Upload</a></li>
                                <li><a href="showadminmaterial.jsp" style="color:white;font-weight: bold;"><span class="glyphicon glyphicon-download-alt" style=""></span> &nbsp;&nbsp;Download</a></li>
                             
                                <li><a href="leave.jsp" style="color:white;font-weight: bold;"><span class="glyphicon glyphicon-level-up" style=""></span> &nbsp;&nbsp;Leave</a></li>
                               
                                <li><a href="logout.jsp" style="color:white;font-weight: bold;"><span style="color: red;font-size: 14pt;font-weight:bold;" class="glyphicon glyphicon-off" title="Logout"></span></a></li>
                               <li class="dropdown">
                                   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog fa-spin" title="More Options" style="font-size:20px;color: #006600;"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="viewprofile.jsp">Profile</a></li>
                                        <li><a href="changapassword.jsp">Change Password</a></li>
                                      

                                    </ul>
                                </li>
                            </ul>
                            <ul style="margin-top: 10px;margin-left: 77%;"><li><a style="color: white;font-size: 15pt;font-weight: bold;"><span class="glyphicon glyphicon-user"></span> &nbsp;<%=session.getAttribute("uname") %></a></li></ul>
                        </div> <!-- /.navbar-collapse -->
                    </div> <!-- /.container-fluid -->
                </nav>

            </div> 
            <!-- Menu div close-->