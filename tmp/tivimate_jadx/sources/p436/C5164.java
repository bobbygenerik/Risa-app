package p436;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p013.C0907;
import p126.InterfaceC2139;
import p153.AbstractC2483;
import p324.C4030;
import p324.InterfaceC3996;
import p324.InterfaceC4002;
import p329.InterfaceC4102;
import ʼⁱ.ˏי;
import ᐧᵎ.ˆʾ;

/* renamed from: ﹶי.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5164 implements InterfaceC4002, InterfaceC3996 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4030 f19455;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5158 f19456;

    public C5164(C5158 c5158, C4030 c4030) {
        this.f19456 = c5158;
        this.f19455 = c4030;
    }

    @Override // p324.InterfaceC4002
    /* renamed from: ˉʿ */
    public final void mo8186(Object obj, InterfaceC4102 interfaceC4102) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C5158.f19444;
        C5158 c5158 = this.f19456;
        atomicReferenceFieldUpdater.set(c5158, null);
        ˆʾ r4 = new ˆʾ(c5158, this);
        C4030 c4030 = this.f19455;
        c4030.m8220(C0907.f3832, c4030.f15424, new ˏי(16, r4));
    }

    @Override // p324.InterfaceC4002
    /* renamed from: ᵔʾ */
    public final void mo8187(Object obj) {
        this.f19455.mo8187(obj);
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ᵔᵢ */
    public final void mo3549(Object obj) {
        this.f19455.mo3549(obj);
    }

    @Override // p324.InterfaceC3996
    /* renamed from: ﹳٴ */
    public final void mo3896(AbstractC2483 abstractC2483, int i) {
        this.f19455.mo3896(abstractC2483, i);
    }

    @Override // p324.InterfaceC4002
    /* renamed from: ﾞʻ */
    public final C0902 mo8188(Object obj, InterfaceC4102 interfaceC4102) {
        C5158 c5158 = this.f19456;
        InterfaceC4102 interfaceC41022 = new ˏי(c5158, this);
        C0902 m8214 = this.f19455.m8214((C0907) obj, interfaceC41022);
        if (m8214 != null) {
            C5158.f19444.set(c5158, null);
        }
        return m8214;
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public final InterfaceC2139 mo3551() {
        return this.f19455.f15414;
    }
}
