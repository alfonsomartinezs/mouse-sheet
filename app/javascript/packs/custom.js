function FlashFade(){
  notices = document.getElementsByClassName("notice");
  for (let notice of notices){
    notice.classList.add("hidden");
  }
  console.log("fadin'");
}

setTimeout(FlashFade,2000);


console.log("you're in the right place.")

$('#1-to-2').on("click",function(event){
  console.log("moving to 2");
  $('#section-1').toggleClass('hidden');
  $('#section-2').toggleClass('hidden');
});
$('#2-to-3').on("click",function(event){
  console.log("moving to 3");
  $('#section-2').toggleClass('hidden');
  $('#section-3').toggleClass('hidden');
});
$('#3-to-4').on("click",function(event){
  console.log("moving to 4");
  $('#section-3').toggleClass('hidden');
  $('#section-4').toggleClass('hidden');
});

$('#4-to-3').on("click",function(event){
  console.log("moving to 2");
  $('#section-4').toggleClass('hidden');
  $('#section-3').toggleClass('hidden');
});

$('#3-to-2').on("click",function(event){
  console.log("moving to 2");
  $('#section-3').toggleClass('hidden');
  $('#section-2').toggleClass('hidden');
});


$('#2-to-1').on("click",function(event){
  console.log("moving to 2");
  $('#section-1').toggleClass('hidden');
  $('#section-2').toggleClass('hidden');
});