package p254;

import android.support.v4.media.session.ⁱˊ;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media3.common.ParserException;
import com.bumptech.glide.C0229;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p051.InterfaceC1389;
import p055.C1468;
import p104.C1920;
import p171.C2637;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p229.C3125;
import p305.AbstractC3731;
import p305.C3724;
import p305.C3732;

/* renamed from: יי.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3342 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final SparseArray f13008;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f13009;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f13010;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public int f13011;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final SparseBooleanArray f13012;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final List f13013;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C1920 f13014;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f13015;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f13016;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3732 f13017;

    /* renamed from: יـ, reason: contains not printable characters */
    public InterfaceC3333 f13018;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final SparseBooleanArray f13019;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3351 f13020;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public InterfaceC2646 f13021;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC1389 f13022;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f13023;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f13024;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f13025;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f13026;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C3330 f13027;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final SparseIntArray f13028;

    public C3342(int i, int i2, InterfaceC1389 interfaceC1389, C3724 c3724, C3351 c3351, int i3) {
        this.f13020 = c3351;
        this.f13010 = i3;
        this.f13025 = i;
        this.f13024 = i2;
        this.f13022 = interfaceC1389;
        if (i == 1 || i == 2) {
            this.f13013 = Collections.singletonList(c3724);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f13013 = arrayList;
            arrayList.add(c3724);
        }
        this.f13017 = new C3732(0, new byte[9400]);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f13012 = sparseBooleanArray;
        this.f13019 = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.f13008 = sparseArray;
        this.f13028 = new SparseIntArray();
        this.f13027 = new C3330(i3);
        this.f13021 = InterfaceC2646.f10033;
        this.f13011 = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i4 = 0; i4 < size; i4++) {
            sparseArray.put(sparseArray2.keyAt(i4), (InterfaceC3333) sparseArray2.valueAt(i4));
        }
        sparseArray.put(0, new C3324(new C3125(this)));
        this.f13018 = null;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        if ((this.f13024 & 1) == 0) {
            interfaceC2646 = new C0229(interfaceC2646, this.f13022);
        }
        this.f13021 = interfaceC2646;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v14, types: [ˊﾞ.ᵎﹶ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v15, types: [ʻˆ.ﾞᴵ, java.lang.Object, ˊﾞ.ʼˎ] */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        InterfaceC2622 interfaceC26222;
        ?? r1;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        long j;
        long j2;
        long length = interfaceC2622.getLength();
        int i5 = this.f13025;
        boolean z2 = i5 == 2;
        if (this.f13009) {
            C3330 c3330 = this.f13027;
            if (length != -1 && !z2 && !c3330.f12889) {
                int i6 = this.f13011;
                C3724 c3724 = c3330.f12893;
                int i7 = c3330.f12894;
                C3732 c3732 = c3330.f12888;
                if (i6 <= 0) {
                    c3330.m7152(interfaceC2622);
                    return 0;
                }
                if (c3330.f12895) {
                    if (c3330.f12892 == -9223372036854775807L) {
                        c3330.m7152(interfaceC2622);
                        return 0;
                    }
                    if (c3330.f12890) {
                        long j3 = c3330.f12891;
                        if (j3 == -9223372036854775807L) {
                            c3330.m7152(interfaceC2622);
                            return 0;
                        }
                        c3330.f12887 = c3724.m7826(c3330.f12892) - c3724.m7831(j3);
                        c3330.m7152(interfaceC2622);
                        return 0;
                    }
                    int min = (int) Math.min(i7, interfaceC2622.getLength());
                    long j4 = 0;
                    if (interfaceC2622.getPosition() != j4) {
                        c1468.f5751 = j4;
                        return 1;
                    }
                    c3732.m7886(min);
                    interfaceC2622.mo4600();
                    interfaceC2622.mo4576(c3732.f14534, 0, min);
                    int i8 = c3732.f14533;
                    int i9 = c3732.f14532;
                    while (true) {
                        if (i8 >= i9) {
                            j = -9223372036854775807L;
                            break;
                        }
                        if (c3732.f14534[i8] == 71) {
                            long j5 = ⁱˊ.ˉˆ(c3732, i8, i6);
                            if (j5 != -9223372036854775807L) {
                                j = j5;
                                break;
                            }
                        }
                        i8++;
                    }
                    c3330.f12891 = j;
                    c3330.f12890 = true;
                    return 0;
                }
                long length2 = interfaceC2622.getLength();
                int min2 = (int) Math.min(i7, length2);
                long j6 = length2 - min2;
                if (interfaceC2622.getPosition() != j6) {
                    c1468.f5751 = j6;
                    return 1;
                }
                c3732.m7886(min2);
                interfaceC2622.mo4600();
                interfaceC2622.mo4576(c3732.f14534, 0, min2);
                int i10 = c3732.f14533;
                int i11 = c3732.f14532;
                int i12 = i11 - 188;
                while (true) {
                    if (i12 < i10) {
                        j2 = -9223372036854775807L;
                        break;
                    }
                    byte[] bArr = c3732.f14534;
                    int i13 = -4;
                    int i14 = 0;
                    while (true) {
                        if (i13 > 4) {
                            break;
                        }
                        int i15 = (i13 * 188) + i12;
                        if (i15 < i10 || i15 >= i11 || bArr[i15] != 71) {
                            i14 = 0;
                        } else {
                            i14++;
                            if (i14 == 5) {
                                j2 = ⁱˊ.ˉˆ(c3732, i12, i6);
                                if (j2 != -9223372036854775807L) {
                                    break;
                                }
                            }
                        }
                        i13++;
                    }
                    i12--;
                }
                c3330.f12892 = j2;
                c3330.f12895 = true;
                return 0;
            }
            if (this.f13023) {
                i = 1;
                z = false;
                i2 = i5;
            } else {
                this.f13023 = true;
                long j7 = c3330.f12887;
                if (j7 != -9223372036854775807L) {
                    C3724 c37242 = c3330.f12893;
                    int i16 = this.f13011;
                    ?? obj = new Object();
                    ?? obj2 = new Object();
                    obj2.f3477 = i16;
                    obj2.f3476 = c37242;
                    obj2.f3479 = this.f13010;
                    obj2.f3478 = new C3732();
                    i = 1;
                    i2 = i5;
                    z = false;
                    C1920 c1920 = new C1920(obj, obj2, j7, j7 + 1, 0L, length, 188L, 940);
                    this.f13014 = c1920;
                    this.f13021.mo1133(c1920.f7651);
                } else {
                    i = 1;
                    z = false;
                    i2 = i5;
                    this.f13021.mo1133(new C2637(j7));
                }
            }
            if (this.f13026) {
                this.f13026 = z;
                mo2908(0L, 0L);
                if (interfaceC2622.getPosition() != 0) {
                    c1468.f5751 = 0L;
                    return i;
                }
            }
            C1920 c19202 = this.f13014;
            if (c19202 != null && c19202.f7648 != null) {
                return c19202.m4860(interfaceC2622, c1468);
            }
            interfaceC26222 = interfaceC2622;
            r1 = z;
        } else {
            interfaceC26222 = interfaceC2622;
            r1 = 0;
            i = 1;
            i2 = i5;
        }
        C3732 c37322 = this.f13017;
        byte[] bArr2 = c37322.f14534;
        if (9400 - c37322.f14533 < 188) {
            int m7904 = c37322.m7904();
            if (m7904 > 0) {
                System.arraycopy(bArr2, c37322.f14533, bArr2, r1, m7904);
            }
            c37322.m7897(m7904, bArr2);
        }
        while (true) {
            int m79042 = c37322.m7904();
            SparseArray sparseArray = this.f13008;
            if (m79042 >= 188) {
                int i17 = c37322.f14533;
                int i18 = c37322.f14532;
                byte[] bArr3 = c37322.f14534;
                int i19 = i17;
                while (i19 < i18 && bArr3[i19] != 71) {
                    i19++;
                }
                c37322.m7896(i19);
                int i20 = i19 + 188;
                if (i20 > i18) {
                    int i21 = (i19 - i17) + this.f13016;
                    this.f13016 = i21;
                    i3 = i2;
                    i4 = 2;
                    if (i3 == 2 && i21 > 376) {
                        throw ParserException.m741(null, "Cannot find sync byte. Most likely not a Transport Stream.");
                    }
                } else {
                    i3 = i2;
                    i4 = 2;
                    this.f13016 = r1;
                }
                int i22 = c37322.f14532;
                if (i20 > i22) {
                    return r1;
                }
                int m7893 = c37322.m7893();
                if ((8388608 & m7893) != 0) {
                    c37322.m7896(i20);
                    return r1;
                }
                int i23 = (4194304 & m7893) != 0 ? 1 : r1;
                int i24 = (2096896 & m7893) >> 8;
                boolean z3 = (m7893 & 32) != 0 ? true : r1;
                InterfaceC3333 interfaceC3333 = (m7893 & 16) != 0 ? (InterfaceC3333) sparseArray.get(i24) : null;
                if (interfaceC3333 == null) {
                    c37322.m7896(i20);
                    return r1;
                }
                if (i3 != i4) {
                    int i25 = m7893 & 15;
                    SparseIntArray sparseIntArray = this.f13028;
                    int i26 = sparseIntArray.get(i24, i25 - 1);
                    sparseIntArray.put(i24, i25);
                    if (i26 == i25) {
                        c37322.m7896(i20);
                        return r1;
                    }
                    if (i25 != ((i26 + 1) & 15)) {
                        interfaceC3333.mo7147();
                    }
                }
                if (z3) {
                    int m7874 = c37322.m7874();
                    i23 |= (c37322.m7874() & 64) != 0 ? i4 : r1;
                    c37322.m7900(m7874 - 1);
                }
                boolean z4 = this.f13009;
                if (i3 == i4 || z4 || !this.f13019.get(i24, r1)) {
                    c37322.m7891(i20);
                    interfaceC3333.mo7146(i23, c37322);
                    c37322.m7891(i22);
                }
                if (i3 != i4 && !z4 && this.f13009 && length != -1) {
                    this.f13026 = true;
                }
                c37322.m7896(i20);
                return r1;
            }
            int i27 = c37322.f14532;
            int read = interfaceC26222.read(bArr2, i27, 9400 - i27);
            if (read == -1) {
                int i28 = r1;
                while (i28 < sparseArray.size()) {
                    InterfaceC3333 interfaceC33332 = (InterfaceC3333) sparseArray.valueAt(i28);
                    if (interfaceC33332 instanceof C3327) {
                        C3327 c3327 = (C3327) interfaceC33332;
                        int i29 = (!z2 || c3327.m7150()) ? i : r1;
                        if (c3327.f12862 == 3 && c3327.f12863 == -1 && ((!z2 || !(c3327.f12870 instanceof C3340)) && i29 != 0)) {
                            c3327.mo7146(i, new C3732());
                        }
                    }
                    i28++;
                    i = 1;
                }
                return -1;
            }
            c37322.m7891(i27 + read);
            i = 1;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        C1920 c1920;
        AbstractC3731.m7857(this.f13025 != 2);
        List list = this.f13013;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C3724 c3724 = (C3724) list.get(i);
            boolean z = c3724.m7828() == -9223372036854775807L;
            if (!z) {
                long m7827 = c3724.m7827();
                z = (m7827 == -9223372036854775807L || m7827 == 0 || m7827 == j2) ? false : true;
            }
            if (z) {
                c3724.m7829(j2);
            }
        }
        if (j2 != 0 && (c1920 = this.f13014) != null) {
            c1920.m4859(j2);
        }
        this.f13017.m7886(0);
        this.f13028.clear();
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.f13008;
            if (i2 >= sparseArray.size()) {
                this.f13016 = 0;
                return;
            } else {
                ((InterfaceC3333) sparseArray.valueAt(i2)).mo7147();
                i2++;
            }
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r2 = r2 + 1;
     */
    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2910(p171.InterfaceC2622 r7) {
        /*
            r6 = this;
            ᐧˎ.ﹳᐧ r0 = r6.f13017
            byte[] r0 = r0.f14534
            ˊﾞ.ﾞʻ r7 = (p171.C2651) r7
            r1 = 0
            r2 = 940(0x3ac, float:1.317E-42)
            r7.mo4572(r0, r1, r2, r1)
            r2 = r1
        Ld:
            r3 = 188(0xbc, float:2.63E-43)
            if (r2 >= r3) goto L29
            r3 = r1
        L12:
            r4 = 5
            if (r3 >= r4) goto L24
            int r4 = r3 * 188
            int r4 = r4 + r2
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L21
            int r2 = r2 + 1
            goto Ld
        L21:
            int r3 = r3 + 1
            goto L12
        L24:
            r7.mo4599(r2, r1)
            r7 = 1
            return r7
        L29:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p254.C3342.mo2910(ˊﾞ.ʼᐧ):boolean");
    }
}
