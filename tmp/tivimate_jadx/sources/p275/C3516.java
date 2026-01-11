package p275;

import java.util.concurrent.ThreadPoolExecutor;
import ˉᵎ.ⁱˊ;
import ˏˆ.ﹳٴ;

/* renamed from: ـﹶ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3516 extends ⁱˊ {

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final /* synthetic */ ThreadPoolExecutor f13850;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final /* synthetic */ ⁱˊ f13851;

    public C3516(ⁱˊ r1, ThreadPoolExecutor threadPoolExecutor) {
        this.f13851 = r1;
        this.f13850 = threadPoolExecutor;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m7482(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f13850;
        try {
            this.f13851.ˉٴ(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m7483(ﹳٴ r3) {
        ThreadPoolExecutor threadPoolExecutor = this.f13850;
        try {
            this.f13851.ᵎⁱ(r3);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
