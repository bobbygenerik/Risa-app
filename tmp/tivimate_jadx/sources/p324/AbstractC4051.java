package p324;

import kotlin.NoWhenBranchMatchedException;
import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.DispatchException;
import p010.AbstractC0844;
import p013.AbstractC0915;
import p013.C0907;
import p013.C0922;
import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2451;
import p153.AbstractC2481;
import p316.AbstractC3902;
import p316.AbstractC3905;
import p316.AbstractC3908;
import p329.InterfaceC4087;
import p373.EnumC4532;
import ˉᵎ.ⁱˊ;

/* renamed from: ᴵי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4051 extends C4031 implements InterfaceC2136, InterfaceC4023 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC2139 f15440;

    public AbstractC4051(InterfaceC2139 interfaceC2139, boolean z, boolean z2) {
        super(z2);
        if (z) {
            m8246((InterfaceC4036) interfaceC2139.mo3419(C3997.f15367));
        }
        this.f15440 = interfaceC2139.mo3421(this);
    }

    /* renamed from: ʻᵎ */
    public void mo3912(Throwable th, boolean z) {
    }

    @Override // p324.C4031
    /* renamed from: ʽﹳ */
    public final String mo8232() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // p324.InterfaceC4023
    /* renamed from: ʾˋ */
    public final InterfaceC2139 mo678() {
        return this.f15440;
    }

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final void m8267(int i, AbstractC4051 abstractC4051, InterfaceC4087 interfaceC4087) {
        Object mo3749;
        int m3018 = AbstractC0844.m3018(i);
        C0907 c0907 = C0907.f3832;
        if (m3018 == 0) {
            try {
                AbstractC2481.m5626(c0907, ⁱˊ.ˈٴ(ⁱˊ.ﾞᴵ(abstractC4051, this, interfaceC4087)));
                return;
            } finally {
                th = th;
                if (th instanceof DispatchException) {
                    th = ((DispatchException) th).f3106;
                }
                mo3549(new C0922(th));
            }
        }
        if (m3018 != 1) {
            if (m3018 == 2) {
                ⁱˊ.ˈٴ(ⁱˊ.ﾞᴵ(abstractC4051, this, interfaceC4087)).mo3549(c0907);
                return;
            }
            if (m3018 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            try {
                InterfaceC2139 interfaceC2139 = this.f15440;
                Object m5622 = AbstractC2481.m5622(interfaceC2139, null);
                try {
                    if (interfaceC4087 instanceof AbstractC3908) {
                        AbstractC2451.m5576(2, interfaceC4087);
                        mo3749 = interfaceC4087.mo3749(abstractC4051, this);
                    } else {
                        InterfaceC2139 mo3551 = mo3551();
                        Object abstractC3905 = mo3551 == C2134.f8324 ? new AbstractC3905(this) : new AbstractC3902(this, mo3551);
                        AbstractC2451.m5576(2, interfaceC4087);
                        mo3749 = interfaceC4087.mo3749(abstractC4051, abstractC3905);
                    }
                    if (mo3749 != EnumC4532.f16960) {
                        mo3549(mo3749);
                    }
                } finally {
                    AbstractC2481.m5625(interfaceC2139, m5622);
                }
            } catch (Throwable th) {
                th = th;
            }
        }
    }

    @Override // p324.C4031
    /* renamed from: ˈⁱ */
    public final void mo8238(Object obj) {
        if (!(obj instanceof C4022)) {
            mo3913(obj);
        } else {
            C4022 c4022 = (C4022) obj;
            mo3912(c4022.f15404, C4022.f15403.get(c4022) == 1);
        }
    }

    /* renamed from: ـﹶ */
    public void mo3913(Object obj) {
    }

    @Override // p324.C4031
    /* renamed from: ᵎⁱ */
    public final void mo8254(CompletionHandlerException completionHandlerException) {
        AbstractC3999.m8167(completionHandlerException, this.f15440);
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ᵔᵢ */
    public final void mo3549(Object obj) {
        Throwable m3188 = AbstractC0915.m3188(obj);
        if (m3188 != null) {
            obj = new C4022(m3188, false);
        }
        Object m8241 = m8241(obj);
        if (m8241 == AbstractC3999.f15372) {
            return;
        }
        mo5615(m8241);
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public final InterfaceC2139 mo3551() {
        return this.f15440;
    }
}
