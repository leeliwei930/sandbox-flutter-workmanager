package com.example.sandbox.services

import android.content.Context
import android.os.Build
import android.os.Environment
import android.os.StatFs
import android.os.storage.StorageManager
import androidx.annotation.RequiresApi
import androidx.core.content.ContextCompat.*
import java.io.File
import java.util.*

class Storage(context: Context) {
     var context : Context = context



    fun getInternalStorageCapacity() : Long? {
         val internalStorageDir : File = Environment.getDataDirectory()
         if(Build.VERSION.SDK_INT < Build.VERSION_CODES.JELLY_BEAN_MR2){
            return null;
        }
       return  StatFs(internalStorageDir.path).totalBytes

    }

    fun getAvailableExternalStoragePaths(): List<String> {
       val  externalDirs : Array<File> = getExternalFilesDirs(context, Environment.MEDIA_MOUNTED)

        return externalDirs.map { dir -> dir.absolutePath }.toList()
    }


    fun getPhysicalStorageCapacity(): Double? {
       val externalPaths : List<String> = getAvailableExternalStoragePaths()
        val physicalExternalStoragePath : List<String> = externalPaths.filter { path -> !path.contains("/storage/emulated") }.toList()
        if(physicalExternalStoragePath.isEmpty()){
            return null
        }
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR2) {
            StatFs(physicalExternalStoragePath.first()).totalBytes.toDouble() / 1024 / 1024/ 1024
        } else {
            return null;
        };
    }

}

