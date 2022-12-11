$files = Get-ChildItem .

for ($i=0; $i -lt $files.Count; $i++) {
	if ($files[$i].Extension -like ".md" -and $files[$i].BaseName -notlike "README") {
		"* [{0}]({1})" -f $files[$i].BaseName, $files[$i].Name
	}
}
