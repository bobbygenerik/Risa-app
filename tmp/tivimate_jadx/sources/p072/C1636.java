package p072;

import com.parse.ٴʼ;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import p010.C0842;
import p018.AbstractC1014;
import p018.C1010;
import p018.C1015;
import p018.C1020;
import p065.C1603;
import ᵢ.ﹳٴ;

/* renamed from: ʾᵎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1636 extends C1635 {

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public WeakReference f6577;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public C1639[] f6578;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public boolean f6579;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public int f6581;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public int f6582;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public int f6583;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public boolean f6584;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final C0842 f6585;

    /* renamed from: ˑ, reason: contains not printable characters */
    public C1603 f6586;

    /* renamed from: י, reason: contains not printable characters */
    public final C1015 f6587;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public int f6588;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public int f6589;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public final HashSet f6590;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public final C1020 f6591;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public C1639[] f6592;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public boolean f6594;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public int f6595;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public WeakReference f6596;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public WeakReference f6597;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public WeakReference f6598;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public ArrayList f6580 = new ArrayList();

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final ٴʼ f6593 = new ٴʼ(this);

    /* JADX WARN: Type inference failed for: r0v2, types: [ʼʼ.ˑﹳ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    public C1636() {
        ?? obj = new Object();
        obj.f4023 = true;
        obj.f4018 = true;
        obj.f4020 = new ArrayList();
        new ArrayList();
        obj.f4025 = null;
        obj.f4021 = new Object();
        obj.f4022 = new ArrayList();
        obj.f4024 = this;
        obj.f4019 = this;
        this.f6587 = obj;
        this.f6586 = null;
        this.f6579 = false;
        this.f6585 = new C0842();
        this.f6583 = 0;
        this.f6595 = 0;
        this.f6592 = new C1639[4];
        this.f6578 = new C1639[4];
        this.f6589 = 257;
        this.f6594 = false;
        this.f6584 = false;
        this.f6597 = null;
        this.f6596 = null;
        this.f6577 = null;
        this.f6598 = null;
        this.f6590 = new HashSet();
        this.f6591 = new Object();
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static void m4474(C1635 c1635, C1603 c1603, C1020 c1020) {
        int i;
        int i2;
        if (c1603 == null) {
            return;
        }
        int i3 = c1635.f6536;
        int[] iArr = c1635.f6538;
        if (i3 == 8 || (c1635 instanceof C1638) || (c1635 instanceof C1640)) {
            c1020.f4039 = 0;
            c1020.f4044 = 0;
            return;
        }
        int[] iArr2 = c1635.f6546;
        c1020.f4043 = iArr2[0];
        c1020.f4042 = iArr2[1];
        c1020.f4036 = c1635.m4467();
        c1020.f4038 = c1635.m4457();
        c1020.f4035 = false;
        c1020.f4037 = 0;
        boolean z = c1020.f4043 == 3;
        boolean z2 = c1020.f4042 == 3;
        boolean z3 = z && c1635.f6556 > 0.0f;
        boolean z4 = z2 && c1635.f6556 > 0.0f;
        if (z && c1635.m4451(0) && c1635.f6572 == 0 && !z3) {
            c1020.f4043 = 2;
            if (z2 && c1635.f6543 == 0) {
                c1020.f4043 = 1;
            }
            z = false;
        }
        if (z2 && c1635.m4451(1) && c1635.f6543 == 0 && !z4) {
            c1020.f4042 = 2;
            if (z && c1635.f6572 == 0) {
                c1020.f4042 = 1;
            }
            z2 = false;
        }
        if (c1635.mo4441()) {
            c1020.f4043 = 1;
            z = false;
        }
        if (c1635.mo4458()) {
            c1020.f4042 = 1;
            z2 = false;
        }
        if (z3) {
            if (iArr[0] == 4) {
                c1020.f4043 = 1;
            } else if (!z2) {
                if (c1020.f4042 == 1) {
                    i2 = c1020.f4038;
                } else {
                    c1020.f4043 = 2;
                    c1603.m4380(c1635, c1020);
                    i2 = c1020.f4044;
                }
                c1020.f4043 = 1;
                c1020.f4036 = (int) (c1635.f6556 * i2);
            }
        }
        if (z4) {
            if (iArr[1] == 4) {
                c1020.f4042 = 1;
            } else if (!z) {
                if (c1020.f4043 == 1) {
                    i = c1020.f4036;
                } else {
                    c1020.f4042 = 2;
                    c1603.m4380(c1635, c1020);
                    i = c1020.f4039;
                }
                c1020.f4042 = 1;
                if (c1635.f6532 == -1) {
                    c1020.f4038 = (int) (i / c1635.f6556);
                } else {
                    c1020.f4038 = (int) (c1635.f6556 * i);
                }
            }
        }
        c1603.m4380(c1635, c1020);
        c1635.m4446(c1020.f4039);
        c1635.m4464(c1020.f4044);
        c1635.f6557 = c1020.f4041;
        c1635.m4461(c1020.f4040);
        c1020.f4037 = 0;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m4475(C0842 c0842) {
        C1636 c1636;
        C0842 c08422;
        boolean m4478 = m4478(64);
        mo4469(c0842, m4478);
        int size = this.f6580.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            C1635 c1635 = (C1635) this.f6580.get(i);
            boolean[] zArr = c1635.f6513;
            zArr[0] = false;
            zArr[1] = false;
            if (c1635 instanceof C1640) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                C1635 c16352 = (C1635) this.f6580.get(i2);
                if (c16352 instanceof C1640) {
                    C1640 c1640 = (C1640) c16352;
                    for (int i3 = 0; i3 < c1640.f6498; i3++) {
                        C1635 c16353 = c1640.f6497[i3];
                        if (c1640.f6659 || c16353.mo4438()) {
                            int i4 = c1640.f6661;
                            if (i4 == 0 || i4 == 1) {
                                c16353.f6513[0] = true;
                            } else if (i4 == 2 || i4 == 3) {
                                c16353.f6513[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.f6590;
        hashSet.clear();
        for (int i5 = 0; i5 < size; i5++) {
            C1635 c16354 = (C1635) this.f6580.get(i5);
            c16354.getClass();
            boolean z2 = c16354 instanceof C1637;
            if (z2 || (c16354 instanceof C1638)) {
                if (z2) {
                    hashSet.add(c16354);
                } else {
                    c16354.mo4469(c0842, m4478);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C1637 c1637 = (C1637) ((C1635) it.next());
                for (int i6 = 0; i6 < c1637.f6498; i6++) {
                    if (hashSet.contains(c1637.f6497[i6])) {
                        c1637.mo4469(c0842, m4478);
                        hashSet.remove(c1637);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((C1635) it2.next()).mo4469(c0842, m4478);
                }
                hashSet.clear();
            }
        }
        if (C0842.f3582) {
            HashSet hashSet2 = new HashSet();
            for (int i7 = 0; i7 < size; i7++) {
                C1635 c16355 = (C1635) this.f6580.get(i7);
                c16355.getClass();
                if (!(c16355 instanceof C1637) && !(c16355 instanceof C1638)) {
                    hashSet2.add(c16355);
                }
            }
            c1636 = this;
            c08422 = c0842;
            c1636.m4470(this, c08422, hashSet2, this.f6546[0] == 2 ? 0 : 1, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                C1635 c16356 = (C1635) it3.next();
                AbstractC1634.m4429(this, c08422, c16356);
                c16356.mo4469(c08422, m4478);
            }
        } else {
            c1636 = this;
            c08422 = c0842;
            for (int i8 = 0; i8 < size; i8++) {
                C1635 c16357 = (C1635) c1636.f6580.get(i8);
                if (c16357 instanceof C1636) {
                    int[] iArr = c16357.f6546;
                    int i9 = iArr[0];
                    int i10 = iArr[1];
                    if (i9 == 2) {
                        c16357.m4444(1);
                    }
                    if (i10 == 2) {
                        c16357.m4465(1);
                    }
                    c16357.mo4469(c08422, m4478);
                    if (i9 == 2) {
                        c16357.m4444(i9);
                    }
                    if (i10 == 2) {
                        c16357.m4465(i10);
                    }
                } else {
                    AbstractC1634.m4429(this, c08422, c16357);
                    if (!(c16357 instanceof C1637) && !(c16357 instanceof C1638)) {
                        c16357.mo4469(c08422, m4478);
                    }
                }
            }
        }
        if (c1636.f6583 > 0) {
            AbstractC1634.m4430(this, c08422, null, 0);
        }
        if (c1636.f6595 > 0) {
            AbstractC1634.m4430(this, c08422, null, 1);
        }
    }

    @Override // p072.C1635
    /* renamed from: ʽʽ */
    public final void mo4439() {
        this.f6585.m3002();
        this.f6588 = 0;
        this.f6581 = 0;
        this.f6580.clear();
        super.mo4439();
    }

    @Override // p072.C1635
    /* renamed from: ˊʻ */
    public final void mo4449(ﹳٴ r4) {
        super.mo4449(r4);
        int size = this.f6580.size();
        for (int i = 0; i < size; i++) {
            ((C1635) this.f6580.get(i)).mo4449(r4);
        }
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m4476(C1635 c1635, int i) {
        if (i == 0) {
            int i2 = this.f6583 + 1;
            C1639[] c1639Arr = this.f6578;
            if (i2 >= c1639Arr.length) {
                this.f6578 = (C1639[]) Arrays.copyOf(c1639Arr, c1639Arr.length * 2);
            }
            C1639[] c1639Arr2 = this.f6578;
            int i3 = this.f6583;
            c1639Arr2[i3] = new C1639(c1635, 0, this.f6579);
            this.f6583 = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.f6595 + 1;
            C1639[] c1639Arr3 = this.f6592;
            if (i4 >= c1639Arr3.length) {
                this.f6592 = (C1639[]) Arrays.copyOf(c1639Arr3, c1639Arr3.length * 2);
            }
            C1639[] c1639Arr4 = this.f6592;
            int i5 = this.f6595;
            c1639Arr4[i5] = new C1639(c1635, 1, this.f6579);
            this.f6595 = i5 + 1;
        }
    }

    @Override // p072.C1635
    /* renamed from: ˑٴ */
    public final void mo4452(boolean z, boolean z2) {
        super.mo4452(z, z2);
        int size = this.f6580.size();
        for (int i = 0; i < size; i++) {
            ((C1635) this.f6580.get(i)).mo4452(z, z2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ـˏ, reason: contains not printable characters */
    public final boolean m4477(int i, boolean z) {
        int i2;
        int i3;
        boolean z2;
        boolean z3;
        C1015 c1015 = this.f6587;
        ArrayList arrayList = c1015.f4020;
        C1636 c1636 = c1015.f4024;
        int m4443 = c1636.m4443(0);
        int[] iArr = c1636.f6546;
        int m44432 = c1636.m4443(1);
        int m4471 = c1636.m4471();
        int m4454 = c1636.m4454();
        if (z && (m4443 == 2 || m44432 == 2)) {
            int size = arrayList.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    z3 = z;
                    break;
                }
                Object obj = arrayList.get(i4);
                i4++;
                AbstractC1014 abstractC1014 = (AbstractC1014) obj;
                if (abstractC1014.f4017 == i && !abstractC1014.mo3306()) {
                    z3 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z3 && m4443 == 2) {
                    c1636.m4444(1);
                    c1636.m4446(c1015.m3321(c1636, 0));
                    c1636.f6525.f4012.mo3329(c1636.m4467());
                }
            } else if (z3 && m44432 == 2) {
                c1636.m4465(1);
                c1636.m4464(c1015.m3321(c1636, 1));
                c1636.f6542.f4012.mo3329(c1636.m4457());
            }
        }
        if (i == 0) {
            i2 = 0;
            int i5 = iArr[0];
            if (i5 == 1 || i5 == 4) {
                int m4467 = c1636.m4467() + m4471;
                c1636.f6525.f4008.mo3329(m4467);
                c1636.f6525.f4012.mo3329(m4467 - m4471);
                i3 = 1;
            }
            i3 = i2;
        } else {
            i2 = 0;
            int i6 = iArr[1];
            if (i6 == 1 || i6 == 4) {
                int m4457 = c1636.m4457() + m4454;
                c1636.f6542.f4008.mo3329(m4457);
                c1636.f6542.f4012.mo3329(m4457 - m4454);
                i3 = 1;
            }
            i3 = i2;
        }
        c1015.m3323();
        int size2 = arrayList.size();
        int i7 = i2;
        while (i7 < size2) {
            Object obj2 = arrayList.get(i7);
            i7++;
            AbstractC1014 abstractC10142 = (AbstractC1014) obj2;
            if (abstractC10142.f4017 == i && (abstractC10142.f4015 != c1636 || abstractC10142.f4013)) {
                abstractC10142.mo3305();
            }
        }
        int size3 = arrayList.size();
        int i8 = i2;
        while (i8 < size3) {
            Object obj3 = arrayList.get(i8);
            i8++;
            AbstractC1014 abstractC10143 = (AbstractC1014) obj3;
            if (abstractC10143.f4017 == i && (i3 != 0 || abstractC10143.f4015 != c1636)) {
                if (!abstractC10143.f4014.f4049 || !abstractC10143.f4008.f4049 || (!(abstractC10143 instanceof C1010) && !abstractC10143.f4012.f4049)) {
                    z2 = i2;
                    break;
                }
            }
        }
        z2 = 1;
        c1636.m4444(m4443);
        c1636.m4465(m44432);
        return z2;
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final boolean m4478(int i) {
        return (this.f6589 & i) == i;
    }

    @Override // p072.C1635
    /* renamed from: ᵔʾ */
    public final void mo4463(StringBuilder sb) {
        sb.append(this.f6523 + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.f6570);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.f6529);
        sb.append("\n");
        ArrayList arrayList = this.f6580;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((C1635) obj).mo4463(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:203:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0671 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x067f  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x07bf  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x081d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x082a A[LOOP:14: B:279:0x0828->B:280:0x082a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0892  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x08b2  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x08bf  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x08f8  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x08fa  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x08bb  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x089f  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0800  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x090b  */
    /* JADX WARN: Removed duplicated region for block: B:595:0x05d8  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0605 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0616  */
    /* JADX WARN: Removed duplicated region for block: B:623:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:630:0x064b  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x062f  */
    /* JADX WARN: Type inference failed for: r6v89, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [boolean] */
    /* renamed from: ﹳـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4479() {
        /*
            Method dump skipped, instructions count: 2329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p072.C1636.m4479():void");
    }
}
