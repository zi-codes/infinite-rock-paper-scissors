const button = document.getElementById("two_more");
const extraForm = document.getElementById("more_options");

button.onclick = function() {

  createField();
  createField();

  // extraForm.appendChild('<input class="button" type="text" name="weapons[]"><input class="button" type="text" name="weapons[]">')

};

const createField = () => {
  let input = document.createElement("INPUT")
  input.type = "text"
  input.className = "button"
  input.name = "weapons[]"
  extraForm.appendChild(input)
}
