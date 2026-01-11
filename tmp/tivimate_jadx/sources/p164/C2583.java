package p164;

import java.util.RandomAccess;
import p430.AbstractC5100;

/* renamed from: ˊᐧ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2583 extends AbstractC5100 implements RandomAccess {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2571[] f9807;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int[] f9808;

    public C2583(C2571[] c2571Arr, int[] iArr) {
        this.f9807 = c2571Arr;
        this.f9808 = iArr;
    }

    @Override // p430.AbstractC5112, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof C2571) {
            return super.contains((C2571) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.f9807[i];
    }

    @Override // p430.AbstractC5100, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof C2571) {
            return super.indexOf((C2571) obj);
        }
        return -1;
    }

    @Override // p430.AbstractC5100, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof C2571) {
            return super.lastIndexOf((C2571) obj);
        }
        return -1;
    }

    @Override // p430.AbstractC5112
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int mo5786() {
        return this.f9807.length;
    }
}
