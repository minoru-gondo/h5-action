this.Page = function (driver) {
  GalenPages.extendPage(this, driver, {
    btn_salvar: "button.salvar"
  });
};
var page = new this.Page(driver);
var title = page.btn_salvar.attribute('title');
if(title != '___titulo___')
    throw "O titulo deveria ser ___titulo___ mas está " + title;
