
fetch("http://localhost:3000/cars")
.then(x => x.json())
.then(y => cars_megjelenit(y));

function update(){
    setTimeout(function () {
        fetch("http://localhost:3000/cars")
        .then(x => x.json())
        .then(y => cars_megjelenit(y)); 
    }, 100);
}

function cars_megjelenit(adatok){
    console.log(adatok);

    var sz="";
    for (elem of adatok){
        sz+='<tr>';
        sz+='   <td>'+elem.id+'</td>';
        sz+='   <td>'+elem.marka+'</td>';
        sz+='   <td>'+elem.tipus+'</td>';
        sz+='   <td>'+elem.szin+'</td>';
        sz+='   <td>'+elem.gyartasiev+'</td>';
        sz+='   <td>'+elem.ar+'</td>';
        sz+='  </tr>';

    }
    document.getElementById("tablazat").innerHTML=sz;


}








function felvitel_cars(){

    

    var bemenet={

        marka:document.getElementById("marka").value,
        tipus:document.getElementById("tipus").value,
        szin:document.getElementById("szin").value,
        gyartasiev:document.getElementById("gyartasiev").value,
        ar:document.getElementById("ar").value,





    }

    fetch("http://localhost:3000/felvitel_cars", {
        method: "POST",
        body: JSON.stringify(bemenet),
        headers: {"Content-type": "application/json; charset=UTF-8"}
    }
    )
    .then(x => x.text());
}






