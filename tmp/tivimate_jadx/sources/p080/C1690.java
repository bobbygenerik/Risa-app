package p080;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import p031.InterfaceC1141;
import p087.AbstractC1751;

/* renamed from: ʿʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1690 extends WeakReference {

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC1710 f6874;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f6875;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1141 f6876;

    public C1690(InterfaceC1141 interfaceC1141, C1692 c1692, ReferenceQueue referenceQueue) {
        super(c1692, referenceQueue);
        AbstractC1751.m4711(interfaceC1141, "Argument must not be null");
        this.f6876 = interfaceC1141;
        boolean z = c1692.f6879;
        this.f6874 = null;
        this.f6875 = z;
    }
}
