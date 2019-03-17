

  let shopGroup = [{id:1,name:"京东自营"}];
  let itemGroup = JSON.parse(localStorage.json).data;

// let itemGroup = [{id:666666,name:"无敌寂寞无敌寂寞无敌寂寞无敌寂寞",src:"images/1.jpg",price:"17890.00",order:1234,shopid:1},{id:666123,name:"无敌寂寞无敌寂寞无敌寂寞无敌寂寞",src:"images/2.png",price:"17890.00",order:1234,shopid:1}];


for (let i = 0; i < shopGroup.length; i++) {
	let shopPlusContent = "<div class='shopInfo'><p>";
	shopPlusContent += shopGroup[i].name;
	shopPlusContent += "</p></div>";
	for (let x = 0; x < itemGroup.length; x++) {
		if (itemGroup[x].shopid == shopGroup[i].id) {
			shopPlusContent += "<div class='items'><div class='itemImage'><img src='";
			shopPlusContent += itemGroup[x].src;
			shopPlusContent += "' /></div><div class='itemInfo'>";
			shopPlusContent += itemGroup[x].name;
			shopPlusContent += "</div><div class='itemPrice'>￥";
			shopPlusContent += itemGroup[x].price;
			shopPlusContent += "</div><div class='itemCount'>";
			shopPlusContent += itemGroup[x].order;
			shopPlusContent += "件</div><div class='itemStorage'>充足</div></div>";
		}
	}
	document.getElementById('list').innerHTML += shopPlusContent;
}


/*计算应付总额*/
function calculateAll(){
	let countPrice = 0;
	for (let i = 0; i < itemGroup.length; i++) {
		countPrice += itemGroup[i].price * itemGroup[i].order;
	}
	return countPrice;
}
document.getElementById("listInFinal").childNodes[1].firstChild.childNodes[1].textContent = "￥" + calculateAll();
