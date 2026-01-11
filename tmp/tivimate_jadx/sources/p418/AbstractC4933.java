package p418;

import android.os.Trace;

/* renamed from: ﹳᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4933 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m9732() {
        return Trace.isEnabled();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m9733(int i, String str) {
        Trace.endAsyncSection(str, i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9734(int i, String str) {
        Trace.beginAsyncSection(str, i);
    }
}
