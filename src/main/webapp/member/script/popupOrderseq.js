/**
 * 
 */$("#btnClose").on("click", function(){
 		self.close();
 	});
 
 	$("#btnEnroll").on("click", function(e){
		let seq_order
 		opener.document.getElementById("seq_order").value = $('input[name="seq_order"]:checked').val();
 		self.close();
 	});
 