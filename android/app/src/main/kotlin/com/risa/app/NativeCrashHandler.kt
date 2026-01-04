package com.risa.app

import android.util.Log
import java.io.File
import java.io.PrintWriter
import java.io.StringWriter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class NativeCrashHandler(
    private val externalDir: File,
    private val defaultHandler: Thread.UncaughtExceptionHandler?
) : Thread.UncaughtExceptionHandler {

    override fun uncaughtException(thread: Thread, throwable: Throwable) {
        try {
            writeCrashToFile(thread, throwable)
        } catch (e: Exception) {
            Log.e("NativeCrashHandler", "Failed to write crash log", e)
        }
        
        // Call the default handler to ensure proper crash handling
        defaultHandler?.uncaughtException(thread, throwable)
    }

    private fun writeCrashToFile(thread: Thread, throwable: Throwable) {
        val timestamp = System.currentTimeMillis()
        val logsDir = File(externalDir, "logs")
        if (!logsDir.exists()) {
            logsDir.mkdirs()
        }
        
        val crashFile = File(logsDir, "native_crash.txt")
        
        try {
            val stackTrace = StringWriter()
            throwable.printStackTrace(PrintWriter(stackTrace))
            
            val crashInfo = """
--- $timestamp [native] ---
${stackTrace}
"""
            
            crashFile.writeText(crashInfo)
            Log.i("NativeCrashHandler", "Crash written to: ${crashFile.absolutePath}")
        } catch (e: Exception) {
            Log.e("NativeCrashHandler", "Failed to write crash file", e)
        }
    }
}