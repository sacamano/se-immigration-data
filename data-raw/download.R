# Download data from migrationsverket.se
download_data <- function() {
  idxes <- c("2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017")
  urls <- list()
  
  # Data for 2009
  urls[["2009"]][["asylum-applications"]] <- c(
    "pdf", "https://www.migrationsverket.se/download/18.5e83388f141c129ba6312ae5/1485556224967/Inkomna+ans%C3%B6kningar+om+asyl+hel%C3%A5ret+2009.pdf")
  urls[["2009"]][["asylum-decisions"]] <- c(
    "pdf", "https://www.migrationsverket.se/download/18.5e83388f141c129ba6312c4d/1485556225285/Avgjorda+asyl%C3%A4renden+hel%C3%A5ret++2009.pdf")
  urls[["2009"]][["enrolls-at-mb-recp-centers"]] <- c(
    "pdf", "https://www.migrationsverket.se/download/18.5e83388f141c129ba6312ae6/1485556224959/Inskrivna+i+Migrationsverkets+mottagningssystem+091231.pdf")
  urls[["2009"]][["granted-work-permits"]] <- c(
    "pdf", "https://www.migrationsverket.se/download/18.5e83388f141c129ba6312c5f/1485556225532/Beviljade+arbetstillst%C3%A5nd+hel%C3%A5ret+2009.pdf")
  urls[["2009"]][["residence-permits-rights"]] <- c(
    "pdf", "https://www.migrationsverket.se/download/18.5e83388f141c129ba6312ae7/1485556224943/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+hel%C3%A5ret+2009.pdf")
  
  # Data for 2010
  urls[["2010"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63127eb/1485556221231/Inkomna+ans%C3%B6kningar+om+asyl+2010.xls")
  urls[["2010"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63137df/1485556232914/Beviljade+f%C3%B6rstag%C3%A5ngstillst%C3%A5nd+och+uppeh%C3%A5llsr%C3%A4tter+2010.xls")
  
  # Data for 2011
  urls[["2011"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba6312c98/1485556225097/Asyls%C3%B6kande+2011+-+Asylumseekers+2011.xls")
  urls[["2011"]][["asylum-decisions"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63131ea/1485556229897/Avgjorda+asyl%C3%A4renden+2011+-+Asylum+decisions+2011.xls")
  urls[["2011"]][["enrolls-at-mb-recp-centers"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63131e6/1485556229943/Inskrivna+personer+i+Migrationsverkets+mottagningssystem+-+Persons+with+accommodations+in+the+SMB%C2%B4s+reception+system.xls")
  urls[["2011"]][["granted-work-permits"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63131e9/1485556229911/Beviljade+arbetstillst%C3%A5nd+2011+-+Work+permits+granted+2011.xls")
  urls[["2011"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63131e8/1485556229904/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+och+registrerade+uppeh%C3%A5llsr%C3%A4tter+2011+-+Residence+permits+granted+2011.xls")
  
  # Data for 2012
  urls[["2012"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63128bf/1485556220639/Inkomna+ans%C3%B6kningar+om+asyl+2012+-+Applications+for+asylum+received+2012.xls")
  urls[["2012"]][["asylum-decisions"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63128c1/1485556220688/Avgjorda+asyl%C3%A4renden+2012+-+Asylum+decisions+2012.xls")
  urls[["2012"]][["enrolls-at-mb-recp-centers"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63128bc/1485556220708/Inskrivna+personer+i+Migrationsverkets+mottagningssystem+-+persons+with+accommodations+in+the+Swedish+Migration+Board%C2%B4s+reception+system.xls")
  urls[["2012"]][["ppl-recv-municip"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63136b8/1485556232184/Kommunmottagna+enligt+ers%C3%A4ttningsf%C3%B6rordningen+2012.xls")
  urls[["2012"]][["granted-work-permits"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63128c7/1485556220701/Beviljade+arbetstillst%C3%A5nd+2012+-+Work+permits+granted+2012.xls")
  urls[["2012"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.5e83388f141c129ba63136cc/1485556232211/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+och+registrerade+uppeh%C3%A5llsr%C3%A4tter+2012.xls")
  
  # Data for 2013
  urls[["2013"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166ddaf/1485556207411/Inkomna+ans%C3%B6kningar+om+asyl+2013+-+Applications+for+asylum+received+2013.xls")
  urls[["2013"]][["asylum-decisions"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166dda9/1485556207572/Avgjorda+asyl%C3%A4renden+2013+-+Asylum+desicions+2013.xls")
  urls[["2013"]][["enrolls-at-mb-recp-centers"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166ddb1/1485556207385/Inskrivna+personer+i+Migrationsverkets+mottagningssystem.xls")
  urls[["2013"]][["ppl-recv-municip"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166dda5/1485556207496/Kommunmottagna+enligt+ersattningsf%C3%B6rordningen+2013.xls")
  urls[["2013"]][["granted-work-permits"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166ddab/1485556207441/Beviljade+arbetstillst%C3%A5nd+2013+-+Work+permits+granted+2013.xls")
  urls[["2013"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166ddad/1485556207425/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+och+registrerade+uppeh%C3%A5llsr%C3%A4tter+2013.xls")
  
  # Data for 2014
  urls[["2014"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.39a9cd9514a346077211b0b/1485556218206/Inkomna+ans%C3%B6kningar+om+asyl+2014+-+Applications+for+asylum+received+2014.xls")
  urls[["2014"]][["asylum-decisions"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.39a9cd9514a346077211b05/1485556219003/Avgjorda+asyl%C3%A4renden+2014+-+Asylum+desicions+2014.xls")
  urls[["2014"]][["enrolls-at-mb-recp-centers"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.39a9cd9514a346077211b0d/1485556218246/Inskrivna+personer+i+Migrationsverkets+mottagningssystem+2014.xls")
  urls[["2014"]][["ppl-recv-municip"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.39a9cd9514a346077211b0f/1485556218329/Kommunmottagna+enligt+ersattningsf%C3%B6rordningen+2014.xls")
  urls[["2014"]][["granted-work-permits"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.39a9cd9514a346077211b07/1485556219051/Beviljade+arbetstillst%C3%A5nd+2014+-+Work+permits+granted+2014.xls")
  urls[["2014"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.39a9cd9514a346077211b09/1485556218888/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+och+registrerade+uppeh%C3%A5llsr%C3%A4tter+2014.xls")
  
  # Data for 2015
  urls[["2015"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166d1aa8/1485556214907/Inkomna+ans%C3%B6kningar+om+asyl+2015+-+Applications+for+asylum+received+2015.xls")
  urls[["2015"]][["asylum-decisions"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166d331b/1485556216931/Avgjorda+asyl%C3%A4renden+2015+-+Asylum+desicions+2015.xls")
  urls[["2015"]][["enrolls-at-mb-recp-centers"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.2d998ffc151ac38715930c2/1485556219348/Inskrivna+personer+i+Migrationsverkets+mottagningssystem.xls")
  urls[["2015"]][["ppl-recv-municip"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.39a9cd9514a3460772133ef/1485556228979/Kommunmottagna+enligt+ersattningsf%C3%B6rordningen+2015.xls")
  urls[["2015"]][["granted-work-permits"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166d1aaf/1485556214913/Beviljade+arbetstillst%C3%A5nd+2015+-+Work+permits+granted+2015.xls")
  urls[["2015"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166d1ab1/1485556214893/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+och+registrerade+uppeh%C3%A5llsr%C3%A4tter+2015.xls")
  urls[["2015"]][["unaccm-minors-instruct"]] <- c(
    "xlsx", "https://www.migrationsverket.se/download/18.2d998ffc151ac387159578b/1485556209378/Anvisningar+till+kommuner+av+ensamkommande+barn+2015.xlsx")
  
  # Data for 2016
  urls[["2016"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.2d998ffc151ac387159255e/1485556054245/Inkomna+ans%C3%B6kningar+om+asyl+2016+-+Applications+for+asylum+received+2016.xls")
  urls[["2016"]][["asylum-decisions"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.2d998ffc151ac3871592562/1485556054293/Avgjorda+asyl%C3%A4renden+2016+-+Asylum+decisions+2016.xls")
  urls[["2016"]][["enrolls-at-mb-recp-centers"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.7c00d8e6143101d166d7db/1485556053942/Inskrivna+personer+i+Migrationsverkets+mottagningssystem.xls")
  urls[["2016"]][["ppl-recv-municip"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.2d998ffc151ac38715917b21/1485959153470/Kommunmottagna+enligt+ers%C3%A4ttningsf%C3%B6rordningen+2016.xls")
  urls[["2016"]][["granted-work-permits"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.2d998ffc151ac387159256b/1485556054252/Beviljade+arbetstillst%C3%A5nd+2016+-+Work+permits+granted+2016.xls")
  urls[["2016"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.2d998ffc151ac3871591921d/1485556050931/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+2016.xls")
  urls[["2016"]][["unaccm-minors-instruct"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.585fa5be158ee6bf362ede/1485556062916/Anvisningar+av+ensamkommande+barn+till+kommuner+2016.xlsx")
  
  # Data for 2017
  urls[["2017"]][["asylum-applications"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.4100dc0b159d67dc614773c/1496308335544/Inkomna+ans%C3%B6kningar+om+asyl+2017+-+Applications+for+asylum+received+2017.xls")
  urls[["2017"]][["asylum-decisions"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.4100dc0b159d67dc6147739/1496308335467/Avgjorda+asyl%C3%A4renden+2017+-+Asylum+decisions+2017.xls")
  urls[["2017"]][["enrolls-at-mb-recp-centers"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.4100dc0b159d67dc614773d/1496308335574/Inskrivna+personer+i+Migrationsverkets+mottagningssystem.xls")
  urls[["2017"]][["ppl-recv-municip"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.4100dc0b159d67dc614773f/1496308335651/Kommunmottagna+enligt+ers%C3%A4ttningsf%C3%B6rordningen+2017.xls")
  urls[["2017"]][["granted-work-permits"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.4100dc0b159d67dc614773a/1496308335496/Beviljade+arbetstillst%C3%A5nd+2017+-+Work+permits+granted+2017.xls")
  urls[["2017"]][["residence-permits-rights"]] <- c(
    "xls", "https://www.migrationsverket.se/download/18.4100dc0b159d67dc614773b/1496308335527/Beviljade+uppeh%C3%A5llstillst%C3%A5nd+2017.xls")
  urls[["2017"]][["unaccm-minors-instruct"]] <- c(
    "xlsx", "https://www.migrationsverket.se/download/18.2d998ffc151ac38715914722/1497249098780/M%C3%A5luppfyllelse+anvisningar.xlsx")
  
  #   "xls", "")
  # urls[[""]][["asylum-applications"]] <- c(
  # urls[[""]][["asylum-decisions"]] <- c(
  # urls[[""]][["enrolls-at-mb-recp-centers"]] <- c(
  # urls[[""]][["ppl-recv-municip"]] <- c(
  # urls[[""]][["granted-work-permits"]] <- c(
  # urls[[""]][["residence-permits-rights"]] <- c(
  # urls[[""]][["unaccm-minors-instruct"]] <- c(
  
  dlder <- function(i) {
    # is.null(testy[["hmsdm"]]) 
    ddatasets <- c(
      "asylum-applications",
      "asylum-decisions",
      "enrolls-at-mb-recp-centers",
      "ppl-recv-municip",
      "granted-work-permits",
      "residence-permits-rights",
      "unaccm-minors-instruct"
    )
    
    for (n in 1:length(ddatasets)) {
      dset <- ddatasets[[n]]
      if (!is.null(urls[[i]][[dset]])) {
        fext <- urls[[i]][[dset]][1]
        fname <- paste0("data-raw/migrationsverket/", as.character(i), "_", dset, ".", fext)
        dlurl <- urls[[i]][[dset]][2]
        download.file(dlurl, fname)
      }
    }
    
  }
  
  if (!dir.exists("data-raw/migrationsverket")) { dir.create("data-raw/migrationsverket", recursive = TRUE) }
  lapply(idxes, dlder)
}
