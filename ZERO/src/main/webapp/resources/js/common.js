const point = document.querySelectorAll("#point");
const Reservation = document.querySelectorAll("#Reservation");
const zCup = document.querySelectorAll("#zCup");
const customer = document.querySelectorAll("#customer");
const manager = document.querySelectorAll("#manager");

point.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../zero/branch";
  });
});
Reservation.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../zero/reservation";
  });
});

zCup.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../zero/zCup";
  });
});

customer.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../zero/customer";
  });
});

manager.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../zero/manager";
  });
});