// checkbox功能 checkbox功能 checkbox功能 checkbox功能 checkbox功能 checkbox功能 checkbox功能 checkbox功能 checkbox功能
/*全选框功能*/
let group = document.getElementsByName("selectAll");
let allCheckBox = document.getElementsByClassName("checkbox");
let storeGroup = document.getElementsByName("shopCheck");
let singleCommidityGroup = document.getElementsByName('selectCommodity');

/*全选框功能*/
for (let i = 0; i < group.length; i++) {
    group[i].onclick = function(){
      let status = group[i].checked;
      if (status) {
        for (let s = 0; s < allCheckBox.length; s++) {
          allCheckBox[s].checked = true;
        }
      }
      else{
        for (let s = 0; s < allCheckBox.length; s++) {
          allCheckBox[s].checked = false;
        }
      }
      calculateTotalPrice()
  }
}

/*店铺下商品全选框功能*/
for (let i = 0; i < storeGroup.length; i++) {
    storeGroup[i].onclick = function() {
    let status = storeGroup[i].checked;
    let sss = storeGroup[i].parentNode.parentNode.parentNode.getElementsByClassName("commodity");

    // SSS为从商家复选框到其对应下的所有具体商品的复选框的“映射”的第一个阶段
    for (let q = 0; q < sss.length; q++) {
      if (status) {
          sss[q].childNodes[1].firstChild.firstChild.checked = true;
      }
      else {
          sss[q].childNodes[1].firstChild.firstChild.checked = false;
          let selectAllToChange = document.getElementsByClassName('selectAll');
          for (let s = 0; s < selectAllToChange.length; s++) {
            selectAllToChange[s].checked = false;
          }
      }
    }
    calculateTotalPrice();
}

  // 此处开始验证是否需要修改最大的全选复选框的checked属性
  storeGroup[i].onchange = function() {
    let storeCheckCount = 0;
    for (let m = 0; m < storeGroup.length; m++) {
      if (storeGroup[m].checked == true) {
        storeCheckCount++;
      }
    }
    if (storeCheckCount == storeGroup.length) {
      for (let n = 0; n < group.length; n++) {
        group[n].checked = true;
      }
    }
    calculateTotalPrice()
  }
}

// /*具体某件商品的复选框状态设置*/
function findWhentoChange(){
      let storeCheckCount = 0;
      for (let m = 0; m < storeGroup.length; m++) {
        if (storeGroup[m].checked == true) {
          storeCheckCount++;
        }
      }
      if (storeCheckCount == storeGroup.length) {
        for (let n = 0; n < group.length; n++) {
          group[n].checked = true;
        }
      }
  }


let countForAllNum = 0;
for (let i = 0; i < singleCommidityGroup.length; i++) {
/*统计所选商品总数功能*/
    singleCommidityGroup[i].onchange = function(event) {
      if (event.target.checked == true) {
        countForAllNum ++ ;
      }
      else{
        countForAllNum --;
      }
    document.getElementsByClassName("shoppingCartFinal")[0].childNodes[10].childNodes[1].firstChild.nodeValue = countForAllNum;
  // 具体商品按钮功能
    let commidityCheckCount = 0;
    let commidityContainer = new Array();
    let commidityProjectionFirst = singleCommidityGroup[i].parentNode.parentNode.parentNode.parentNode.getElementsByClassName("commodity");
    if (event.target.checked == false) {
      for (let n = 0; n < group.length; n++) {
        group[n].checked = false;
      }
      event.target.parentNode.parentNode.parentNode.parentNode.firstChild.firstChild.firstChild.checked = false;
    }
    for (let m = 0; m < commidityProjectionFirst.length; m++) {
      let commidityProjectionSecond = commidityProjectionFirst[m].childNodes[1].firstChild.firstChild;
      commidityContainer.push(commidityProjectionSecond);
    }
    for (let m= 0; m < commidityContainer.length; m++) {
      if (commidityContainer[m].checked == true) {
        commidityCheckCount++;
      }
    }
    if (commidityCheckCount == commidityContainer.length) {
      singleCommidityGroup[i].parentNode.parentNode.parentNode.parentNode.firstChild.firstChild.firstChild.checked = true;
      findWhentoChange()
    }
    calculateTotalPrice()
  }
}
