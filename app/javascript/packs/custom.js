

const oneToTwo = document.getElementById("1-to-2")
const twoToThree = document.getElementById("2-to-3")
const threeToFour = document.getElementById("3-to-4")
const fourToThree = document.getElementById("4-to-3")
const threeToTwo = document.getElementById("3-to-2")
const twoToOne = document.getElementById("3-to-2")


const sectionOne = document.getElementById("section-1")
const sectionTwo = document.getElementById("section-2")
const sectionThree = document.getElementById("section-3")
const sectionFour = document.getElementById("section-4")

if (oneToTwo){
  oneToTwo.addEventListener("click", function(event) {
    sectionOne.classList.toggle("hidden");
    sectionTwo.classList.toggle("hidden");
  });
  
  twoToThree.addEventListener("click", function(event) {
    sectionTwo.classList.toggle("hidden");
    sectionThree.classList.toggle("hidden");
  });
  threeToFour.addEventListener("click", function(event) {
    sectionThree.classList.toggle("hidden");
    sectionFour.classList.toggle("hidden");
  });
  
  fourToThree.addEventListener("click", function(event) {
    sectionFour.classList.toggle("hidden");
    sectionThree.classList.toggle("hidden");
  });
  
  threeToTwo.addEventListener("click", function(event) {
    sectionThree.classList.toggle("hidden");
    sectionTwo.classList.toggle("hidden");
  });
  
  twoToOne.addEventListener("click", function(event) {
    sectionTwo.classList.toggle("hidden");
    sectionOne.classList.toggle("hidden");
  });
}

const showGroupModal = document.getElementById("show-group-modal")

//group script
if (showGroupModal){
  showGroupModal.addEventListener("click", function(event) {
    console.log("opening new form");
    document.getElementById("group-form-modal").classList.remove("minimized");
  });
  
  document.getElementById("hide-group-modal").addEventListener("click", function(event) {
    console.log("opening new form");
    document.getElementById("group-form-modal").classList.add("minimized");
  });
  
}

//group character script

const showCharacterModal = document.getElementById("show-character-modal")

if(showCharacterModal){

  showCharacterModal.addEventListener("click", function(event) {
    console.log("opening new form");
    document.getElementById("character-form-modal").classList.remove("minimized");
  });
  
  document.getElementById("hide-character-modal").addEventListener("click", function(event) {
    console.log("opening new form");
    document.getElementById("character-form-modal").classList.add("minimized");
  });
  

}




//group user script
const showUserModal = document.getElementById("show-user-modal")
const userFormModal = document.getElementById("user-form-modal")
console.log(userFormModal)
if (showUserModal){
  showUserModal.addEventListener("click", function(event) {
    console.log("opening new form");
    userFormModal.classList.remove("minimized");
  });
}

const hideUserModal = document.getElementById("hide-user-modal")
  hideUserModal && hideUserModal.addEventListener("click", function(event) {
    console.log("opening new form");
    document.getElementById("user-form-modal").classList.add("minimized");
  });
  
  
  document.getElementById("nav-toggle").addEventListener("click", function(event) {
    console.log("toggling nav menu");
    document.getElementById("nav-list").classList.toggle("minimized");
  });
  
