package p018;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import p010.AbstractC0844;
import p010.C0842;
import p035.AbstractC1220;
import p072.AbstractC1634;
import p072.C1635;
import p072.C1636;
import ٴﾞ.ˆʾ;

/* renamed from: ʼʼ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1018 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int f4028;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f4029;

    /* renamed from: ˈ, reason: contains not printable characters */
    public ArrayList f4030;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f4031;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f4032;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ArrayList f4033;

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f4029;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        String m3782 = AbstractC1220.m3782(sb, this.f4032, "] <");
        ArrayList arrayList = this.f4033;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            StringBuilder m3017 = AbstractC0844.m3017(m3782, " ");
            m3017.append(((C1635) obj).f6547);
            m3782 = m3017.toString();
        }
        return AbstractC1220.m3791(m3782, " >");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3330(int i, C1018 c1018) {
        int i2 = c1018.f4032;
        ArrayList arrayList = this.f4033;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            C1635 c1635 = (C1635) obj;
            ArrayList arrayList2 = c1018.f4033;
            if (!arrayList2.contains(c1635)) {
                arrayList2.add(c1635);
            }
            if (i == 0) {
                c1635.f6550 = i2;
            } else {
                c1635.f6558 = i2;
            }
        }
        this.f4031 = i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m3331(C0842 c0842, int i) {
        int m2994;
        int m29942;
        ArrayList arrayList = this.f4033;
        if (arrayList.size() == 0) {
            return 0;
        }
        C1636 c1636 = (C1636) ((C1635) arrayList.get(0)).f6545;
        c0842.m3002();
        c1636.mo4469(c0842, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((C1635) arrayList.get(i2)).mo4469(c0842, false);
        }
        if (i == 0 && c1636.f6583 > 0) {
            AbstractC1634.m4430(c1636, c0842, arrayList, 0);
        }
        if (i == 1 && c1636.f6595 > 0) {
            AbstractC1634.m4430(c1636, c0842, arrayList, 1);
        }
        try {
            c0842.m2996();
        } catch (Exception e) {
            System.err.println(e.toString() + "\n" + Arrays.toString(e.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.f4030 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            C1635 c1635 = (C1635) arrayList.get(i3);
            ˆʾ r4 = new ˆʾ(4);
            new WeakReference(c1635);
            C0842.m2994(c1635.f6561);
            C0842.m2994(c1635.f6548);
            C0842.m2994(c1635.f6559);
            C0842.m2994(c1635.f6564);
            C0842.m2994(c1635.f6524);
            this.f4030.add(r4);
        }
        if (i == 0) {
            m2994 = C0842.m2994(c1636.f6561);
            m29942 = C0842.m2994(c1636.f6559);
            c0842.m3002();
        } else {
            m2994 = C0842.m2994(c1636.f6548);
            m29942 = C0842.m2994(c1636.f6564);
            c0842.m3002();
        }
        return m29942 - m2994;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3332(ArrayList arrayList) {
        int size = this.f4033.size();
        if (this.f4031 != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                C1018 c1018 = (C1018) arrayList.get(i);
                if (this.f4031 == c1018.f4032) {
                    m3330(this.f4029, c1018);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }
}
