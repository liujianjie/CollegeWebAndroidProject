/* 文件选择框  start */
		$(function() {
			
			$("input[type=file]").change(
					function() {
						$(this).parents(".uploader").find(".filename").val(
								$(this).val());
					});

			$("input[type=file]").each(
					function() {
						if ($(this).val() == "") {
							$(this).parents(".uploader").find(".filename").val(
									"请选择文件...");
						}
					});

		});
		/* 文件选择框  end*/