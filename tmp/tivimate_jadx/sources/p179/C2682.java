package p179;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import ˉˆ.ʿ;

/* renamed from: ˋˋ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2682 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int[] f10213;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC2741 f10214;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f10215;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f10216;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f10217;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f10218;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f10219;

    public C2682(AbstractC2741 abstractC2741, ArrayList arrayList, int[] iArr, int[] iArr2) {
        int i;
        C2712 c2712;
        int i2;
        this.f10218 = arrayList;
        this.f10217 = iArr;
        this.f10213 = iArr2;
        Arrays.fill(iArr, 0);
        Arrays.fill(iArr2, 0);
        this.f10214 = abstractC2741;
        int mo666 = abstractC2741.mo666();
        this.f10215 = mo666;
        int mo664 = abstractC2741.mo664();
        this.f10219 = mo664;
        this.f10216 = true;
        C2712 c27122 = arrayList.isEmpty() ? null : (C2712) arrayList.get(0);
        if (c27122 == null || c27122.f10313 != 0 || c27122.f10312 != 0) {
            arrayList.add(0, new C2712(0, 0, 0));
        }
        arrayList.add(new C2712(mo666, mo664, 0));
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            C2712 c27123 = (C2712) obj;
            for (int i4 = 0; i4 < c27123.f10311; i4++) {
                int i5 = c27123.f10313 + i4;
                int i6 = c27123.f10312 + i4;
                int i7 = abstractC2741.mo665(i5, i6) ? 1 : 2;
                iArr[i5] = (i6 << 4) | i7;
                iArr2[i6] = (i5 << 4) | i7;
            }
        }
        if (this.f10216) {
            int size2 = arrayList.size();
            int i8 = 0;
            int i9 = 0;
            while (i9 < size2) {
                Object obj2 = arrayList.get(i9);
                i9++;
                C2712 c27124 = (C2712) obj2;
                while (true) {
                    i = c27124.f10313;
                    if (i8 < i) {
                        if (iArr[i8] == 0) {
                            int size3 = arrayList.size();
                            int i10 = 0;
                            int i11 = 0;
                            while (true) {
                                if (i10 < size3) {
                                    c2712 = (C2712) arrayList.get(i10);
                                    while (true) {
                                        i2 = c2712.f10312;
                                        if (i11 < i2) {
                                            if (iArr2[i11] == 0 && abstractC2741.mo663(i8, i11)) {
                                                int i12 = abstractC2741.mo665(i8, i11) ? 8 : 4;
                                                iArr[i8] = (i11 << 4) | i12;
                                                iArr2[i11] = i12 | (i8 << 4);
                                            } else {
                                                i11++;
                                            }
                                        }
                                    }
                                }
                                i11 = c2712.f10311 + i2;
                                i10++;
                            }
                        }
                        i8++;
                    }
                }
                i8 = c27124.f10311 + i;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2670 m6029(ArrayDeque arrayDeque, int i, boolean z) {
        C2670 c2670;
        Iterator it = arrayDeque.iterator();
        while (true) {
            if (!it.hasNext()) {
                c2670 = null;
                break;
            }
            c2670 = (C2670) it.next();
            if (c2670.f10160 == i && c2670.f10158 == z) {
                it.remove();
                break;
            }
        }
        while (it.hasNext()) {
            C2670 c26702 = (C2670) it.next();
            if (z) {
                c26702.f10159--;
            } else {
                c26702.f10159++;
            }
        }
        return c2670;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6030(ʿ r19) {
        int[] iArr;
        AbstractC2741 abstractC2741;
        int i;
        int i2;
        ArrayList arrayList;
        C2682 c2682 = this;
        C2737 c2737 = new C2737(r19);
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList2 = c2682.f10218;
        boolean z = true;
        int size = arrayList2.size() - 1;
        int i3 = c2682.f10215;
        int i4 = c2682.f10219;
        int i5 = i3;
        while (size >= 0) {
            C2712 c2712 = (C2712) arrayList2.get(size);
            int i6 = c2712.f10313;
            int i7 = c2712.f10311;
            int i8 = i6 + i7;
            int i9 = c2712.f10312;
            int i10 = i9 + i7;
            while (true) {
                iArr = c2682.f10217;
                abstractC2741 = c2682.f10214;
                boolean z2 = z;
                i = 0;
                if (i5 <= i8) {
                    break;
                }
                i5--;
                int i11 = iArr[i5];
                if ((i11 & 12) != 0) {
                    arrayList = arrayList2;
                    int i12 = i11 >> 4;
                    C2670 m6029 = m6029(arrayDeque, i12, false);
                    if (m6029 != null) {
                        int i13 = (i3 - m6029.f10159) - 1;
                        c2737.mo6080(i5, i13);
                        if ((i11 & 4) != 0) {
                            c2737.mo6079(i13, z2 ? 1 : 0, abstractC2741.mo662(i5, i12));
                        }
                    } else {
                        arrayDeque.add(new C2670(i5, (i3 - i5) - (z2 ? 1 : 0), z2));
                    }
                } else {
                    arrayList = arrayList2;
                    c2737.mo6078(i5, z2 ? 1 : 0);
                    i3--;
                }
                arrayList2 = arrayList;
                z = true;
            }
            ArrayList arrayList3 = arrayList2;
            while (i4 > i10) {
                i4--;
                int i14 = c2682.f10213[i4];
                if ((i14 & 12) != 0) {
                    int i15 = i14 >> 4;
                    C2670 m60292 = m6029(arrayDeque, i15, true);
                    if (m60292 == null) {
                        arrayDeque.add(new C2670(i4, i3 - i5, false));
                        i2 = 0;
                    } else {
                        i2 = 0;
                        c2737.mo6080((i3 - m60292.f10159) - 1, i5);
                        if ((i14 & 4) != 0) {
                            c2737.mo6079(i5, 1, abstractC2741.mo662(i15, i4));
                        }
                    }
                } else {
                    i2 = i;
                    c2737.mo6081(i5, 1);
                    i3++;
                }
                c2682 = this;
                i = i2;
            }
            int i16 = i9;
            int i17 = i6;
            while (i < i7) {
                if ((iArr[i17] & 15) == 2) {
                    c2737.mo6079(i17, 1, abstractC2741.mo662(i17, i16));
                }
                i17++;
                i16++;
                i++;
            }
            size--;
            c2682 = this;
            z = true;
            i4 = i9;
            i5 = i6;
            arrayList2 = arrayList3;
        }
        c2737.m6133();
    }
}
