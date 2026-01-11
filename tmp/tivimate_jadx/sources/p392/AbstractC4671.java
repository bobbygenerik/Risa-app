package p392;

import p003.C0783;
import p055.AbstractC1445;
import p055.C1490;
import p055.C1495;
import p262.C3433;
import p305.AbstractC3731;
import p305.C3721;
import p420.C4987;
import p420.InterfaceC4956;
import p421.C4996;
import p428.C5078;

/* renamed from: ⁱי.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4671 implements InterfaceC4653 {

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f17506;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C4678 f17507;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f17508;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C0783 f17509;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public C5078 f17510;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public C4987 f17511;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C1495[] f17513;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C3721 f17514;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f17515;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f17516;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public long f17517;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public InterfaceC4956 f17518;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f17519;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f17520;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f17504 = new Object();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3433 f17503 = new C3433(14);

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public long f17505 = Long.MIN_VALUE;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public AbstractC1445 f17512 = AbstractC1445.f5630;

    public AbstractC4671(int i) {
        this.f17515 = i;
    }

    /* renamed from: ʻٴ */
    public void mo756(C1495[] c1495Arr, long j, long j2, C4987 c4987) {
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void m9272(C1495[] c1495Arr, InterfaceC4956 interfaceC4956, long j, long j2, C4987 c4987) {
        AbstractC3731.m7857(!this.f17520);
        this.f17518 = interfaceC4956;
        this.f17511 = c4987;
        if (this.f17505 == Long.MIN_VALUE) {
            this.f17505 = j;
        }
        this.f17513 = c1495Arr;
        this.f17517 = j2;
        mo756(c1495Arr, j, j2, c4987);
    }

    /* renamed from: ʼˎ */
    public InterfaceC4686 mo757() {
        return null;
    }

    /* renamed from: ʼᐧ */
    public void mo758(boolean z, boolean z2) {
    }

    /* renamed from: ʽﹳ */
    public void mo761() {
    }

    /* renamed from: ʾˋ */
    public abstract int mo762(C1495 c1495);

    /* renamed from: ʾᵎ */
    public abstract void mo763(long j, long j2);

    /* renamed from: ˆʾ */
    public abstract String mo764();

    /* renamed from: ˈ */
    public void mo785() {
    }

    /* renamed from: ˉʿ */
    public abstract boolean mo766();

    /* renamed from: ˉˆ */
    public abstract void mo767();

    /* renamed from: ˏי */
    public void mo770() {
    }

    /* renamed from: יـ */
    public void mo5945() {
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int m9273(C3433 c3433, C4996 c4996, int i) {
        InterfaceC4956 interfaceC4956 = this.f17518;
        interfaceC4956.getClass();
        int mo3472 = interfaceC4956.mo3472(c3433, c4996, i);
        if (mo3472 == -4) {
            if (c4996.m3177(4)) {
                this.f17505 = Long.MIN_VALUE;
                return this.f17520 ? -4 : -3;
            }
            long j = c4996.f18671 + this.f17517;
            c4996.f18671 = j;
            this.f17505 = Math.max(this.f17505, j);
            return mo3472;
        }
        if (mo3472 == -5) {
            C1495 c1495 = (C1495) c3433.f13456;
            c1495.getClass();
            long j2 = c1495.f5920;
            if (j2 != Long.MAX_VALUE) {
                C1490 m4300 = c1495.m4300();
                m4300.f5885 = j2 + this.f17517;
                c3433.f13456 = new C1495(m4300);
            }
        }
        return mo3472;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m9274() {
        return this.f17505 == Long.MIN_VALUE;
    }

    /* renamed from: ᴵˊ */
    public int mo774() {
        return 0;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean m9275() {
        if (m9274()) {
            return this.f17520;
        }
        InterfaceC4956 interfaceC4956 = this.f17518;
        interfaceC4956.getClass();
        return interfaceC4956.mo3475();
    }

    /* renamed from: ᵔᵢ */
    public long mo778(long j, long j2) {
        if (this.f17508 == 1) {
            return (mo766() || mo781()) ? 1000000L : 10000L;
        }
        return 10000L;
    }

    /* renamed from: ᵔﹳ */
    public abstract void mo779(boolean z, long j);

    /* renamed from: ᵢˏ */
    public void mo3684(float f, float f2) {
    }

    @Override // p392.InterfaceC4653
    /* renamed from: ⁱˊ */
    public void mo780(int i, Object obj) {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media3.exoplayer.ExoPlaybackException m9276(java.lang.Throwable r12, p055.C1495 r13, boolean r14, int r15) {
        /*
            r11 = this;
            r0 = 4
            if (r13 == 0) goto L1a
            boolean r1 = r11.f17506
            if (r1 != 0) goto L1a
            r1 = 1
            r11.f17506 = r1
            r1 = 0
            int r2 = r11.mo762(r13)     // Catch: java.lang.Throwable -> L14 androidx.media3.exoplayer.ExoPlaybackException -> L18
            r2 = r2 & 7
            r11.f17506 = r1
            goto L1b
        L14:
            r0 = move-exception
            r11.f17506 = r1
            throw r0
        L18:
            r11.f17506 = r1
        L1a:
            r2 = r0
        L1b:
            java.lang.String r5 = r11.mo764()
            int r6 = r11.f17516
            ﹳᵢ.ᵢˏ r9 = r11.f17511
            androidx.media3.exoplayer.ExoPlaybackException r1 = new androidx.media3.exoplayer.ExoPlaybackException
            if (r13 != 0) goto L29
            r8 = r0
            goto L2a
        L29:
            r8 = r2
        L2a:
            r2 = 1
            r3 = r12
            r7 = r13
            r10 = r14
            r4 = r15
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.AbstractC4671.m9276(java.lang.Throwable, ʽⁱ.ﹳᐧ, boolean, int):androidx.media3.exoplayer.ExoPlaybackException");
    }

    /* renamed from: ﹳᐧ */
    public void mo5947() {
    }

    /* renamed from: ﾞʻ */
    public abstract boolean mo781();
}
