package p229;

import java.util.ArrayList;
import p137.AbstractC2305;

/* renamed from: ˑʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3089 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3081 f11775;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11776;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3133 f11777;

    public /* synthetic */ RunnableC3089(C3133 c3133, C3081 c3081, int i) {
        this.f11776 = i;
        this.f11777 = c3133;
        this.f11775 = c3081;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11776) {
            case 0:
                this.f11777.m6875(this.f11775);
                return;
            case 1:
                C3133 c3133 = this.f11777;
                ArrayList arrayList = c3133.f11974;
                C3081 c3081 = this.f11775;
                if (arrayList.contains(c3081)) {
                    AbstractC2305.m5381(c3081.f11709, c3081.f11701.f11908, c3133.f11975);
                    return;
                }
                return;
            default:
                C3133 c31332 = this.f11777;
                ArrayList arrayList2 = c31332.f11974;
                C3081 c30812 = this.f11775;
                arrayList2.remove(c30812);
                c31332.f11971.remove(c30812);
                return;
        }
    }
}
