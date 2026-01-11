package p385;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p027.C1085;
import p051.AbstractC1387;
import p305.AbstractC3731;
import p305.C3732;
import p388.C4625;

/* renamed from: ⁱʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4605 extends AbstractC4604 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public byte f17142;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public long f17143;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f17144;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public List f17145;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public byte f17146;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f17147;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f17148;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public List f17150;

    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean f17151;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f17152;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f17154;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f17157;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f17158;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static final int[] f17141 = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final int[] f17135 = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final int[] f17139 = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final int[] f17134 = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final int[] f17136 = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final int[] f17140 = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final int[] f17137 = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final boolean[] f17138 = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3732 f17156 = new C3732();

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final ArrayList f17149 = new ArrayList();

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C4610 f17155 = new C4610(0, 4);

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f17153 = 0;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final long f17159 = 16000000;

    public C4605(int i, String str) {
        this.f17144 = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.f17154 = 0;
            this.f17148 = 0;
        } else if (i == 2) {
            this.f17154 = 1;
            this.f17148 = 0;
        } else if (i == 3) {
            this.f17154 = 0;
            this.f17148 = 1;
        } else if (i != 4) {
            AbstractC3731.m7850("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f17154 = 0;
            this.f17148 = 0;
        } else {
            this.f17154 = 1;
            this.f17148 = 1;
        }
        m9164(0);
        m9166();
        this.f17147 = true;
        this.f17143 = -9223372036854775807L;
    }

    @Override // p385.AbstractC4604, p421.InterfaceC4995
    public final void flush() {
        super.flush();
        this.f17150 = null;
        this.f17145 = null;
        m9164(0);
        this.f17158 = 4;
        this.f17155.f17200 = 4;
        m9166();
        this.f17152 = false;
        this.f17151 = false;
        this.f17146 = (byte) 0;
        this.f17142 = (byte) 0;
        this.f17153 = 0;
        this.f17147 = true;
        this.f17143 = -9223372036854775807L;
    }

    @Override // p385.AbstractC4604, p421.InterfaceC4995
    /* renamed from: ʼˎ */
    public final AbstractC1387 mo9159() {
        AbstractC1387 abstractC1387;
        AbstractC1387 mo9159 = super.mo9159();
        if (mo9159 != null) {
            return mo9159;
        }
        long j = this.f17159;
        if (j == -9223372036854775807L) {
            return null;
        }
        long j2 = this.f17143;
        if (j2 == -9223372036854775807L || this.f17129 - j2 < j || (abstractC1387 = (AbstractC1387) this.f17131.pollFirst()) == null) {
            return null;
        }
        this.f17150 = Collections.EMPTY_LIST;
        this.f17143 = -9223372036854775807L;
        C1085 mo9160 = mo9160();
        long j3 = this.f17129;
        abstractC1387.f18690 = j3;
        abstractC1387.f5444 = mo9160;
        abstractC1387.f5445 = j3;
        return abstractC1387;
    }

    @Override // p385.AbstractC4604
    /* renamed from: ˆʾ */
    public final boolean mo9158() {
        return this.f17150 != this.f17145;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9164(int i) {
        int i2 = this.f17157;
        if (i2 == i) {
            return;
        }
        this.f17157 = i;
        if (i != 3) {
            m9166();
            if (i2 == 3 || i == 1 || i == 0) {
                this.f17150 = Collections.EMPTY_LIST;
                return;
            }
            return;
        }
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f17149;
            if (i3 >= arrayList.size()) {
                return;
            }
            ((C4610) arrayList.get(i3)).f17199 = i;
            i3++;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ArrayList m9165() {
        ArrayList arrayList = this.f17149;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        int i = 2;
        for (int i2 = 0; i2 < size; i2++) {
            C4625 m9173 = ((C4610) arrayList.get(i2)).m9173(Integer.MIN_VALUE);
            arrayList2.add(m9173);
            if (m9173 != null) {
                i = Math.min(i, m9173.f17265);
            }
        }
        ArrayList arrayList3 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            C4625 c4625 = (C4625) arrayList2.get(i3);
            if (c4625 != null) {
                if (c4625.f17265 != i) {
                    c4625 = ((C4610) arrayList.get(i3)).m9173(i);
                    c4625.getClass();
                }
                arrayList3.add(c4625);
            }
        }
        return arrayList3;
    }

    @Override // p385.AbstractC4604
    /* renamed from: ᵎﹶ */
    public final C1085 mo9160() {
        List list = this.f17150;
        this.f17145 = list;
        list.getClass();
        return new C1085(list);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:125:0x01c5. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:160:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085 A[SYNTHETIC] */
    @Override // p385.AbstractC4604
    /* renamed from: ᵔᵢ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9161(p385.C4608 r15) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p385.C4605.mo9161(ⁱʾ.ᵎﹶ):void");
    }

    @Override // p385.AbstractC4604, p421.InterfaceC4995
    /* renamed from: ﹳٴ */
    public final void mo750() {
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9166() {
        C4610 c4610 = this.f17155;
        c4610.f17199 = this.f17157;
        c4610.f17202.clear();
        c4610.f17201.clear();
        c4610.f17196.setLength(0);
        c4610.f17197 = 15;
        c4610.f17198 = 0;
        c4610.f17203 = 0;
        ArrayList arrayList = this.f17149;
        arrayList.clear();
        arrayList.add(this.f17155);
    }
}
