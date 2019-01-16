
dirs <- c(here::here("data"), here::here("figs")) %>%
  purrr::keep(fs::dir_exists)
purrr::map(dirs, fs::dir_ls) %>%
  purrr::flatten_chr() %>%
  unname() %>%
  fs::file_delete()
