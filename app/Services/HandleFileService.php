<?php

namespace App\Services;

use Illuminate\Support\Facades\File;
use Symfony\Component\HttpFoundation\File\UploadedFile;

/**
 * Class HandleFileService
 * @package App\Services
 */
class HandleFileService
{
    public static function delete($url)
    {
        if (File::exists($url)) {
            File::delete($url);
        }
    }
    public static function create(UploadedFile $file,string $url)
    {
        $image = time() . '_' . $file->getClientOriginalName();
        $destinationPath = public_path($url);
        $file->move($destinationPath, $image);
        return $image;
    }
}
