package p355;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* renamed from: ᵔˆ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4340 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Charset f16155 = Charset.forName("US-ASCII");

    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m8801(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m8801(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
