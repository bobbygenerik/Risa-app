package p090;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;

/* renamed from: ʿᵢ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1776 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C1818 f7174;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f7175;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1776(C1818 c1818, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f7175 = i;
        this.f7174 = c1818;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        InterfaceC4023 interfaceC4023 = (InterfaceC4023) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f7175) {
            case 0:
                return ((C1776) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C1776) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f7175) {
            case 0:
                return new C1776(this.f7174, interfaceC2136, 0);
            default:
                return new C1776(this.f7174, interfaceC2136, 1);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        int i = this.f7175;
        AbstractC2026.m5044(obj);
        switch (i) {
            case 0:
                return new Integer(C1816.f7326.nativeGetCounterValue(((C1816) this.f7174.f7332.getValue()).f7327));
            default:
                return new Integer(C1816.f7326.nativeIncrementAndGetCounterValue(((C1816) this.f7174.f7332.getValue()).f7327));
        }
    }
}
