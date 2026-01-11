package p103;

import java.util.concurrent.ExecutorService;
import p204.C2919;
import ʽⁱ.ᵎﹶ;
import ʿי.ˎᐧ;

/* renamed from: ˆˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1917 extends ᵎﹶ implements InterfaceC1913 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ExecutorService f7632;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1913 f7633;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1917(p103.InterfaceC1913 r2) {
        /*
            r1 = this;
            r0 = r2
            ʽⁱ.ᵎﹶ r0 = (ʽⁱ.ᵎﹶ) r0
            java.lang.Object r0 = r0.ʾˋ
            ˑי.ʽ r0 = (ˑי.ʽ) r0
            r1.<init>(r0)
            r1.f7633 = r2
            java.lang.Object r2 = r0.ʽʽ
            ﹳʽ.ˊʻ r2 = (p404.C4790) r2
            java.lang.String r0 = "bus.handlers.async-executor"
            java.lang.Object r2 = r2.m9573(r0)
            java.util.concurrent.ExecutorService r2 = (java.util.concurrent.ExecutorService) r2
            r1.f7632 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p103.C1917.<init>(ˆˏ.ˑﹳ):void");
    }

    @Override // p103.InterfaceC1913
    /* renamed from: ˉˆ */
    public final void mo4855(Object obj, Object obj2, C2919 c2919) {
        this.f7632.execute(new ˎᐧ(this, obj, obj2, c2919, 1, false));
    }
}
