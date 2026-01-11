package p179;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

/* renamed from: ˋˋ.ﹳﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2745 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SparseArray f10473 = new SparseArray();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10472 = 0;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Set f10471 = Collections.newSetFromMap(new IdentityHashMap());

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6148(int i, int i2) {
        C2746 m6149 = m6149(i);
        m6149.f10476 = i2;
        ArrayList arrayList = m6149.f10477;
        while (arrayList.size() > i2) {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2746 m6149(int i) {
        SparseArray sparseArray = this.f10473;
        C2746 c2746 = (C2746) sparseArray.get(i);
        if (c2746 != null) {
            return c2746;
        }
        C2746 c27462 = new C2746();
        sparseArray.put(i, c27462);
        return c27462;
    }
}
