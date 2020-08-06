function FlashFade(){
  notices = document.getElementsByClassName("notice");
  for (let notice of notices){
    notice.classList.add("hidden");
  }
  console.log("fadin'");
}

setTimeout(FlashFade,2000);