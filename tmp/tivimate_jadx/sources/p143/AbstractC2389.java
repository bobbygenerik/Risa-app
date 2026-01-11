package p143;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.SparseArray;
import java.util.WeakHashMap;

/* renamed from: ˉٴ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2389 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ThreadLocal f9219 = new ThreadLocal();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final WeakHashMap f9218 = new WeakHashMap(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Object f9217 = new Object();

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00ca A[ADDED_TO_REGION] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m5484(android.content.Context r12, int r13, android.util.TypedValue r14, int r15, p143.AbstractC2392 r16, boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p143.AbstractC2389.m5484(android.content.Context, int, android.util.TypedValue, int, ˉٴ.ⁱˊ, boolean, boolean):android.graphics.Typeface");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m5485(C2384 c2384, int i, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f9217) {
            try {
                WeakHashMap weakHashMap = f9218;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(c2384);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(c2384, sparseArray);
                }
                sparseArray.append(i, new C2391(colorStateList, c2384.f9214.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
