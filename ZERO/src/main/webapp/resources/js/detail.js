const labelButton = document.querySelectorAll(".teamBtn li label");

labelButton.forEach((t) => {
  t.addEventListener("click", (e) => {
    const target = e.currentTarget;

    labelButton.forEach((t) => t.classList.remove("active"));
    target.classList.add("active");
  });
});


function showPlayInfo(label) {
  let idName = label.getAttribute('for');

  let coverLabel = document.querySelector(`label.${idName}`);
  let playInfo = document.querySelector(`section.${idName}`);
  let closeBtn = document.querySelector(`section.${idName} label.closeBtn`);

  coverLabel.style.display = 'block';
  playInfo.style.display = 'block';

  closeBtn.addEventListener('click', function () {
    playInfo.style.display = 'none';
    coverLabel.style.display = 'none';
  });

  coverLabel.addEventListener('click', function () {
    payInfo.style.display = 'none';
    coverLabel.style.display = 'none';
  });
}