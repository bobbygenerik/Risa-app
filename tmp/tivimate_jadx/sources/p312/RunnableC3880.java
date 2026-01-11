package p312;

import androidx.media3.ui.AspectRatioFrameLayout;
import p262.C3433;
import p305.AbstractC3712;
import p392.C4644;
import p392.C4668;
import p392.SurfaceHolderCallbackC4642;
import p425.InterfaceC5046;

/* renamed from: ᐧⁱ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3880 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f15106;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f15107;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ boolean f15108;

    public /* synthetic */ RunnableC3880(int i, Object obj, boolean z) {
        this.f15107 = i;
        this.f15106 = obj;
        this.f15108 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f15107;
        boolean z = this.f15108;
        Object obj = this.f15106;
        switch (i) {
            case 0:
                int i2 = AspectRatioFrameLayout.f1254;
                ((AspectRatioFrameLayout) obj).m796(z);
                return;
            default:
                InterfaceC5046 interfaceC5046 = (InterfaceC5046) ((C3433) obj).f13456;
                String str = AbstractC3712.f14481;
                C4644 c4644 = ((SurfaceHolderCallbackC4642) interfaceC5046).f17344;
                if (c4644.f17363 == z) {
                    return;
                }
                c4644.f17363 = z;
                c4644.f17365.ᵎﹶ(23, new C4668(1, z));
                return;
        }
    }
}
