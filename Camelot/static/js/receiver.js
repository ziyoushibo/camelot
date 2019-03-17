/*生成选择收件人的列表*/
let receiverGroup = [{id:678945,name:"郝轲",address:"阿尔及利亚阿尔及利亚"},{id:67866,name:"alien",address:"M-78星云M-78星云M-78星云"},{id:77777,name:"doraAmen",address:"Japanese"}];

for (let i = 0; i < receiverGroup.length; i++) {
  let receContainer = "<div class='selectRec'><button class='btn'>";
      receContainer += receiverGroup[i].name;
      receContainer += "</button><span>";
      receContainer += receiverGroup[i].address;
      receContainer += "</span></div>";
      document.querySelector("#receiverInfo").innerHTML += receContainer;
}
