package p137;

import androidx.appcompat.widget.Toolbar;
import p353.C4329;

/* renamed from: ˉˆ.ﹶʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC2343 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9087;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Toolbar f9088;

    public /* synthetic */ RunnableC2343(Toolbar toolbar, int i) {
        this.f9087 = i;
        this.f9088 = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9087) {
            case 0:
                C2304 c2304 = this.f9088.f204;
                C4329 c4329 = c2304 == null ? null : c2304.f8996;
                if (c4329 != null) {
                    c4329.collapseActionView();
                    return;
                }
                return;
            default:
                this.f9088.m71();
                return;
        }
    }
}
