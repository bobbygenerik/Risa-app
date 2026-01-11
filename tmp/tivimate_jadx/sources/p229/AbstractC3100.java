package p229;

import android.view.View;
import java.util.ArrayList;
import p230.C3157;

/* renamed from: ˑʼ.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3100 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final AbstractC3104 f11811;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3139 f11812 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˑʼ.ﹳﹳ] */
    static {
        AbstractC3104 abstractC3104 = null;
        try {
            abstractC3104 = (AbstractC3104) C3157.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f11811 = abstractC3104;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m6724(int i, ArrayList arrayList) {
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((View) obj).setVisibility(i);
        }
    }
}
