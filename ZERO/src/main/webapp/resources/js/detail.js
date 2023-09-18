const btn = document.querySelectorAll(".teamBtn li label");

btn.forEach((t) => {
  t.addEventListener("click", (e) => {
    const target = e.currentTarget;

    btn.forEach((t) => t.classList.remove("active"));
    target.classList.add("active");
  });
});
