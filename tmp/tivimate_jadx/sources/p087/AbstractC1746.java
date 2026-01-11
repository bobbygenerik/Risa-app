package p087;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;

/* renamed from: ʿٴ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1746 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static volatile Handler f7103;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f7105 = "0123456789abcdef".toCharArray();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final char[] f7104 = new char[64];

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean m4697(int i, int i2) {
        if (i > 0 || i == Integer.MIN_VALUE) {
            return i2 > 0 || i2 == Integer.MIN_VALUE;
        }
        return false;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m4698(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m4699(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i = AbstractC1742.f7098[config.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 3) {
                return i != 4 ? 4 : 8;
            }
        }
        return i2;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static ArrayList m4700(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m4701(int i, int i2) {
        return (i2 * 31) + i;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m4702(int i, Object obj) {
        return m4701(obj == null ? 0 : obj.hashCode(), i);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m4703(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m4704() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Handler m4705() {
        if (f7103 == null) {
            synchronized (AbstractC1746.class) {
                try {
                    if (f7103 == null) {
                        f7103 = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return f7103;
    }
}
