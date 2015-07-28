this.Page = function (driver) {
  GalenPages.extendPage(this, driver, {
    btn_salvar: "button.salvar"
  });
};
var page = new this.Page(driver);
page.btn_salvar.click();
