package p420;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.Objects;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;
import p003.C0778;
import p055.C1495;
import p131.C2196;
import p196.C2895;
import p305.InterfaceC3734;
import p395.C4715;
import p395.InterfaceC4719;

/* renamed from: ﹳᵢ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4985 implements InterfaceC4970, InterfaceC4719 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C4715 f18618;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f18619;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC4948 f18620;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ʽﹳ f18621;

    public C4985(AbstractC4948 abstractC4948, Object obj) {
        this.f18620 = abstractC4948;
        this.f18621 = abstractC4948.m9841(null);
        this.f18618 = new C4715(abstractC4948.f18639.f17808, 0, null);
        this.f18619 = obj;
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʼˎ */
    public final void mo2825(int i, C4987 c4987) {
        if (m9837(i, c4987)) {
            this.f18618.m9457();
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʽ */
    public final void mo2827(int i, C4987 c4987, int i2) {
        if (m9837(i, c4987)) {
            this.f18618.m9454(i2);
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʾˋ */
    public final void mo2830(int i, C4987 c4987) {
        if (m9837(i, c4987)) {
            this.f18618.m9456();
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ˈٴ */
    public final void mo2836(int i, C4987 c4987, final C4991 c4991, C2895 c2895, final int i2) {
        if (m9837(i, c4987)) {
            final ʽﹳ r1 = this.f18621;
            final C2895 m9836 = m9836(c2895, c4987);
            r1.getClass();
            r1.ʼˎ(new InterfaceC3734() { // from class: ﹳᵢ.ʽʽ
                @Override // p305.InterfaceC3734
                public final void accept(Object obj) {
                    InterfaceC4970 interfaceC4970 = (InterfaceC4970) obj;
                    ʽﹳ r7 = r1;
                    interfaceC4970.mo2836(r7.ᴵˊ, (C4987) r7.ʽʽ, c4991, m9836, i2);
                }
            });
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ˊʻ */
    public final void mo2840(int i, C4987 c4987) {
        if (m9837(i, c4987)) {
            this.f18618.m9458();
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: יـ */
    public final void mo2846(int i, C4987 c4987, C2895 c2895) {
        if (m9837(i, c4987)) {
            ʽﹳ r2 = this.f18621;
            C2895 m9836 = m9836(c2895, c4987);
            r2.getClass();
            r2.ʼˎ(new C0778(r2, 14, m9836));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ـˆ */
    public final void mo2847(int i, C4987 c4987, C2895 c2895) {
        if (m9837(i, c4987)) {
            ʽﹳ r3 = this.f18621;
            C2895 m9836 = m9836(c2895, c4987);
            C4987 c49872 = (C4987) r3.ʽʽ;
            c49872.getClass();
            r3.ʼˎ(new C2196(r3, c49872, m9836, 6));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ᴵˊ */
    public final void mo2852(int i, C4987 c4987, final C4991 c4991, C2895 c2895, final IOException iOException, final boolean z) {
        if (m9837(i, c4987)) {
            final ʽﹳ r1 = this.f18621;
            final C2895 m9836 = m9836(c2895, c4987);
            r1.getClass();
            r1.ʼˎ(new InterfaceC3734() { // from class: ﹳᵢ.ᴵᵔ
                @Override // p305.InterfaceC3734
                public final void accept(Object obj) {
                    InterfaceC4970 interfaceC4970 = (InterfaceC4970) obj;
                    ʽﹳ r8 = r1;
                    interfaceC4970.mo2852(r8.ᴵˊ, (C4987) r8.ʽʽ, c4991, m9836, iOException, z);
                }
            });
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ᴵᵔ */
    public final void mo2853(int i, C4987 c4987, Exception exc) {
        if (m9837(i, c4987)) {
            this.f18618.m9455(exc);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2895 m9836(C2895 c2895, C4987 c4987) {
        long j = c2895.f10896;
        AbstractC4948 abstractC4948 = this.f18620;
        Object obj = this.f18619;
        long mo9746 = abstractC4948.mo9746(j, obj);
        long j2 = c2895.f10897;
        long mo97462 = abstractC4948.mo9746(j2, obj);
        return (mo9746 == j && mo97462 == j2) ? c2895 : new C2895(c2895.f10900, c2895.f10899, (C1495) c2895.f10901, c2895.f10895, c2895.f10898, mo9746, mo97462);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9837(int i, C4987 c4987) {
        C4987 c49872;
        Object obj = this.f18619;
        AbstractC4948 abstractC4948 = this.f18620;
        if (c4987 != null) {
            c49872 = abstractC4948.mo9750(obj, c4987);
            if (c49872 == null) {
                return false;
            }
        } else {
            c49872 = null;
        }
        int mo9749 = abstractC4948.mo9749(i, obj);
        ʽﹳ r0 = this.f18621;
        if (r0.ᴵˊ != mo9749 || !Objects.equals((C4987) r0.ʽʽ, c49872)) {
            this.f18621 = new ʽﹳ((CopyOnWriteArrayList) abstractC4948.f18637.ˈٴ, mo9749, c49872);
        }
        C4715 c4715 = this.f18618;
        if (c4715.f17810 == mo9749 && Objects.equals(c4715.f17809, c49872)) {
            return true;
        }
        this.f18618 = new C4715(abstractC4948.f18639.f17808, mo9749, c49872);
        return true;
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ﾞʻ */
    public final void mo2867(int i, C4987 c4987, C4991 c4991, C2895 c2895) {
        if (m9837(i, c4987)) {
            ʽﹳ r2 = this.f18621;
            C2895 m9836 = m9836(c2895, c4987);
            r2.getClass();
            r2.ʼˎ(new C4952(r2, c4991, m9836, 1));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ﾞᴵ */
    public final void mo2868(int i, C4987 c4987, C4991 c4991, C2895 c2895) {
        if (m9837(i, c4987)) {
            ʽﹳ r2 = this.f18621;
            C2895 m9836 = m9836(c2895, c4987);
            r2.getClass();
            r2.ʼˎ(new C4952(r2, c4991, m9836, 0));
        }
    }
}
