package p361;

import java.util.ArrayList;
import java.util.Arrays;
import p152.AbstractC2444;
import p164.C2571;
import p164.C2599;
import p394.AbstractC4710;

/* renamed from: ᵔᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4381 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f16264;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16267;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f16268;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2599 f16270;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f16269 = Integer.MAX_VALUE;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f16265 = 4096;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C4394[] f16266 = new C4394[8];

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f16271 = 7;

    public C4381(C2599 c2599) {
        this.f16270 = c2599;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8863(C2571 c2571) {
        int[] iArr = AbstractC4379.f16260;
        int mo5749 = c2571.mo5749();
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < mo5749; i++) {
            byte mo5757 = c2571.mo5757(i);
            byte[] bArr = AbstractC4710.f17800;
            j2 += AbstractC4379.f16259[mo5757 & 255];
        }
        int i2 = (int) ((j2 + 7) >> 3);
        int mo57492 = c2571.mo5749();
        C2599 c2599 = this.f16270;
        if (i2 >= mo57492) {
            m8865(c2571.mo5749(), 127, 0);
            c2571.mo5758(c2599, c2571.mo5749());
            return;
        }
        ?? obj = new Object();
        int[] iArr2 = AbstractC4379.f16260;
        int mo57493 = c2571.mo5749();
        int i3 = 0;
        for (int i4 = 0; i4 < mo57493; i4++) {
            byte mo57572 = c2571.mo5757(i4);
            byte[] bArr2 = AbstractC4710.f17800;
            int i5 = mo57572 & 255;
            int i6 = AbstractC4379.f16260[i5];
            byte b = AbstractC4379.f16259[i5];
            j = (j << b) | i6;
            i3 += b;
            while (i3 >= 8) {
                i3 -= 8;
                obj.m5825((int) (j >> i3));
            }
        }
        if (i3 > 0) {
            obj.m5825((int) ((j << (8 - i3)) | (255 >>> i3)));
        }
        C2571 mo5799 = obj.mo5799(obj.f9835);
        m8865(mo5799.mo5749(), 127, 128);
        mo5799.mo5758(c2599, mo5799.mo5749());
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m8864(ArrayList arrayList) {
        int i;
        int i2;
        if (this.f16264) {
            int i3 = this.f16269;
            if (i3 < this.f16265) {
                m8865(i3, 31, 32);
            }
            this.f16264 = false;
            this.f16269 = Integer.MAX_VALUE;
            m8865(this.f16265, 31, 32);
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            C4394 c4394 = (C4394) arrayList.get(i4);
            C2571 mo5753 = c4394.f16349.mo5753();
            C2571 c2571 = c4394.f16348;
            Integer num = (Integer) AbstractC4385.f16288.get(mo5753);
            if (num != null) {
                int intValue = num.intValue();
                i2 = intValue + 1;
                if (2 <= i2 && i2 < 8) {
                    C4394[] c4394Arr = AbstractC4385.f16289;
                    if (AbstractC2444.m5562(c4394Arr[intValue].f16348, c2571)) {
                        i = i2;
                    } else if (AbstractC2444.m5562(c4394Arr[i2].f16348, c2571)) {
                        i2 = intValue + 2;
                        i = i2;
                    }
                }
                i = i2;
                i2 = -1;
            } else {
                i = -1;
                i2 = -1;
            }
            if (i2 == -1) {
                int i5 = this.f16271 + 1;
                int length = this.f16266.length;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    if (AbstractC2444.m5562(this.f16266[i5].f16349, mo5753)) {
                        if (AbstractC2444.m5562(this.f16266[i5].f16348, c2571)) {
                            i2 = AbstractC4385.f16289.length + (i5 - this.f16271);
                            break;
                        } else if (i == -1) {
                            i = (i5 - this.f16271) + AbstractC4385.f16289.length;
                        }
                    }
                    i5++;
                }
            }
            if (i2 != -1) {
                m8865(i2, 127, 128);
            } else if (i == -1) {
                this.f16270.m5825(64);
                m8863(mo5753);
                m8863(c2571);
                m8866(c4394);
            } else {
                C2571 c25712 = C4394.f16342;
                mo5753.getClass();
                if (!mo5753.mo5755(0, c25712, c25712.mo5749()) || AbstractC2444.m5562(C4394.f16341, mo5753)) {
                    m8865(i, 63, 64);
                    m8863(c2571);
                    m8866(c4394);
                } else {
                    m8865(i, 15, 0);
                    m8863(c2571);
                }
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8865(int i, int i2, int i3) {
        C2599 c2599 = this.f16270;
        if (i < i2) {
            c2599.m5825(i | i3);
            return;
        }
        c2599.m5825(i3 | i2);
        int i4 = i - i2;
        while (i4 >= 128) {
            c2599.m5825(128 | (i4 & 127));
            i4 >>>= 7;
        }
        c2599.m5825(i4);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8866(C4394 c4394) {
        int i = c4394.f16347;
        int i2 = this.f16265;
        if (i > i2) {
            C4394[] c4394Arr = this.f16266;
            Arrays.fill(c4394Arr, 0, c4394Arr.length, (Object) null);
            this.f16271 = this.f16266.length - 1;
            this.f16267 = 0;
            this.f16268 = 0;
            return;
        }
        m8867((this.f16268 + i) - i2);
        int i3 = this.f16267 + 1;
        C4394[] c4394Arr2 = this.f16266;
        if (i3 > c4394Arr2.length) {
            C4394[] c4394Arr3 = new C4394[c4394Arr2.length * 2];
            System.arraycopy(c4394Arr2, 0, c4394Arr3, c4394Arr2.length, c4394Arr2.length);
            this.f16271 = this.f16266.length - 1;
            this.f16266 = c4394Arr3;
        }
        int i4 = this.f16271;
        this.f16271 = i4 - 1;
        this.f16266[i4] = c4394;
        this.f16267++;
        this.f16268 += i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8867(int i) {
        int i2;
        if (i > 0) {
            int length = this.f16266.length - 1;
            int i3 = 0;
            while (true) {
                i2 = this.f16271;
                if (length < i2 || i <= 0) {
                    break;
                }
                int i4 = this.f16266[length].f16347;
                i -= i4;
                this.f16268 -= i4;
                this.f16267--;
                i3++;
                length--;
            }
            C4394[] c4394Arr = this.f16266;
            int i5 = i2 + 1;
            System.arraycopy(c4394Arr, i5, c4394Arr, i5 + i3, this.f16267);
            C4394[] c4394Arr2 = this.f16266;
            int i6 = this.f16271 + 1;
            Arrays.fill(c4394Arr2, i6, i6 + i3, (Object) null);
            this.f16271 += i3;
        }
    }
}
