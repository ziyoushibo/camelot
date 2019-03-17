
function getJson(url){
  let xhr = new XMLHttpRequest();
  xhr.open("GET",url,false);
  xhr.send();
  return JSON.parse(xhr.response);
}


let recomClassGroup = [
{id:1234,name:"Haoke的Q币",src:"images/class1.png"},
{id:123,name:"新鲜的Dingzhiwei",src:"images/class2.png"},
{id:12345,name:"大只的yangweibin",src:"images/class3.jpg"}];

let recomCommGroup = getJson("json/recomClassGroup.json").data;


if (recomCommGroup.length == 0) {
  document.querySelector(".recommend").innerHTML += "<div class='alertInfo'>“暂无可推荐商品，快去购物吧”</div>";
}
else {
  for (let i = 0; i < recomClassGroup.length; i++) {
    let classInfoObj = "<div class='commodityType'><div class='adItemCaption'><a href='#'><img src='";
    classInfoObj += recomClassGroup[i].src;
    classInfoObj += "' /></a><a href='#'>";
    classInfoObj += recomClassGroup[i].name;
    classInfoObj += "</a><p>";
    classInfoObj += recomClassGroup[i].id;
    classInfoObj += "</p><i>Ha:)Ha:)Ha:)</i>";
    classInfoObj += "</div><ul>";

    let recomCommInfoObjContainer = "";
    for (let x = 0; x < recomCommGroup.length; x++) {
      if (recomCommGroup[x].classid == recomClassGroup[i].id) {
        let recomCommInfoObj = "<li><img src='";
        recomCommInfoObj += recomCommGroup[x].src;
        recomCommInfoObj += "' /><div class='adItemName'><a style='text-decoration: none;' href='#'>";
        recomCommInfoObj += recomCommGroup[x].info;
        recomCommInfoObj += "</a></div><div class='adItemInfo'><span><i>￥</i><p>";
        recomCommInfoObj += recomCommGroup[x].price;
        recomCommInfoObj += "</p></span><a href='#' ><i class='fa fa-shopping-bag' aria-hidden='true'></i></a></div></li>";
        recomCommInfoObjContainer += recomCommInfoObj;
      }

    }
    document.querySelector(".recommend").innerHTML += classInfoObj + recomCommInfoObjContainer;

  }
}
