# Script to create global library location for R to avoid constant re-installing 
# of packages and version issues:
# https://zkamvar.github.io/blog/using-a-custom-library-in-r/

# Create custom library ---------------------------------------------------
#create folder for library in desired location
dir.create("E:/My Drive/R_Library", recursive = TRUE)

#check for existing Renviron file and create if one is absent
if (file.exists("~/.Renviron")) {
  
  message("~/.Renviron already exists!")
  
} else {
  
  file.create("~/.Renviron")
  message("created ~/.Renviron")
}
#set a library path to Renviron
cat("R_LIBS = E:/My Drive/R_library", 
    file = "~/.Renviron", append = TRUE)

##restart R##

.libPaths() #view library path

# This is now the default library where packages will be installed and updated. 
# If there is an existing .Renviron file, such as one specifying PATH for Rtools, 
# R_LIB must come first (there is one key per line in the text file)
# Install all packages found in previous R library  -----------------------
lib_loc <- "C:/Users/jbern/Documents/R/win-library/3.6/"
to_install <-  unname(installed.packages(lib.loc = lib_loc)[, "Package"])
to_install
install.packages(pkgs = to_install)