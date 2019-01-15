
datafiles <- fs::dir_ls(here::here("data"))
plotfiles <- fs::dir_ls(here::here("figs"))

dirs <- c(here::here("data"), here::here("figs")) %>%
  purrr::keep(., fs::dir_exists(.))
#purrr::flatten_chr()
fs::dir_ls(dirs)
fs::file_delete(files)
