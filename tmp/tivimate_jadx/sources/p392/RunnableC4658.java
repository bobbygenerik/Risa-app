package p392;

import android.util.Pair;
import p003.C0779;
import p196.C2895;
import p420.C4987;

/* renamed from: ⁱי.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC4658 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Pair f17465;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17466;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C2895 f17467;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4674 f17468;

    public /* synthetic */ RunnableC4658(C4674 c4674, Pair pair, C2895 c2895, int i) {
        this.f17466 = i;
        this.f17468 = c4674;
        this.f17465 = pair;
        this.f17467 = c2895;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17466) {
            case 0:
                C0779 c0779 = (C0779) this.f17468.f17527.f10680;
                Pair pair = this.f17465;
                int intValue = ((Integer) pair.first).intValue();
                C4987 c4987 = (C4987) pair.second;
                c4987.getClass();
                c0779.mo2847(intValue, c4987, this.f17467);
                return;
            default:
                C0779 c07792 = (C0779) this.f17468.f17527.f10680;
                Pair pair2 = this.f17465;
                c07792.mo2846(((Integer) pair2.first).intValue(), (C4987) pair2.second, this.f17467);
                return;
        }
    }
}
