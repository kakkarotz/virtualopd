<form action="diseases.php" method="post">
    <div class="form-group">
        <input type="text" style="color: #3292a6;" class="form-control" name="disease" placeholder="Enter Disease Name">
    </div>
    <div class="form-group form-inline">
        <input type="text" id="noof" style="color: #3292a6;" class="form-control" name="noofsymps" placeholder="Enter Number of Symptoms">
        <div class="ml-2 btn btn-dark" onclick="makeInput()" style="opacity: 0.9;">Add</div>
    </div>
    <div id="sympform" class="form-group">
    </div>

    <input type="submit" class="btn btn-dark form-control" value="Add Disease and Symptoms" style="opacity: 0.9;" name="add-submit">
</form>
<script>




    function makeInput(){
        //var noofsymps = localStorage.getItem("noofsymps");

        var noofsymps = document.getElementById('noof').value;
        console.log(noofsymps);

        let sympForm = document.querySelector('#sympform');

        for(let i = 0; i < noofsymps; i++){
            let input = document.createElement('input');
            input.setAttribute("type", "text");
            input.setAttribute("name", "symptom"+i+"");
            input.setAttribute("placeholder", "Enter Symptom Name");
            input.className = 'mt-2 form-control';
            input.style.color = '#3292a6';
            sympForm.appendChild(input);
        }
    }

</script>
