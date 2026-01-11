package p293;

import android.net.Uri;
import androidx.core.content.FileProvider;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

/* renamed from: ٴᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3654 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f14315 = new HashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14316;

    public C3654(String str) {
        this.f14316 = str;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final File m7672(Uri uri) {
        String encodedPath = uri.getEncodedPath();
        int indexOf = encodedPath.indexOf(47, 1);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Unable to find path from root: " + uri);
        }
        String decode = Uri.decode(encodedPath.substring(1, indexOf));
        String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
        File file = (File) this.f14315.get(decode);
        if (file == null) {
            throw new IllegalArgumentException("Unable to find configured root for " + uri);
        }
        File file2 = new File(file, decode2);
        try {
            File canonicalFile = file2.getCanonicalFile();
            String path = canonicalFile.getPath();
            String path2 = file.getPath();
            if (FileProvider.m115(path).startsWith(FileProvider.m115(path2) + '/')) {
                return canonicalFile;
            }
            throw new SecurityException("Resolved path jumped beyond configured root");
        } catch (IOException unused) {
            throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
        }
    }
}
