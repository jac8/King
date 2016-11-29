function run(msg, matches)
		local text1 = matches[2]
        local text2 = matches[3]
		local url =
""
		 local  file = download_to_file(url,'keep.webp')
			send_document(get_receiver(msg), file, ok_cb, false)

        
end


return {
  description = "تبدیل متن به لوگو",
  usage = {
    "/keep calm font text: ساخت لوگو",
  },
  patterns = {
   "^[/!]([Ff][Uu][Nn]) (.+) (.+)$",
  },
  run = run
}

