package p114;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;
import p021.AbstractC1031;

/* renamed from: ˆﾞ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1984 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Method f7844;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final long f7845;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                f7845 = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                f7844 = Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m4970() {
        if (Build.VERSION.SDK_INT >= 29) {
            return AbstractC1031.m3355();
        }
        try {
            return ((Boolean) f7844.invoke(null, Long.valueOf(f7845))).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
