$files = Get-ChildItem .

foreach ($file in $files) {
	if ($file.Extension -like ".md" -and $file.BaseName -notlike "README") {
		"* [{0}]({1})" -f $file.BaseName, $file.Name
	}
}
