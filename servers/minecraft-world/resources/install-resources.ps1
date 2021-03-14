# Helper Tool for downloading and unpacking Datapacks and Mods
[CmdletBinding()]
param (
    [Parameter(Mandatory=$true, HelpMessage="The path to install mods in. Directory must already exist.")]
    [string]
    $ModPath,
    # Parameter help description
    [Parameter(Mandatory=$true, HelpMessage="The path to install datapacks in. The directory must already exist.")]
    [string]
    $DatapackPath
)

$datapackList = @(
    "https://vanillatweaks.net/download/VanillaTweaks_d947065_UNZIP_ME.zip"
)

$modList = @(
    "https://ci.lucko.me/job/LuckPerms/1301/artifact/bukkit/loader/build/libs/LuckPerms-Bukkit-5.3.3.jar",
    "https://github.com/sladkoff/minecraft-prometheus-exporter/releases/download/v2.4.0/minecraft-prometheus-exporter-2.4.0.jar"
)

# Install Datapacks
$datapackList | ForEach-Object{
    $FileName = ("$_" -split "/")[-1]
    $OutDir = "$DatapackPath/$FileName"
    Start-BitsTransfer $_ -Destination $OutDir
    Expand-Archive $OutDir -DestinationPath $DatapackPath
    Remove-Item $OutDir
}

# Install Mods
$modList | ForEach-Object{
    $FileName = ("$_" -split "/")[-1]
    $OutDir = "$ModPath/$FileName"
    Start-BitsTransfer $_ -Destination $OutDir
}