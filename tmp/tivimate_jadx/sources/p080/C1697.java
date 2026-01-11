package p080;

import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.data.InterfaceC0220;
import com.bumptech.glide.load.data.InterfaceC0222;
import java.util.Collections;
import p031.InterfaceC1141;
import p031.InterfaceC1145;
import p073.InterfaceC1648;
import p087.AbstractC1747;
import p383.C4586;
import ˑי.ʽ;

/* renamed from: ʿʾ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1697 implements InterfaceC1708, InterfaceC1706 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile int f6929;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1688 f6930;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public volatile C1701 f6931;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public volatile C4586 f6932;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public volatile C1715 f6933;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final RunnableC1695 f6934;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public volatile Object f6935;

    public C1697(C1688 c1688, RunnableC1695 runnableC1695) {
        this.f6930 = c1688;
        this.f6934 = runnableC1695;
    }

    @Override // p080.InterfaceC1708
    public final void cancel() {
        C4586 c4586 = this.f6932;
        if (c4586 != null) {
            c4586.f17080.cancel();
        }
    }

    @Override // p080.InterfaceC1706
    /* renamed from: ʽ */
    public final void mo4617(InterfaceC1141 interfaceC1141, Exception exc, InterfaceC0220 interfaceC0220, int i) {
        this.f6934.mo4617(interfaceC1141, exc, interfaceC0220, this.f6932.f17080.mo1111());
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m4632(Object obj) {
        Throwable th;
        int i = AbstractC1747.f7106;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        try {
            InterfaceC0222 m1175 = this.f6930.f6857.m1144().m1175(obj);
            Object mo1106 = m1175.mo1106();
            InterfaceC1145 m4607 = this.f6930.m4607(mo1106);
            ʽ r9 = new ʽ(m4607, mo1106, this.f6930.f6855);
            InterfaceC1141 interfaceC1141 = this.f6932.f17082;
            C1688 c1688 = this.f6930;
            C1715 c1715 = new C1715(interfaceC1141, c1688.f6865);
            InterfaceC1648 m8106 = c1688.f6866.m8106();
            m8106.mo4500(c1715, r9);
            if (Log.isLoggable("SourceGenerator", 2)) {
                String str = "Finished encoding source to cache, key: " + c1715 + ", data: " + obj + ", encoder: " + m4607 + ", duration: " + AbstractC1747.m4706(elapsedRealtimeNanos);
            }
            if (m8106.mo4497(c1715) != null) {
                this.f6933 = c1715;
                this.f6931 = new C1701(Collections.singletonList(this.f6932.f17082), this.f6930, this);
                this.f6932.f17080.mo1112();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                String str2 = "Attempt to write: " + this.f6933 + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...";
            }
            try {
                this.f6934.mo4628(this.f6932.f17082, m1175.mo1106(), this.f6932.f17080, this.f6932.f17080.mo1111(), this.f6932.f17082);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (z) {
                    throw th;
                }
                this.f6932.f17080.mo1112();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p080.InterfaceC1706
    /* renamed from: ⁱˊ */
    public final void mo4628(InterfaceC1141 interfaceC1141, Object obj, InterfaceC0220 interfaceC0220, int i, InterfaceC1141 interfaceC11412) {
        this.f6934.mo4628(interfaceC1141, obj, interfaceC0220, this.f6932.f17080.mo1111(), interfaceC1141);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (m4632(r0) == false) goto L16;
     */
    @Override // p080.InterfaceC1708
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4613() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.f6935
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1e
            java.lang.Object r0 = r6.f6935
            r6.f6935 = r1
            boolean r0 = r6.m4632(r0)     // Catch: java.io.IOException -> L11
            if (r0 != 0) goto L1e
            goto L2a
        L11:
            r0 = move-exception
            r3 = 3
            java.lang.String r4 = "SourceGenerator"
            boolean r3 = android.util.Log.isLoggable(r4, r3)
            if (r3 == 0) goto L1e
            java.lang.String r3 = "Failed to properly rewind or write data to cache"
        L1e:
            ʿʾ.ˑﹳ r0 = r6.f6931
            if (r0 == 0) goto L2b
            ʿʾ.ˑﹳ r0 = r6.f6931
            boolean r0 = r0.mo4613()
            if (r0 == 0) goto L2b
        L2a:
            return r2
        L2b:
            r6.f6931 = r1
            r6.f6932 = r1
            r0 = 0
        L30:
            if (r0 != 0) goto L90
            int r1 = r6.f6929
            ʿʾ.ʼˎ r3 = r6.f6930
            java.util.ArrayList r3 = r3.m4609()
            int r3 = r3.size()
            if (r1 >= r3) goto L90
            ʿʾ.ʼˎ r1 = r6.f6930
            java.util.ArrayList r1 = r1.m4609()
            int r3 = r6.f6929
            int r4 = r3 + 1
            r6.f6929 = r4
            java.lang.Object r1 = r1.get(r3)
            ⁱʼ.ˉˆ r1 = (p383.C4586) r1
            r6.f6932 = r1
            ⁱʼ.ˉˆ r1 = r6.f6932
            if (r1 == 0) goto L30
            ʿʾ.ʼˎ r1 = r6.f6930
            ʿʾ.ﾞʻ r1 = r1.f6856
            ⁱʼ.ˉˆ r3 = r6.f6932
            com.bumptech.glide.load.data.ˑﹳ r3 = r3.f17080
            int r3 = r3.mo1111()
            boolean r1 = r1.m4655(r3)
            if (r1 != 0) goto L7a
            ʿʾ.ʼˎ r1 = r6.f6930
            ⁱʼ.ˉˆ r3 = r6.f6932
            com.bumptech.glide.load.data.ˑﹳ r3 = r3.f17080
            java.lang.Class r3 = r3.mo1113()
            ʿʾ.ʾᵎ r1 = r1.m4606(r3)
            if (r1 == 0) goto L30
        L7a:
            ⁱʼ.ˉˆ r0 = r6.f6932
            ⁱʼ.ˉˆ r1 = r6.f6932
            com.bumptech.glide.load.data.ˑﹳ r1 = r1.f17080
            ʿʾ.ʼˎ r3 = r6.f6930
            com.bumptech.glide.ᵎﹶ r3 = r3.f6861
            ﹶﾞ.ⁱי r4 = new ﹶﾞ.ⁱי
            r5 = 15
            r4.<init>(r6, r5, r0)
            r1.mo1114(r3, r4)
            r0 = r2
            goto L30
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p080.C1697.mo4613():boolean");
    }
}
