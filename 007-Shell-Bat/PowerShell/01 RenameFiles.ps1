$CodeFileDir="."
write-host $CodeFileDir

$files = [System.IO.Directory]::GetFiles($CodeFileDir,"*.cs", [System.IO.SearchOption]::AllDirectories)

foreach($f in $files)
{
  $fi = New-Object System.IO.FileInfo($f)
  #var t = fi.FullName.Replace(fi.Extension, "_gen" + fi.Extension);
  $target = $fi.FullName.Replace($fi.Extension, "_gen" + $fi.Extension)
  write-host $target
  $fi.MoveTo($target);
}