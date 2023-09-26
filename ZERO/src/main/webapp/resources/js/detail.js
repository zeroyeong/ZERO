const labelButton = document.querySelectorAll(".teamBtn li label");

labelButton.forEach((t) => {
  t.addEventListener("click", (e) => {
    const target = e.currentTarget;

    labelButton.forEach((t) => t.classList.remove("active"));
    target.classList.add("active");
  });
});
