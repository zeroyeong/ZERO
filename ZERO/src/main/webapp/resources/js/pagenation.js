class Pagination {
  constructor(tableSelector, paginationSelector) {
    this.showTable = 10;
    this.table = document.querySelector(tableSelector);
    this.tableRows = this.table.querySelectorAll("tbody tr");
    this.totalTable = this.tableRows.length;
    this.pagination = document.querySelector(paginationSelector);
    this.totalPage = Math.ceil(this.totalTable / this.showTable);
    this.currentPage = 1;

    this.createPaginationButtons();
    this.display(this.currentPage);
  }

  createPaginationButtons() {
    for (let i = 1; i <= this.totalPage; i++) {
      const button = document.createElement("li");
      button.textContent = i;
      button.addEventListener("click", () => this.display(i));
      this.pagination.appendChild(button);
    }
  }

  display(page) {
    const start = (page - 1) * this.showTable;
    const end = start + this.showTable;

    this.tableRows.forEach((row, index) => {
      if (index >= start && index < end) {
        row.style.display = "";
      } else {
        row.style.display = "none";
      }
    });
 
    this.updatePageButtons(page);
  }

  updatePageButtons(page) {
    const buttons = this.pagination.querySelectorAll("li");
    buttons.forEach((button, index) => {
      if (index + 1 === page) {
        button.classList.add("active");
      } else {
        button.classList.remove("active");
      }
    });
  }
}

new Pagination(".faq-table", "#faq-pagination");

new Pagination(".notice-table", "#notice-pagination");