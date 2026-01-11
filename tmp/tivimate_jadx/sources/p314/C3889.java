package p314;

import java.util.LinkedHashSet;
import p013.C0906;
import p090.C1796;
import p090.C1826;
import p090.InterfaceC1804;
import p090.InterfaceC1836;
import p164.AbstractC2598;
import p164.C2575;
import ـˎ.ˈ;

/* renamed from: ᐧﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3889 implements InterfaceC1836 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final LinkedHashSet f15126 = new LinkedHashSet();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ˈ f15127 = new ˈ(28);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0906 f15128 = new C0906(new C3888(this, 0));

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1796 f15129;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC2598 f15130;

    public C3889(AbstractC2598 abstractC2598, C1796 c1796) {
        this.f15130 = abstractC2598;
        this.f15129 = c1796;
    }

    @Override // p090.InterfaceC1836
    /* renamed from: ﹳٴ */
    public final C1826 mo4759() {
        String m5748 = ((C2575) this.f15128.getValue()).f9777.m5748();
        synchronized (f15127) {
            LinkedHashSet linkedHashSet = f15126;
            if (linkedHashSet.contains(m5748)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + m5748 + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            linkedHashSet.add(m5748);
        }
        return new C1826(this.f15130, (C2575) this.f15128.getValue(), (InterfaceC1804) C3887.f15123.mo3749((C2575) this.f15128.getValue(), this.f15130), new C3888(this, 1));
    }
}
