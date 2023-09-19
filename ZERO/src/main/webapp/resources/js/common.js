const point = document.querySelectorAll("#point");
const reservation = document.querySelectorAll("#reservation");
const zCup = document.querySelectorAll("#zCup");
const customer = document.querySelectorAll("#customer");
const manager = document.querySelectorAll("#manager");

point.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../controller/point";
  });
});

reservation.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../controller/reservation";
  });
});

zCup.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../controller/zCup";
  })
});

customer.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../controller/service";
  });
});

manager.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../controller/manager";
  });
});

