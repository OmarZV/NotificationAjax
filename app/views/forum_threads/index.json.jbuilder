json.array! @forum_threads do |forum_thread|
	json.url forum_thread_path(forum_thread)
end