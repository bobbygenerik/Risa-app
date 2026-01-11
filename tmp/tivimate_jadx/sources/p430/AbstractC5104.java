package p430;

import java.util.AbstractList;
import java.util.List;
import p386.InterfaceC4614;

/* renamed from: ﹶˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5104 extends AbstractList implements List, InterfaceC4614 {
    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i) {
        return mo9192(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return mo9193();
    }

    /* renamed from: ⁱˊ */
    public abstract Object mo9192(int i);

    /* renamed from: ﹳٴ */
    public abstract int mo9193();
}
