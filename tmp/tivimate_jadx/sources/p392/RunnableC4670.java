package p392;

import android.util.Pair;
import p003.C0779;
import p420.C4987;

/* renamed from: ⁱי.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC4670 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Pair f17500;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17501;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4674 f17502;

    public /* synthetic */ RunnableC4670(C4674 c4674, Pair pair, int i) {
        this.f17501 = i;
        this.f17502 = c4674;
        this.f17500 = pair;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17501) {
            case 0:
                C0779 c0779 = (C0779) this.f17502.f17527.f10680;
                Pair pair = this.f17500;
                c0779.mo2840(((Integer) pair.first).intValue(), (C4987) pair.second);
                return;
            case 1:
                C0779 c07792 = (C0779) this.f17502.f17527.f10680;
                Pair pair2 = this.f17500;
                c07792.mo2830(((Integer) pair2.first).intValue(), (C4987) pair2.second);
                return;
            default:
                C0779 c07793 = (C0779) this.f17502.f17527.f10680;
                Pair pair3 = this.f17500;
                c07793.mo2825(((Integer) pair3.first).intValue(), (C4987) pair3.second);
                return;
        }
    }
}
