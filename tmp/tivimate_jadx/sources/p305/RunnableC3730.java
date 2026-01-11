package p305;

import p012.C0882;

/* renamed from: ᐧˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3730 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f14524;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14525;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0882 f14526;

    public /* synthetic */ RunnableC3730(C0882 c0882, Object obj, int i) {
        this.f14525 = i;
        this.f14526 = c0882;
        this.f14524 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14525) {
            case 0:
                C0882 c0882 = this.f14526;
                if (c0882.f3744 == 0) {
                    c0882.m3134(this.f14524);
                    return;
                }
                return;
            default:
                C0882 c08822 = this.f14526;
                int i = c08822.f3744 - 1;
                c08822.f3744 = i;
                if (i == 0) {
                    c08822.m3134(this.f14524);
                    return;
                }
                return;
        }
    }
}
