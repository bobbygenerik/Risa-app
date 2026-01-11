package p182;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import j$.util.Objects;
import java.io.IOException;
import p017.C0956;
import p027.C1084;
import p051.AbstractC1387;
import p051.C1395;
import p051.InterfaceC1392;
import p055.AbstractC1464;
import p055.C1495;
import p262.C3433;
import p283.C3569;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p388.C4620;
import p392.AbstractC4671;
import p392.C4644;
import p392.SurfaceHolderCallbackC4642;
import p420.C4987;
import p420.InterfaceC4956;
import p421.C4996;
import ˉˆ.ʿ;
import ˋⁱ.ﾞᴵ;
import ᵎˉ.ⁱˊ;

/* renamed from: ˋـ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2757 extends AbstractC4671 implements Handler.Callback {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public boolean f10490;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final C3433 f10491;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final ⁱˊ f10492;

    /* renamed from: ʿ, reason: contains not printable characters */
    public InterfaceC1392 f10493;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public C1395 f10494;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public C1495 f10495;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final InterfaceC2756 f10496;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public int f10497;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public boolean f10498;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final Handler f10499;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C4996 f10500;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f10501;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public int f10502;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public AbstractC1387 f10503;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final SurfaceHolderCallbackC4642 f10504;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f10505;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public AbstractC1387 f10506;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public InterfaceC2759 f10507;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public long f10508;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public long f10509;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r3v3, types: [ᵎˉ.ⁱˊ, java.lang.Object] */
    public C2757(SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642, Looper looper) {
        super(3);
        ʿ r0 = InterfaceC2756.f10489;
        this.f10504 = surfaceHolderCallbackC4642;
        this.f10499 = looper == null ? null : new Handler(looper, this);
        this.f10496 = r0;
        this.f10492 = new Object();
        this.f10500 = new C4996(1, 0);
        this.f10491 = new C3433(14);
        this.f10508 = -9223372036854775807L;
        this.f10509 = -9223372036854775807L;
        this.f10490 = false;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        m6154((C4620) message.obj);
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʻٴ */
    public final void mo756(C1495[] c1495Arr, long j, long j2, C4987 c4987) {
        C1495 c1495 = c1495Arr[0];
        this.f10495 = c1495;
        if (Objects.equals(c1495.f5930, "application/x-media3-cues")) {
            this.f10507 = this.f10495.f5931 == 1 ? new C2755() : new C1084(2);
            return;
        }
        m6150();
        if (this.f10493 != null) {
            this.f10497 = 1;
        } else {
            m6153();
        }
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m6150() {
        AbstractC3731.m7848("Legacy decoding is disabled, can't handle " + this.f10495.f5930 + " samples (expected application/x-media3-cues).", this.f10490 || Objects.equals(this.f10495.f5930, "application/cea-608") || Objects.equals(this.f10495.f5930, "application/x-mp4-cea-608") || Objects.equals(this.f10495.f5930, "application/cea-708"));
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾˋ */
    public final int mo762(C1495 c1495) {
        boolean equals = Objects.equals(c1495.f5930, "application/x-media3-cues");
        String str = c1495.f5930;
        if (!equals) {
            ʿ r0 = this.f10496;
            r0.getClass();
            if (!((ﾞᴵ) r0.ᴵˊ).ﹳٴ(c1495) && !Objects.equals(str, "application/cea-608") && !Objects.equals(str, "application/x-mp4-cea-608") && !Objects.equals(str, "application/cea-708")) {
                return AbstractC1464.m4260(str) ? AbstractC3740.m7927(1, 0, 0, 0) : AbstractC3740.m7927(0, 0, 0, 0);
            }
        }
        return AbstractC3740.m7927(c1495.f5911 == 0 ? 4 : 2, 0, 0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:151:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x023d A[EXC_TOP_SPLITTER, LOOP:2: B:99:0x023d->B:120:0x023d, LOOP_START, SYNTHETIC] */
    @Override // p392.AbstractC4671
    /* renamed from: ʾᵎ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo763(long r19, long r21) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p182.C2757.mo763(long, long):void");
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ */
    public final String mo764() {
        return "TextRenderer";
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long m6151() {
        if (this.f10502 == -1) {
            return Long.MAX_VALUE;
        }
        this.f10506.getClass();
        if (this.f10502 >= this.f10506.mo3438()) {
            return Long.MAX_VALUE;
        }
        return this.f10506.mo3441(this.f10502);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉʿ */
    public final boolean mo766() {
        C1495 c1495 = this.f10495;
        if (c1495 != null) {
            if (Objects.equals(c1495.f5930, "application/x-media3-cues")) {
                InterfaceC2759 interfaceC2759 = this.f10507;
                interfaceC2759.getClass();
                if (interfaceC2759.mo3434(this.f10509) == Long.MIN_VALUE) {
                    try {
                        InterfaceC4956 interfaceC4956 = this.f17518;
                        interfaceC4956.getClass();
                        interfaceC4956.mo3459();
                        return true;
                    } catch (IOException unused) {
                        return false;
                    }
                }
            } else {
                if (this.f10501) {
                    return false;
                }
                if (this.f10498) {
                    AbstractC1387 abstractC1387 = this.f10506;
                    long j = this.f10509;
                    if (abstractC1387 == null || abstractC1387.mo3438() <= 0 || abstractC1387.mo3441(abstractC1387.mo3438() - 1) <= j) {
                        AbstractC1387 abstractC13872 = this.f10503;
                        long j2 = this.f10509;
                        if ((abstractC13872 == null || abstractC13872.mo3438() <= 0 || abstractC13872.mo3441(abstractC13872.mo3438() - 1) <= j2) && this.f10494 != null) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉˆ */
    public final void mo767() {
        this.f10495 = null;
        this.f10508 = -9223372036854775807L;
        C0956 c0956 = C0956.f3901;
        m6155(this.f10509);
        C4620 c4620 = new C4620(c0956);
        Handler handler = this.f10499;
        if (handler != null) {
            handler.obtainMessage(1, c4620).sendToTarget();
        } else {
            m6154(c4620);
        }
        this.f10509 = -9223372036854775807L;
        if (this.f10493 != null) {
            m6152();
            InterfaceC1392 interfaceC1392 = this.f10493;
            interfaceC1392.getClass();
            interfaceC1392.mo750();
            this.f10493 = null;
            this.f10497 = 0;
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m6152() {
        this.f10494 = null;
        this.f10502 = -1;
        AbstractC1387 abstractC1387 = this.f10506;
        if (abstractC1387 != null) {
            abstractC1387.mo743();
            this.f10506 = null;
        }
        AbstractC1387 abstractC13872 = this.f10503;
        if (abstractC13872 != null) {
            abstractC13872.mo743();
            this.f10503 = null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        if (r3.equals("application/cea-608") == false) goto L6;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x003e. Please report as an issue. */
    /* renamed from: ˊʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6153() {
        /*
            r7 = this;
            r0 = 1
            r7.f10505 = r0
            ʽⁱ.ﹳᐧ r1 = r7.f10495
            r1.getClass()
            ˋـ.ˈ r2 = r7.f10496
            ˉˆ.ʿ r2 = (ˉˆ.ʿ) r2
            java.lang.Object r2 = r2.ᴵˊ
            ˋⁱ.ﾞᴵ r2 = (ˋⁱ.ﾞᴵ) r2
            java.lang.String r3 = r1.f5930
            int r4 = r1.f5927
            if (r3 == 0) goto L50
            int r5 = r3.hashCode()
            r6 = -1
            switch(r5) {
                case 930165504: goto L34;
                case 1566015601: goto L2b;
                case 1566016562: goto L20;
                default: goto L1e;
            }
        L1e:
            r0 = r6
            goto L3e
        L20:
            java.lang.String r0 = "application/cea-708"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L29
            goto L1e
        L29:
            r0 = 2
            goto L3e
        L2b:
            java.lang.String r5 = "application/cea-608"
            boolean r5 = r3.equals(r5)
            if (r5 != 0) goto L3e
            goto L1e
        L34:
            java.lang.String r0 = "application/x-mp4-cea-608"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L3d
            goto L1e
        L3d:
            r0 = 0
        L3e:
            switch(r0) {
                case 0: goto L4a;
                case 1: goto L4a;
                case 2: goto L42;
                default: goto L41;
            }
        L41:
            goto L50
        L42:
            ⁱʾ.ﾞᴵ r0 = new ⁱʾ.ﾞᴵ
            java.util.List r1 = r1.f5934
            r0.<init>(r4, r1)
            goto L6e
        L4a:
            ⁱʾ.ʽ r0 = new ⁱʾ.ʽ
            r0.<init>(r4, r3)
            goto L6e
        L50:
            boolean r0 = r2.ﹳٴ(r1)
            if (r0 == 0) goto L76
            ʽᐧ.ﾞʻ r0 = r2.ﹳᐧ(r1)
            ˋـ.ⁱˊ r1 = new ˋـ.ⁱˊ
            java.lang.Class r2 = r0.getClass()
            java.lang.String r2 = r2.getSimpleName()
            java.lang.String r3 = "Decoder"
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2, r0)
            r0 = r1
        L6e:
            r7.f10493 = r0
            long r1 = r7.f17519
            r0.mo9157(r1)
            return
        L76:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Attempted to create decoder for unsupported MIME type: "
            java.lang.String r1 = p035.AbstractC1220.m3771(r1, r3)
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p182.C2757.m6153():void");
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m6154(C4620 c4620) {
        C0956 c0956 = c4620.f17229;
        SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642 = this.f10504;
        surfaceHolderCallbackC4642.f17344.f17365.ᵎﹶ(27, new C3569(24, c0956));
        C4644 c4644 = surfaceHolderCallbackC4642.f17344;
        c4644.f17412 = c4620;
        c4644.f17365.ᵎﹶ(27, new C3569(21, c4620));
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long m6155(long j) {
        AbstractC3731.m7857(j != -9223372036854775807L);
        return j - this.f17517;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public final void mo779(boolean z, long j) {
        this.f10509 = j;
        InterfaceC2759 interfaceC2759 = this.f10507;
        if (interfaceC2759 != null) {
            interfaceC2759.clear();
        }
        C0956 c0956 = C0956.f3901;
        m6155(this.f10509);
        C4620 c4620 = new C4620(c0956);
        Handler handler = this.f10499;
        if (handler != null) {
            handler.obtainMessage(1, c4620).sendToTarget();
        } else {
            m6154(c4620);
        }
        this.f10498 = false;
        this.f10501 = false;
        this.f10508 = -9223372036854775807L;
        C1495 c1495 = this.f10495;
        if (c1495 == null || Objects.equals(c1495.f5930, "application/x-media3-cues")) {
            return;
        }
        if (this.f10497 == 0) {
            m6152();
            InterfaceC1392 interfaceC1392 = this.f10493;
            interfaceC1392.getClass();
            interfaceC1392.flush();
            interfaceC1392.mo9157(this.f17519);
            return;
        }
        m6152();
        InterfaceC1392 interfaceC13922 = this.f10493;
        interfaceC13922.getClass();
        interfaceC13922.mo750();
        this.f10493 = null;
        this.f10497 = 0;
        m6153();
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ */
    public final boolean mo781() {
        return this.f10501;
    }
}
