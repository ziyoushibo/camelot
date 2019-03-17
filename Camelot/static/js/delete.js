/*定义删除单个商品*/
let deleteGroup = document.getElementsByClassName("delete");
for (let i = 0; i < deleteGroup.length; i++) {
  deleteGroup[i].onclick = function(event){
    let commodityDelete = event.target.parentNode.parentNode.parentNode;
    let checkboxDelete = commodityDelete.childNodes[1].firstChild.firstChild.checked;
    let deleteConfirm = confirm("请问是否确定从购物车删除该商品");
    if(deleteConfirm == true)
    {
      checkboxDelete = false;
      commodityDelete.parentNode.removeChild(commodityDelete);
    }
  }
}

document.getElementById("deleteAll").onclick = function(){
  let checkboxCollection = document.getElementsByName("selectCommodity");
  let checkedCollection = [];
  for (let i = 0; i < checkboxCollection.length; i++) {
    if (checkboxCollection[i].checked) {
      checkedCollection.push(checkboxCollection[i]);
      // checkboxCollection[i].parentNode.parentNode.parentNode.removeChild(checkboxCollection[i].parentNode.parentNode);
    }

    // if (checkboxCollection[i].checked) {
    //   checkedCollection.push(checkedCollection[i]);
    // }
  }
  let confirmDelete = confirm("确定删除选中商品吗？");
  if (confirmDelete == true) {
    for (let i = 0; i < checkedCollection.length; i++) {
      checkedCollection[i].parentNode.parentNode.parentNode.parentNode.removeChild(checkedCollection[i].parentNode.parentNode.parentNode);
    }
    calculateTotalPrice();
  }
}
