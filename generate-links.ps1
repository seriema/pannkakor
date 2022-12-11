$files = Get-ChildItem .

for ($i=0; $i -lt $files.Count; $i++) {
	$file = $files[$i]
	if ($file.Extension -like ".md" -and $file.BaseName -notlike "README") {
		"* [{0}]({1})" -f $file.BaseName, $file.Name
	}
}
