/**
 * 
 */


/*function addRow() {
         
    var myName = document.getElementById("name");
    var age = document.getElementById("age");
    var table = document.getElementById("tbl_feeStruct");

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);

    row.insertCell(0).innerHTML= '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
    row.insertCell(1).innerHTML= myName.value;
    row.insertCell(2).innerHTML= age.value;

}

function deleteRow(obj) {
     
    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("tbl_feeStruct");
    table.deleteRow(index);
   
}

function addTable() {
     
    var myTableDiv = document.getElementById("myDynamicTable");
     
    var table = document.createElement('TABLE');
    table.border='1';
   
    var tableBody = document.createElement('TBODY');
    table.appendChild(tableBody);
     
    for (var i=0; i<3; i++){
       var tr = document.createElement('TR');
       tableBody.appendChild(tr);
      
       for (var j=0; j<4; j++){
           var td = document.createElement('TD');
           td.width='75';
           td.appendChild(document.createTextNode("Cell " + i + "," + j));
           tr.appendChild(td);
       }
    }
    myTableDiv.appendChild(table);
   
}*/

$(document).ready(function () {
	
      $("#create").click(function () {
    	  $("#tbl_feeStruct").empty();
        $.ajax({
          type: "POST",
          url: 'feesDetailProcess.jsp',
          data: {stateName: $('searchcast').value},
          success: function (result) {
        	  CreateTableFromJSON(result)
          },
          error: function (e) {
            alert('Errore');
          }
        })
      });
    })

function CreateTableFromJSON(result) {
	var myBooks = result;
        //EXTRACT VALUE FOR HTML HEADER. 
        // ('Book ID', 'Book Name', 'Category' and 'Price')
        var col = [];
        for (var i = 0; i < myBooks.length; i++) {
            for (var key in myBooks[i]) {
            	var ar = key.split('_')
            	var k = ar.length > 1 ? ar[0] + " " + ar[1] : ar[0];
                if (col.indexOf(k) === -1) {
                	col.push(k);
                }
            }
        }

        // CREATE DYNAMIC TABLE.
        var table = document.getElementById("tbl_feeStruct");
       // table.border='1';
        // CREATE HTML TABLE HEADER ROW USING THE EXTRACTED HEADERS ABOVE.

        var tr = table.insertRow(-1);                   // TABLE ROW.

        for (var i = 0; i < col.length; i++) {
            var th = document.createElement("th");      // TABLE HEADER.
            th.innerHTML = col[i];
            tr.appendChild(th);
        }

        // ADD JSON DATA TO THE TABLE AS ROWS.
        for (var i = 0; i < myBooks.length; i++) {

            tr = table.insertRow(-1);

            for (var j = 0; j < col.length; j++) {
                var tabCell = tr.insertCell(-1);
                var ar = col[j].split(' ')
            	var k = ar.length > 1 ? ar[0] + "_" + ar[1] : ar[0];
                tabCell.innerHTML = myBooks[i][k];
            }
        }

        // FINALLY ADD THE NEWLY CREATED TABLE WITH JSON DATA TO A CONTAINER.
        var divContainer = document.getElementById("showData");
        divContainer.innerHTML = "";
        divContainer.appendChild(table);
    }

