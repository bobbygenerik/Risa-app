package p229;

/* renamed from: ˑʼ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3084 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11719;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractComponentCallbacksC3123 f11720;

    public /* synthetic */ RunnableC3084(int i, AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        this.f11719 = i;
        this.f11720 = abstractComponentCallbacksC3123;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11719) {
            case 0:
                this.f11720.m6793();
                return;
            default:
                this.f11720.m6795(false);
                return;
        }
    }
}
