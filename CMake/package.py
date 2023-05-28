import os, zipfile
from zipfile import ZipFile

def zipDir(dirPath):
    print("zip.".ljust(8), "=>", dirPath)
    zipFile = "build-windows-x64-dev.zip"

    rootDir = dirPath + '../'

    fp = ZipFile(
        os.path.join(os.curdir, zipFile), 
        'w', zipfile.ZIP_DEFLATED)

    for r, _, f in os.walk(dirPath):
        rel = r.replace(rootDir, ".."+os.sep)
        rel = rel.replace("\\\\", "\\")
        rel = rel.replace("//", "/")
        for file in f:
            if (file.find("Test.") != -1): continue 
            zfp = os.path.join(rel, file)
            print("zipping".ljust(8), "=>", zfp)
            fp.write(zfp)

if __name__=="__main__":
    zipDir("Bin")