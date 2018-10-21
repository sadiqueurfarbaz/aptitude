/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function initializeScrollbar(){
   var e= document.querySelector('#scroller');
   var ps = new PerfectScrollbar(e, {
        useBothWheelAxes: false,
        suppressScrollX: true
  });
    
}

