package p422;

import android.system.Os;
import java.io.FileDescriptor;

/* renamed from: ﹳﹳ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5007 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static long m9884(FileDescriptor fileDescriptor, long j, int i) {
        return Os.lseek(fileDescriptor, j, i);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static FileDescriptor m9885(FileDescriptor fileDescriptor) {
        return Os.dup(fileDescriptor);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9886(FileDescriptor fileDescriptor) {
        Os.close(fileDescriptor);
    }
}
