package p178;

import android.graphics.Bitmap;
import android.os.Trace;
import androidx.media3.exoplayer.image.ImageDecoderException;
import androidx.media3.exoplayer.image.ImageOutput;
import java.util.ArrayDeque;
import p055.C1495;
import p073.C1644;
import p127.C2162;
import p262.C3433;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p392.AbstractC4671;
import p421.C4996;

/* renamed from: ˋˊ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2663 extends AbstractC4671 {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public boolean f10096;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public ImageOutput f10097;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C1644 f10098;

    /* renamed from: ʿ, reason: contains not printable characters */
    public long f10099;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public long f10100;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public C2162 f10101;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f10102;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public C2662 f10103;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public Bitmap f10104;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public C2664 f10105;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C4996 f10106;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f10107;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public C1495 f10108;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f10109;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public C4996 f10110;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f10111;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public int f10112;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final ArrayDeque f10113;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public int f10114;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public C2162 f10115;

    public C2663(C1644 c1644) {
        super(4);
        this.f10098 = c1644;
        this.f10097 = ImageOutput.f1240;
        this.f10106 = new C4996(0, 0);
        this.f10103 = C2662.f10093;
        this.f10113 = new ArrayDeque();
        this.f10100 = -9223372036854775807L;
        this.f10099 = -9223372036854775807L;
        this.f10112 = 0;
        this.f10109 = 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
    
        if (r2 >= r6) goto L15;
     */
    @Override // p392.AbstractC4671
    /* renamed from: ʻٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo756(p055.C1495[] r5, long r6, long r8, p420.C4987 r10) {
        /*
            r4 = this;
            ˋˊ.ˈ r5 = r4.f10103
            long r5 = r5.f10094
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 == 0) goto L31
            java.util.ArrayDeque r5 = r4.f10113
            boolean r6 = r5.isEmpty()
            if (r6 == 0) goto L26
            long r6 = r4.f10100
            int r10 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r10 == 0) goto L31
            long r2 = r4.f10099
            int r10 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r10 == 0) goto L26
            int r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r6 < 0) goto L26
            goto L31
        L26:
            ˋˊ.ˈ r6 = new ˋˊ.ˈ
            long r0 = r4.f10100
            r6.<init>(r0, r8)
            r5.add(r6)
            return
        L31:
            ˋˊ.ˈ r5 = new ˋˊ.ˈ
            r5.<init>(r0, r8)
            r4.f10103 = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p178.C2663.mo756(ʽⁱ.ﹳᐧ[], long, long, ﹳᵢ.ᵢˏ):void");
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʼᐧ */
    public final void mo758(boolean z, boolean z2) {
        this.f10109 = z2 ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0146, code lost:
    
        if (r14 == ((r0 * r1.f5909) - 1)) goto L79;
     */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5942(long r13) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p178.C2663.m5942(long):boolean");
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾˋ */
    public final int mo762(C1495 c1495) {
        this.f10098.getClass();
        return C1644.m4504(c1495);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾᵎ */
    public final void mo763(long j, long j2) {
        if (this.f10111) {
            return;
        }
        if (this.f10108 == null) {
            C3433 c3433 = this.f17503;
            c3433.m7345();
            C4996 c4996 = this.f10106;
            c4996.mo3629();
            int m9273 = m9273(c3433, c4996, 2);
            if (m9273 != -5) {
                if (m9273 == -4) {
                    AbstractC3731.m7857(c4996.m3177(4));
                    this.f10102 = true;
                    this.f10111 = true;
                    return;
                }
                return;
            }
            C1495 c1495 = (C1495) c3433.f13456;
            AbstractC3731.m7868(c1495);
            this.f10108 = c1495;
            this.f10096 = true;
        }
        if (this.f10105 == null) {
            m5946();
        }
        try {
            Trace.beginSection("drainAndFeedDecoder");
            do {
            } while (m5942(j));
            do {
            } while (m5943(j));
            Trace.endSection();
        } catch (ImageDecoderException e) {
            throw m9276(e, null, false, 4003);
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ */
    public final String mo764() {
        return "ImageRenderer";
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if (r2 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x010e, code lost:
    
        if (r2 == false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ae  */
    /* JADX WARN: Type inference failed for: r3v5, types: [ˈـ.ـˆ, java.lang.Object] */
    /* renamed from: ˈٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5943(long r13) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p178.C2663.m5943(long):boolean");
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉʿ */
    public final boolean mo766() {
        int i = this.f10109;
        if (i != 3) {
            return i == 0 && this.f10107;
        }
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉˆ */
    public final void mo767() {
        this.f10108 = null;
        this.f10103 = C2662.f10093;
        this.f10113.clear();
        m5944();
        this.f10097.mo794();
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m5944() {
        this.f10110 = null;
        this.f10112 = 0;
        this.f10100 = -9223372036854775807L;
        C2664 c2664 = this.f10105;
        if (c2664 != null) {
            c2664.mo750();
            this.f10105 = null;
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo5945() {
        m5944();
        this.f10109 = Math.min(this.f10109, 1);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m5946() {
        if (this.f10096) {
            C1495 c1495 = this.f10108;
            c1495.getClass();
            C1644 c1644 = this.f10098;
            c1644.getClass();
            int m4504 = C1644.m4504(c1495);
            if (m4504 != AbstractC3740.m7927(4, 0, 0, 0) && m4504 != AbstractC3740.m7927(3, 0, 0, 0)) {
                throw m9276(new Exception("Provided decoder factory can't create decoder for format."), this.f10108, false, 4005);
            }
            C2664 c2664 = this.f10105;
            if (c2664 != null) {
                c2664.mo750();
            }
            this.f10105 = new C2664(c1644.f6687);
            this.f10096 = false;
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public final void mo779(boolean z, long j) {
        this.f10109 = Math.min(this.f10109, 1);
        this.f10111 = false;
        this.f10102 = false;
        this.f10104 = null;
        this.f10101 = null;
        this.f10115 = null;
        this.f10107 = false;
        this.f10110 = null;
        C2664 c2664 = this.f10105;
        if (c2664 != null) {
            c2664.flush();
        }
        this.f10113.clear();
    }

    @Override // p392.AbstractC4671, p392.InterfaceC4653
    /* renamed from: ⁱˊ */
    public final void mo780(int i, Object obj) {
        if (i != 15) {
            return;
        }
        ImageOutput imageOutput = obj instanceof ImageOutput ? (ImageOutput) obj : null;
        if (imageOutput == null) {
            imageOutput = ImageOutput.f1240;
        }
        this.f10097 = imageOutput;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo5947() {
        m5944();
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ */
    public final boolean mo781() {
        return this.f10111;
    }
}
