class Forum_Threads
	constructor: ->
		@forum_threads = $("[data-behavior='forum_threads']")


	setup: ->
		$.ajax(
			url:"/forum_threads.json"
			dataType: "JSON"
			method: "GET"
			success: @handleSuccess
		)


	handleSuccess: (data) =>
		items = $.map data, (forum_thread) ->
			"<p class='item' href='#{forum_thread.url}'></p>"
		$("[data-behavior='forum_thread-items']").html(items)



jQuery ->
	new Forum_Threads