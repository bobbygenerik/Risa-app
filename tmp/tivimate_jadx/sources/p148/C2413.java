package p148;

import androidx.leanback.widget.ʻٴ;
import androidx.leanback.widget.ﾞʻ;
import java.lang.reflect.Array;
import p004.C0815;
import p012.C0881;
import p241.C3234;
import ﹶﾞ.ⁱי;

/* renamed from: ˉⁱ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2413 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final short[][] f9322;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final ʻٴ f9323;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final short[][] f9325;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final short[][] f9326;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C3234 f9327;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C0815 f9328;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final short[] f9329;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final short[][] f9330;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final short[] f9331;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C0881 f9332;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final short[] f9333;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final ʻٴ f9334;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f9336;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final short[] f9337;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final short[] f9338;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f9335 = new int[4];

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ﾞʻ f9324 = new ﾞʻ(6);

    /* JADX WARN: Type inference failed for: r2v10, types: [ʻˆ.ﾞᴵ, java.lang.Object] */
    public C2413(C3234 c3234, C0881 c0881, int i, int i2, int i3) {
        int i4 = 0;
        Class cls = Short.TYPE;
        this.f9326 = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.f9329 = new short[12];
        this.f9338 = new short[12];
        this.f9331 = new short[12];
        this.f9333 = new short[12];
        this.f9322 = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.f9325 = (short[][]) Array.newInstance((Class<?>) cls, 4, 64);
        this.f9330 = new short[][]{new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
        this.f9337 = new short[16];
        this.f9336 = (1 << i3) - 1;
        this.f9323 = new ʻٴ(this);
        this.f9334 = new ʻٴ(this);
        this.f9327 = c3234;
        this.f9332 = c0881;
        ?? obj = new Object();
        obj.f3478 = this;
        obj.f3477 = i;
        obj.f3479 = (1 << i2) - 1;
        obj.f3476 = new ⁱי[1 << (i + i2)];
        while (true) {
            ⁱי[] r1 = (ⁱי[]) obj.f3476;
            if (i4 >= r1.length) {
                this.f9328 = obj;
                m5516();
                return;
            } else {
                r1[i4] = new ⁱי((C0815) obj);
                i4++;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5516() {
        int[] iArr = this.f9335;
        int i = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        this.f9324.ᴵˊ = 0;
        int i2 = 0;
        while (true) {
            short[][] sArr = this.f9326;
            if (i2 >= sArr.length) {
                break;
            }
            C0881.m3088(sArr[i2]);
            i2++;
        }
        C0881.m3088(this.f9329);
        C0881.m3088(this.f9338);
        C0881.m3088(this.f9331);
        C0881.m3088(this.f9333);
        int i3 = 0;
        while (true) {
            short[][] sArr2 = this.f9322;
            if (i3 >= sArr2.length) {
                break;
            }
            C0881.m3088(sArr2[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            short[][] sArr3 = this.f9325;
            if (i4 >= sArr3.length) {
                break;
            }
            C0881.m3088(sArr3[i4]);
            i4++;
        }
        int i5 = 0;
        while (true) {
            short[][] sArr4 = this.f9330;
            if (i5 >= sArr4.length) {
                break;
            }
            C0881.m3088(sArr4[i5]);
            i5++;
        }
        C0881.m3088(this.f9337);
        while (true) {
            ⁱי[] r0 = (ⁱי[]) this.f9328.f3476;
            if (i >= r0.length) {
                this.f9323.ˏי();
                this.f9334.ˏי();
                return;
            } else {
                C0881.m3088((short[]) r0[i].ᴵˊ);
                i++;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00b3 A[SYNTHETIC] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5517() {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p148.C2413.m5517():void");
    }
}
