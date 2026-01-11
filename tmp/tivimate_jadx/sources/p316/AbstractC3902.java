package p316;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p126.C2137;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p153.AbstractC2481;
import p153.C2485;
import p324.AbstractC4017;
import p324.C4030;

/* renamed from: ᴵʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3902 extends AbstractC3908 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public transient InterfaceC2136 f15165;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC2139 f15166;

    public AbstractC3902(InterfaceC2136 interfaceC2136) {
        this(interfaceC2136, interfaceC2136 != null ? interfaceC2136.mo3551() : null);
    }

    public AbstractC3902(InterfaceC2136 interfaceC2136, InterfaceC2139 interfaceC2139) {
        super(interfaceC2136);
        this.f15166 = interfaceC2139;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public void mo8081() {
        InterfaceC2136 interfaceC2136 = this.f15165;
        if (interfaceC2136 != null && interfaceC2136 != this) {
            ((AbstractC4017) mo3551().mo3419(C2137.f8327)).getClass();
            C2485 c2485 = (C2485) interfaceC2136;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C2485.f9474;
            do {
            } while (atomicReferenceFieldUpdater.get(c2485) == AbstractC2481.f9463);
            Object obj = atomicReferenceFieldUpdater.get(c2485);
            C4030 c4030 = obj instanceof C4030 ? (C4030) obj : null;
            if (c4030 != null) {
                c4030.m8225();
            }
        }
        this.f15165 = C3907.f15168;
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public InterfaceC2139 mo3551() {
        return this.f15166;
    }
}
