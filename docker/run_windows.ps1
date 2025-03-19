# Windows PowerShell 脚本，用于运行Docker容器
# 获取当前路径
$current_path = (Get-Location).Path
$parent_path = (Get-Item $current_path).Parent.FullName

Write-Host "Creating Docker container..."
Write-Host "Mounting $parent_path to /home/project"

# 创建并运行Docker容器
docker run -it --name dockermapspeople `
  --workdir=/home/project `
  -v "${parent_path}:/home/project" `
  dockermapspeople:cpu

Write-Host "Docker container started." 