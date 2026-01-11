package p392;

import android.util.Pair;
import com.parse.ˊﾞ;
import java.io.IOException;
import p000.RunnableC0761;
import p003.C0779;
import p188.C2845;
import p196.C2895;
import p305.C3711;
import p395.InterfaceC4719;
import p420.C4987;
import p420.C4991;
import p420.InterfaceC4970;

/* renamed from: ⁱי.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4674 implements InterfaceC4970, InterfaceC4719 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4660 f17526;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2845 f17527;

    public C4674(C2845 c2845, C4660 c4660) {
        this.f17527 = c2845;
        this.f17526 = c4660;
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʼˎ */
    public final void mo2825(int i, C4987 c4987) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC4670(this, m9277, 2));
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʽ */
    public final void mo2827(int i, C4987 c4987, int i2) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC0761(this, m9277, i2, 2));
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʾˋ */
    public final void mo2830(int i, C4987 c4987) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC4670(this, m9277, 1));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ˈٴ */
    public final void mo2836(int i, C4987 c4987, final C4991 c4991, final C2895 c2895, final int i2) {
        final Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new Runnable() { // from class: ⁱי.ˊˋ
                @Override // java.lang.Runnable
                public final void run() {
                    C0779 c0779 = (C0779) C4674.this.f17527.f10680;
                    Pair pair = m9277;
                    c0779.mo2836(((Integer) pair.first).intValue(), (C4987) pair.second, c4991, c2895, i2);
                }
            });
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ˊʻ */
    public final void mo2840(int i, C4987 c4987) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC4670(this, m9277, 0));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: יـ */
    public final void mo2846(int i, C4987 c4987, C2895 c2895) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC4658(this, m9277, c2895, 1));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ـˆ */
    public final void mo2847(int i, C4987 c4987, C2895 c2895) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC4658(this, m9277, c2895, 0));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ᴵˊ */
    public final void mo2852(int i, C4987 c4987, final C4991 c4991, final C2895 c2895, final IOException iOException, final boolean z) {
        final Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new Runnable() { // from class: ⁱי.ʼˈ
                @Override // java.lang.Runnable
                public final void run() {
                    C0779 c0779 = (C0779) C4674.this.f17527.f10680;
                    Pair pair = m9277;
                    c0779.mo2852(((Integer) pair.first).intValue(), (C4987) pair.second, c4991, c2895, iOException, z);
                }
            });
        }
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ᴵᵔ */
    public final void mo2853(int i, C4987 c4987, Exception exc) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new ˊﾞ(this, m9277, exc, 13));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Pair m9277(int i, C4987 c4987) {
        C4987 c49872;
        C4660 c4660 = this.f17526;
        C4987 c49873 = null;
        if (c4987 != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= c4660.f17472.size()) {
                    c49872 = null;
                    break;
                }
                if (((C4987) c4660.f17472.get(i2)).f18628 == c4987.f18628) {
                    Object obj = c4987.f18631;
                    Object obj2 = c4660.f17475;
                    int i3 = C4679.f17556;
                    c49872 = c4987.m9839(Pair.create(obj2, obj));
                    break;
                }
                i2++;
            }
            if (c49872 == null) {
                return null;
            }
            c49873 = c49872;
        }
        return Pair.create(Integer.valueOf(i + c4660.f17473), c49873);
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ﾞʻ */
    public final void mo2867(int i, C4987 c4987, C4991 c4991, C2895 c2895) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC4667(this, m9277, c4991, c2895, 0));
        }
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ﾞᴵ */
    public final void mo2868(int i, C4987 c4987, C4991 c4991, C2895 c2895) {
        Pair m9277 = m9277(i, c4987);
        if (m9277 != null) {
            ((C3711) this.f17527.f10682).m7750(new RunnableC4667(this, m9277, c4991, c2895, 1));
        }
    }
}
