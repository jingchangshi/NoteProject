Function UnzipFile($dir, $base_fname)
{
  $zip_path = $PSScriptRoot + "\" + $dir + "\" + $base_fname + ".zip"
  $exe_dir = $PSScriptRoot + "\" + $dir
  Expand-Archive $zip_path -DestinationPath $exe_dir
  $exe_path = $exe_dir + "\" + $base_fname + ".exe"
  Write-Host "$($exe_path) is created"
}

UnzipFile "SimpleNotesManager" "SimpleNotesManager"
UnzipFile "NotesExample\utility" "pandoc"
UnzipFile "NotesExample\utility" "pagefind_extended"

Read-Host "Press any key to finish"
