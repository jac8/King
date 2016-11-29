function run(msg, matches)
		local text1 = matches[2]
        local text2 = matches[3]
		local url =
"http://www.myfunstudio.com/designs/glt/make?t=Game%0D%0ALetter%0D%0ATiles&ts=1&a=z&s=Classic&l=en&b=d3&c_tb=302209&c_tf=E6ED1F&c_tt=030708&c_nt=FFFFFF&c_d3=54340A&c_bc=41992B&w=500&name=text1&caption=text2&action_ProcessFrm=Update+products"
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

