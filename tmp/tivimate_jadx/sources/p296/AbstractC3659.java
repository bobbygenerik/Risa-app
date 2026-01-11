package p296;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

/* renamed from: ٴﾞ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3659 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int f14322;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean f14323;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object f14324 = new Object();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean m7679(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7680(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m7681(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m7682(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m7683(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m7684(String str, boolean z) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7685(Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            throw new IllegalStateException("Must be called on " + handler.getLooper().getThread().getName() + " thread, but got " + name + ".");
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m7686(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m7687(Object obj) {
        if (obj == null) {
            throw new NullPointerException("null reference");
        }
    }
}
