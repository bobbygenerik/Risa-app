package p089;

import p013.AbstractC0915;
import p013.C0907;
import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2444;
import p316.AbstractC3902;
import p316.InterfaceC3903;
import p324.AbstractC3999;
import p340.InterfaceC4256;
import p373.EnumC4532;
import p435.AbstractC5148;
import ʼⁱ.ˎᐧ;
import ʾʼ.ᵎˊ;

/* renamed from: ʿᵔ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1765 extends AbstractC3902 implements InterfaceC4256 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC4256 f7135;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public InterfaceC2136 f7136;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f7137;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC2139 f7138;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC2139 f7139;

    public C1765(InterfaceC4256 interfaceC4256, InterfaceC2139 interfaceC2139) {
        super(C1771.f7159, C2134.f8324);
        this.f7135 = interfaceC4256;
        this.f7139 = interfaceC2139;
        this.f7137 = ((Number) interfaceC2139.mo3418(0, new ˎᐧ(2))).intValue();
    }

    @Override // p316.AbstractC3908
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final StackTraceElement mo4724() {
        return null;
    }

    @Override // p316.AbstractC3908, p316.InterfaceC3903
    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC3903 mo4725() {
        InterfaceC2136 interfaceC2136 = this.f7136;
        if (interfaceC2136 instanceof InterfaceC3903) {
            return (InterfaceC3903) interfaceC2136;
        }
        return null;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final Object m4726(InterfaceC2136 interfaceC2136, Object obj) {
        InterfaceC2139 mo3551 = interfaceC2136.mo3551();
        AbstractC3999.m8174(mo3551);
        InterfaceC2139 interfaceC2139 = this.f7138;
        if (interfaceC2139 != mo3551) {
            if (interfaceC2139 instanceof C1755) {
                throw new IllegalStateException(AbstractC5148.m10142("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((C1755) interfaceC2139).f7118 + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) mo3551.mo3418(0, new ᵎˊ(2, this))).intValue() != this.f7137) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.f7139 + ",\n\t\tbut emission happened in " + mo3551 + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.f7138 = mo3551;
        }
        this.f7136 = interfaceC2136;
        Object mo4346 = AbstractC1756.f7119.mo4346(this.f7135, obj, this);
        if (!AbstractC2444.m5562(mo4346, EnumC4532.f16960)) {
            this.f7136 = null;
        }
        return mo4346;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        Throwable m3188 = AbstractC0915.m3188(obj);
        if (m3188 != null) {
            this.f7138 = new C1755(m3188, mo3551());
        }
        InterfaceC2136 interfaceC2136 = this.f7136;
        if (interfaceC2136 != null) {
            interfaceC2136.mo3549(obj);
        }
        return EnumC4532.f16960;
    }

    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    public final Object mo3399(Object obj, InterfaceC2136 interfaceC2136) {
        try {
            Object m4726 = m4726(interfaceC2136, obj);
            return m4726 == EnumC4532.f16960 ? m4726 : C0907.f3832;
        } catch (Throwable th) {
            this.f7138 = new C1755(th, interfaceC2136.mo3551());
            throw th;
        }
    }

    @Override // p316.AbstractC3902, p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public final InterfaceC2139 mo3551() {
        InterfaceC2139 interfaceC2139 = this.f7138;
        return interfaceC2139 == null ? C2134.f8324 : interfaceC2139;
    }
}
