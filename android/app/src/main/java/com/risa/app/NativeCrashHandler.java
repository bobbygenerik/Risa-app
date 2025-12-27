package com.risa.app;

import android.util.Log;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 * Minimal native crash logger to capture uncaught exceptions before the process dies.
 * Writes to external app storage: /sdcard/Android/data/com.risa.app/files/logs/native_crash.txt
 */
public class NativeCrashHandler implements Thread.UncaughtExceptionHandler {
    private static final String TAG = "NativeCrashHandler";
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final File logFile;

    public NativeCrashHandler(File externalFilesDir, Thread.UncaughtExceptionHandler defaultHandler) {
        this.defaultHandler = defaultHandler;
        File logDir = new File(externalFilesDir, "logs");
        if (!logDir.exists()) {
            //noinspection ResultOfMethodCallIgnored
            logDir.mkdirs();
        }
        this.logFile = new File(logDir, "native_crash.txt");
    }

    @Override
    public void uncaughtException(Thread t, Throwable e) {
        writeCrash(e);
        if (defaultHandler != null) {
            defaultHandler.uncaughtException(t, e);
        }
    }

    private void writeCrash(Throwable e) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(logFile, true);
            writer.write("\n--- " + System.currentTimeMillis() + " [native] ---\n");
            writer.write(Log.getStackTraceString(e));
            writer.write("\n");
            writer.flush();
        } catch (IOException ignored) {
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException ignored) {
                }
            }
        }
    }
}
