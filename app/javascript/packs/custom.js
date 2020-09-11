console.log("you're in the right place.");

$("#1-to-2").on("click", function(event) {
  console.log("moving to 2");
  $("#section-1").toggleClass("hidden");
  $("#section-2").toggleClass("hidden");
});
$("#2-to-3").on("click", function(event) {
  console.log("moving to 3");
  $("#section-2").toggleClass("hidden");
  $("#section-3").toggleClass("hidden");
});
$("#3-to-4").on("click", function(event) {
  console.log("moving to 4");
  $("#section-3").toggleClass("hidden");
  $("#section-4").toggleClass("hidden");
});

$("#4-to-3").on("click", function(event) {
  console.log("moving to 2");
  $("#section-4").toggleClass("hidden");
  $("#section-3").toggleClass("hidden");
});

$("#3-to-2").on("click", function(event) {
  console.log("moving to 2");
  $("#section-3").toggleClass("hidden");
  $("#section-2").toggleClass("hidden");
});

$("#2-to-1").on("click", function(event) {
  console.log("moving to 2");
  $("#section-1").toggleClass("hidden");
  $("#section-2").toggleClass("hidden");
});

//group script
$("#show-group-modal").on("click", function(event) {
  console.log("opening new form");
  $("#group-form-modal").removeClass("minimized");
});

$("#hide-group-modal").on("click", function(event) {
  console.log("opening new form");
  $("#group-form-modal").addClass("minimized");
});

//group character script
$("#show-character-modal").on("click", function(event) {
  console.log("opening new form");
  $("#character-form-modal").removeClass("minimized");
});

$("#hide-character-modal").on("click", function(event) {
  console.log("opening new form");
  $("#character-form-modal").addClass("minimized");
});

//group user script
$("#show-user-modal").on("click", function(event) {
  console.log("opening new form");
  $("#user-form-modal").removeClass("minimized");
});

$("#hide-user-modal").on("click", function(event) {
  console.log("opening new form");
  $("#user-form-modal").addClass("minimized");
});

console.log("groupsss");
