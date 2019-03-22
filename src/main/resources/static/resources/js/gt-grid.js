    // specify the columns
    var columnDefs = [
      {headerName: "순번", field: ""},
      {headerName: "화면ID", field: "uiId"},
      {headerName: "화면명", field: "화면명"},
      {headerName: "부문명", field: "부문명"},
      {headerName: "업무명", field: "업무명"},
      {headerName: "단위업무명", field: "단위업무명"},
      {headerName: "프로그램ID", field: "프로그램ID"},
      {headerName: "프로그램명", field: "프로그램명"},
      {headerName: "소스파일명", field: "소스파일명"},
      {headerName: "확장자", field: "확장자"},
      {headerName: "유형", field: "유형"},
      {headerName: "난이도", field: "난이도"},
      {headerName: "개발자", field: "developerName"},
      {headerName: "변경구분", field: "변경구분"},
      {headerName: "변경일자", field: "변경일자"},
      {headerName: "배치ID", field: "배치ID"},
      {headerName: "인터페이스ID", field: "인터페이스ID"},
      {headerName: "비고", field: "비고"},
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
    		  {headerName: "시작일", field: "개발실적-시작일"},
    		  {headerName: "종료일", field: "개발실적-종료일"}
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
      paginationPageSize: 10,
      columnDefs: columnDefs,
//      rowData: rowData,
      multiSortKey: 'ctrl',
      onRowClicked: function() {					
    	  var popUrl = "http://localhost:8080/happy";
    	  var popOption = "width=800, height=600, resizable=no, scrollbars=no, status=no;";
    	  var newWindow = window.open(popUrl, "singleton", popOption);}
    };
    
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
	  })
