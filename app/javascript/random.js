
function hello(){
    console.log("hi");

    // alert("Hello User!");

    const a = Math.floor(Math.random()*10);
    if(a<5){
        document.getElementById("one").style.background="aqua";
    }
    else{
        document.getElementById("one").style.background="red";
    } 
    console.log("completed");
}
hello();
