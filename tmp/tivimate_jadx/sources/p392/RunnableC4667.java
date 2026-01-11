package p392;

import android.util.Pair;
import p003.C0779;
import p196.C2895;
import p420.C4987;
import p420.C4991;

/* renamed from: ⁱי.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC4667 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Pair f17491;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17492;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C4991 f17493;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4674 f17494;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C2895 f17495;

    public /* synthetic */ RunnableC4667(C4674 c4674, Pair pair, C4991 c4991, C2895 c2895, int i) {
        this.f17492 = i;
        this.f17494 = c4674;
        this.f17491 = pair;
        this.f17493 = c4991;
        this.f17495 = c2895;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17492) {
            case 0:
                C0779 c0779 = (C0779) this.f17494.f17527.f10680;
                Pair pair = this.f17491;
                c0779.mo2867(((Integer) pair.first).intValue(), (C4987) pair.second, this.f17493, this.f17495);
                return;
            default:
                C0779 c07792 = (C0779) this.f17494.f17527.f10680;
                Pair pair2 = this.f17491;
                c07792.mo2868(((Integer) pair2.first).intValue(), (C4987) pair2.second, this.f17493, this.f17495);
                return;
        }
    }
}
