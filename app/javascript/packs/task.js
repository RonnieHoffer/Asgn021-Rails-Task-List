console.log("I am here!")

document.addEventListener("DOMContentLoaded", () => {

    let form = document.querySelector("#new_task");

    form.addEventListener("submit", (e) => {
        e.preventDefault();
        e.stopPropagation();
        console.log("Form submitted.")
    });

});