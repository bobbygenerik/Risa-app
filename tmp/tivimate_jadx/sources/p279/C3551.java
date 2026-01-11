package p279;

import java.util.ArrayList;
import java.util.HashSet;
import p087.AbstractC1746;

/* renamed from: ٴʽ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3551 implements InterfaceC3555 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ יـ f13897;

    public C3551(יـ r1) {
        this.f13897 = r1;
    }

    @Override // p279.InterfaceC3555
    /* renamed from: ﹳٴ */
    public final void mo1142(boolean z) {
        ArrayList arrayList;
        AbstractC1746.m4704();
        synchronized (this.f13897) {
            arrayList = new ArrayList((HashSet) this.f13897.ʽ);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((InterfaceC3555) obj).mo1142(z);
        }
    }
}
