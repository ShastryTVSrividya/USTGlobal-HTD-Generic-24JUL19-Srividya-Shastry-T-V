document.getElementById('form').innerHTML= `
<div>
<label for="">Name:</label><br>
<input type="text" name="username" id="username" required placeholder="enter ur name">
</div><br>
<div>
    <label for="">Age:</label><br>
    <input type="number" name="age" id="age" required placeholder="enter ur age">
   </div><br>
<div>
   <label for="">Gender</label>
   <input type="radio" name="gen" value="gen">Male
   <input type="radio" name="gen" value="gen">Female
   <input type="radio" name="gen" value="gen">Others
</div><br>
    <div>
            <label for="">Date Of Birth:</label><br>
            <input type="date" name="dob" id="dob" required placeholder="enter ur dob">
           </div>
       <div><br>
   <label for="">Address:</label><br>
   <input type="text" name="ads" id="ads" required placeholder="enter ur address">
</div><br>
</div>
<div>
<label for="">Email:</label><br>
   <input type="email" name="em" id="em" required placeholder="enter ur email">
</div><br>

<h3>skills</h3>
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
<button type="submit">Submit </button>
<button type="reset"> Reset</button>
`