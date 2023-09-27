const point = document.querySelectorAll("#point");
const Reservation = document.querySelectorAll("#Reservation");
const zCup = document.querySelectorAll("#zCup");
const service= document.querySelectorAll("#service");
const manager = document.querySelectorAll("#manager");

point.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "/zero/branch";
  });
});
Reservation.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "/zero/reservation";
  });
});

zCup.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "/zero/zCup";
  });
});

service.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "/zero/service";
  });
});

manager.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "/zero/manager";
  });
});