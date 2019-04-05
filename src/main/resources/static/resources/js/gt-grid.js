    // specify the columns
    var columnDefs = [
    { headerName: "프로그램목록",
    	children: [
      {headerName: "UNIQUE", field: "idx"},
      {headerName: "화면ID", field: "uiId"},
      {headerName: "화면명", field: "uiName"},
      {headerName: "부문명", field: "partName"},
      {headerName: "업무명", field: "workName"},
      {headerName: "단위업무명", field: "unitWorkName"},
      {headerName: "프로그램ID", field: "programId"},
      {headerName: "프로그램명", field: "programName"},
      {headerName: "소스파일명", field: "sourceFileName"},
      {headerName: "확장자", field: "extension"},
      {headerName: "유형", field: "type"},
      {headerName: "난이도", field: "levelOfDifficulty"},
      {headerName: "개발자", field: "developerName"},
      {headerName: "변경구분", field: "divisionOfChange"},
      {headerName: "변경일자", field: "dateOfChange"},
      {headerName: "배치ID", field: "batchId"},
      {headerName: "인터페이스ID", field: "interfaceId"},
      {headerName: "비고", field: "note"}]
    },
      {
    	  headerName: "개발계획",
    	  children: [
    		  {headerName: "시작일", field: "devPlanStartDate"},
    		  {headerName: "종료일", field: "devPlanEndDate"}
    		  ]
      },
      {
    	  headerName: "개발실적",
    	  children: [
    		  {headerName: "시작일", field: "realDevStartDate"},
    		  {headerName: "종료일", field: "realDevEndDate"}
    		  ]
      },
      {
    	  headerName: "(??)단위테스트",
    	  children: [
      {headerName: "담당자", field: "(??)단위테스트-담당자"},
      {headerName: "계획일", field: "(??)단위테스트-계획일"},
      {headerName: "실적일", field: "(??)단위테스트-실적일"},
      {headerName: "결과", field: "(??)단위테스트-결과"}
      	]
      },
    ];
    
//    // specify the data
//    var rowData = [
//      {순번: "1", 화면ID: "UI-01-01-01"}
//    ];
    	
    // let the grid know which columns and what data to use
    var gridOptions = {
      defaultColDef: {
    	width: 100,
    	resizable: true,
    	sortable: true,
    	animateRows: true
      },
      pagination: true,
      paginationPageSize: 100,
      columnDefs: columnDefs,
//      rowData: rowData,
      multiSortKey: 'ctrl',
//      onRowClicked: function() {					

//    	  }
      rowSelection: 'single',
      onRowClicked: onRowClicked

    };
    
    function onRowClicked() {
        var selectedRows = gridOptions.api.getSelectedRows();
        var selectedRowsString = '';
        selectedRows.forEach( function(selectedRow, index) {
            if (index!==0) {
                selectedRowsString += ', ';
            }
            selectedRowsString += selectedRow.idx;
        });
        
  	  var popUrl = "http://localhost:8080/resultRegistration/?idx="+selectedRowsString;  	  
  	  var popOption = "width=800, height=600, resizable=no, scrollbars=no, status=no,location=no,toolbar=no;";
  	  var newWindow = window.open(popUrl, "singleton", popOption);
    }
    
    function autoSizeAll() {
        var allColumnIds = [];
        gridOptions.columnApi.getAllColumns().forEach(function(column) {
            allColumnIds.push(column.colId);
        });
        gridOptions.columnApi.autoSizeColumns(allColumnIds);
    }
    
    
    

  // lookup the container we want the Grid to use
  var eGridDiv = document.querySelector('#myGrid');

  // create the grid passing in the div to use together with the columns & data we want to use
  new agGrid.Grid(eGridDiv, gridOptions);

  
  fetch('http://localhost:8080/api/rows').then(function(response) {
	    return response.json();
	  }).then(function(data) {
	    gridOptions.api.setRowData(data);
	    autoSizeAll();
	  })
