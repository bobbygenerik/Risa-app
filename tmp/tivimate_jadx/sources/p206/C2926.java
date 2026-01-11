package p206;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import java.util.List;
import p012.C0881;
import p035.AbstractC1220;
import p051.InterfaceC1390;
import p051.InterfaceC1398;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: ˎᵎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2926 implements InterfaceC1398 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Canvas f11075;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Paint f11076;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C2927 f11077;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C2925 f11078;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Bitmap f11079;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Paint f11080;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C2928 f11081;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final byte[] f11072 = {0, 7, 8, 15};

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final byte[] f11074 = {0, 119, -120, -1};

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final byte[] f11073 = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    public C2926(List list) {
        C3732 c3732 = new C3732((byte[]) list.get(0));
        int m7895 = c3732.m7895();
        int m78952 = c3732.m7895();
        Paint paint = new Paint();
        this.f11076 = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f11080 = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f11075 = new Canvas();
        this.f11077 = new C2927(719, 575, 0, 719, 0, 575);
        this.f11081 = new C2928(0, new int[]{0, -1, -16777216, -8421505}, m6453(), m6454());
        this.f11078 = new C2925(m7895, m78952);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C2928 m6450(C0881 c0881, int i) {
        int m3097;
        int i2;
        int m30972;
        int i3;
        int i4;
        int i5 = 8;
        int m30973 = c0881.m3097(8);
        c0881.m3095(8);
        int i6 = 2;
        int i7 = i - 2;
        int i8 = 0;
        int[] iArr = {0, -1, -16777216, -8421505};
        int[] m6453 = m6453();
        int[] m6454 = m6454();
        while (i7 > 0) {
            int m30974 = c0881.m3097(i5);
            int m30975 = c0881.m3097(i5);
            int[] iArr2 = (m30975 & 128) != 0 ? iArr : (m30975 & 64) != 0 ? m6453 : m6454;
            if ((m30975 & 1) != 0) {
                i3 = c0881.m3097(i5);
                i4 = c0881.m3097(i5);
                m3097 = c0881.m3097(i5);
                m30972 = c0881.m3097(i5);
                i2 = i7 - 6;
            } else {
                int m30976 = c0881.m3097(6) << i6;
                int m30977 = c0881.m3097(4) << 4;
                m3097 = c0881.m3097(4) << 4;
                i2 = i7 - 4;
                m30972 = c0881.m3097(i6) << 6;
                i3 = m30976;
                i4 = m30977;
            }
            if (i3 == 0) {
                i4 = i8;
                m3097 = i4;
                m30972 = 255;
            }
            double d = i3;
            double d2 = i4 - 128;
            double d3 = m3097 - 128;
            iArr2[m30974] = m6456((byte) (255 - (m30972 & 255)), AbstractC3712.m7758((int) ((1.402d * d2) + d), 0, 255), AbstractC3712.m7758((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), AbstractC3712.m7758((int) ((d3 * 1.772d) + d), 0, 255));
            i7 = i2;
            i8 = 0;
            m30973 = m30973;
            m6454 = m6454;
            i5 = 8;
            i6 = 2;
        }
        return new C2928(m30973, iArr, m6453, m6454);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static byte[] m6451(int i, int i2, C0881 c0881) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c0881.m3097(i2);
        }
        return bArr;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static C2922 m6452(C0881 c0881) {
        byte[] bArr;
        int m3097 = c0881.m3097(16);
        c0881.m3095(4);
        int m30972 = c0881.m3097(2);
        boolean m3112 = c0881.m3112();
        c0881.m3095(1);
        byte[] bArr2 = AbstractC3712.f14480;
        if (m30972 == 1) {
            c0881.m3095(c0881.m3097(8) * 16);
        } else if (m30972 == 0) {
            int m30973 = c0881.m3097(16);
            int m30974 = c0881.m3097(16);
            if (m30973 > 0) {
                bArr2 = new byte[m30973];
                c0881.m3092(m30973, bArr2);
            }
            if (m30974 > 0) {
                bArr = new byte[m30974];
                c0881.m3092(m30974, bArr);
                return new C2922(m3097, m3112, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new C2922(m3097, m3112, bArr2, bArr);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int[] m6453() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = m6456(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = m6456(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int[] m6454() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            if (i < 8) {
                iArr[i] = m6456(63, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            } else {
                int i2 = i & 136;
                if (i2 == 0) {
                    iArr[i] = m6456(255, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 8) {
                    iArr[i] = m6456(127, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 128) {
                    iArr[i] = m6456(255, ((i & 1) != 0 ? 43 : 0) + 127 + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + 127 + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + 127 + ((i & 64) == 0 ? 0 : 85));
                } else if (i2 == 136) {
                    iArr[i] = m6456(255, ((i & 1) != 0 ? 43 : 0) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x01d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0203 A[LOOP:3: B:86:0x0156->B:98:0x0203, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ff A[SYNTHETIC] */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m6455(byte[] r21, int[] r22, int r23, int r24, int r25, android.graphics.Paint r26, android.graphics.Canvas r27) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p206.C2926.m6455(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m6456(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    @Override // p051.InterfaceC1398
    public final void reset() {
        C2925 c2925 = this.f11078;
        c2925.f11064.clear();
        c2925.f11065.clear();
        c2925.f11066.clear();
        c2925.f11071.clear();
        c2925.f11067.clear();
        c2925.f11068 = null;
        c2925.f11063 = null;
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ᵎﹶ */
    public final int mo4116() {
        return 2;
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ⁱˊ */
    public final /* synthetic */ InterfaceC1390 mo4117(byte[] bArr, int i, int i2) {
        return AbstractC1220.m3794(this, bArr, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01ea, code lost:
    
        r2.m3090(r12 - r2.m3106());
     */
    /* JADX WARN: Type inference failed for: r1v33, types: [java.lang.Object, androidx.leanback.widget.יﹳ] */
    @Override // p051.InterfaceC1398
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4118(byte[] r42, int r43, int r44, p051.C1393 r45, p305.InterfaceC3734 r46) {
        /*
            Method dump skipped, instructions count: 1032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p206.C2926.mo4118(byte[], int, int, ʽᐧ.ٴﹶ, ᐧˎ.ﾞᴵ):void");
    }
}
