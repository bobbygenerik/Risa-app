package p137;

/* renamed from: ˉˆ.ᐧˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2309 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9025;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2254 f9026;

    public /* synthetic */ RunnableC2309(C2254 c2254, int i) {
        this.f9025 = i;
        this.f9026 = c2254;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9025) {
            case 0:
                C2249 c2249 = this.f9026.f8832;
                if (c2249 != null) {
                    c2249.setListSelectionHidden(true);
                    c2249.requestLayout();
                    return;
                }
                return;
            default:
                C2254 c2254 = this.f9026;
                C2249 c22492 = c2254.f8832;
                if (c22492 == null || !c22492.isAttachedToWindow() || c2254.f8832.getCount() <= c2254.f8832.getChildCount() || c2254.f8832.getChildCount() > c2254.f8836) {
                    return;
                }
                c2254.f8835.setInputMethodMode(2);
                c2254.mo5273();
                return;
        }
    }
}
