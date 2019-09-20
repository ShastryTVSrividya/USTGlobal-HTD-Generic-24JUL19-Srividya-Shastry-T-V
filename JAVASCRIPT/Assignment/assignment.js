document.getElementById('formid').innerHTML=
                `    <form action="">
                <div>
                     <label for="Name">First Name</label><br>
                    <input type="text" name="fname" id="fname" required placeholder="enter your name"><br>
                </div>
        
                <div>
                    <label for="Name">Last Name</label><br>
                   <input type="text" name="lname" id="lname" required placeholder="enter your name"><br>
               </div>
                <div>
                     <label>Company NAme</label><br>
                    <input type="text" name="cname" id="cname" required><br>
                
                </div>
                
                <div>
                    <label>Emp ID</label><br>
                    <input type="number" name="em" id="em"><br>
                </div>
                <div>
                    <label>Date Of Joining</label><br>
                    <input type="date" name="dat" id="dat"><br>
                </div>
                <div>
                    <label for="gn">Gender</label><br>
                     <input type="radio" name="gender" id="gn">Male    <!--in radio button input name should be same if we give different name all radio button going to select-->
                     <input type="radio" name="gender" id="gn">Female
                     <input type="radio" name="gender" id="gn">others
                </div>
                
                <h1>skills</h1>
                <div>
                    <input type="checkbox" name="chk" id="ch">Java <br>
                     
               
                        <input type="checkbox" name="chk" id="ch">Sql <br>
                        <!-- <label for="">Sql</label> -->
                         <input type="checkbox" name="chk" id="ch">J2EE <br>
                         <!-- <label for="">J2EE</label> -->
                            <input type="checkbox" name="chk" id="ch">Hibernate <br>
                            <!-- <label for="">Hibernate</label> -->
         </div>
                <br>
                <!-- <input type="submit" value="submit"> -->
                
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
           
                
        </form>
        `;