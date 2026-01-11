package p072;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p010.AbstractC0844;
import p010.C0845;
import p018.AbstractC1019;
import p018.C1018;
import p035.AbstractC1220;
import p223.C3056;

/* renamed from: ʾᵎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1633 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C0845 f6499;

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f6500;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1635 f6501;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f6502;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f6505;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1633 f6507;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public HashSet f6506 = null;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f6503 = 0;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f6504 = Integer.MIN_VALUE;

    public C1633(C1635 c1635, int i) {
        this.f6501 = c1635;
        this.f6502 = i;
    }

    public final String toString() {
        return this.f6501.f6547 + ":" + AbstractC1220.m3792(this.f6502);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0026. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0063 A[RETURN] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4416(p072.C1633 r11) {
        /*
            r10 = this;
            r0 = 0
            if (r11 != 0) goto L5
            goto L65
        L5:
            ʾᵎ.ˈ r1 = r11.f6501
            int r11 = r11.f6502
            r2 = 6
            int r3 = r10.f6502
            r4 = 1
            if (r11 != r3) goto L1c
            if (r3 != r2) goto L63
            boolean r11 = r1.f6557
            if (r11 == 0) goto L65
            ʾᵎ.ˈ r11 = r10.f6501
            boolean r11 = r11.f6557
            if (r11 != 0) goto L63
            goto L65
        L1c:
            int r5 = p010.AbstractC0844.m3018(r3)
            r6 = 4
            r7 = 2
            r8 = 9
            r9 = 8
            switch(r5) {
                case 0: goto L65;
                case 1: goto L53;
                case 2: goto L3f;
                case 3: goto L53;
                case 4: goto L3f;
                case 5: goto L3a;
                case 6: goto L33;
                case 7: goto L65;
                case 8: goto L65;
                default: goto L29;
            }
        L29:
            java.lang.AssertionError r11 = new java.lang.AssertionError
            java.lang.String r0 = p035.AbstractC1220.m3792(r3)
            r11.<init>(r0)
            throw r11
        L33:
            if (r11 == r2) goto L65
            if (r11 == r9) goto L65
            if (r11 == r8) goto L65
            goto L63
        L3a:
            if (r11 == r7) goto L65
            if (r11 != r6) goto L63
            goto L65
        L3f:
            r2 = 3
            if (r11 == r2) goto L48
            r2 = 5
            if (r11 != r2) goto L46
            goto L48
        L46:
            r2 = r0
            goto L49
        L48:
            r2 = r4
        L49:
            boolean r1 = r1 instanceof p072.C1638
            if (r1 == 0) goto L52
            if (r2 != 0) goto L63
            if (r11 != r8) goto L65
            goto L63
        L52:
            return r2
        L53:
            if (r11 == r7) goto L5a
            if (r11 != r6) goto L58
            goto L5a
        L58:
            r2 = r0
            goto L5b
        L5a:
            r2 = r4
        L5b:
            boolean r1 = r1 instanceof p072.C1638
            if (r1 == 0) goto L64
            if (r2 != 0) goto L63
            if (r11 != r9) goto L65
        L63:
            return r4
        L64:
            return r2
        L65:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p072.C1633.m4416(ʾᵎ.ʽ):boolean");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4417(int i, ArrayList arrayList, C1018 c1018) {
        HashSet hashSet = this.f6506;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AbstractC1019.m3339(((C1633) it.next()).f6501, i, arrayList, c1018);
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m4418() {
        HashSet hashSet;
        C1633 c1633 = this.f6507;
        if (c1633 != null && (hashSet = c1633.f6506) != null) {
            hashSet.remove(this);
            if (this.f6507.f6506.size() == 0) {
                this.f6507.f6506 = null;
            }
        }
        this.f6506 = null;
        this.f6507 = null;
        this.f6503 = 0;
        this.f6504 = Integer.MIN_VALUE;
        this.f6500 = false;
        this.f6505 = 0;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m4419() {
        if (this.f6500) {
            return this.f6505;
        }
        return 0;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m4420() {
        C1633 c1633;
        if (this.f6501.f6536 == 8) {
            return 0;
        }
        int i = this.f6504;
        return (i == Integer.MIN_VALUE || (c1633 = this.f6507) == null || c1633.f6501.f6536 != 8) ? this.f6503 : i;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m4421() {
        C0845 c0845 = this.f6499;
        if (c0845 == null) {
            this.f6499 = new C0845(1);
        } else {
            c0845.m3022();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m4422() {
        HashSet hashSet = this.f6506;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((C1633) it.next()).m4427().m4423()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m4423() {
        return this.f6507 != null;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m4424(C1633 c1633, int i, int i2, boolean z) {
        if (c1633 == null) {
            m4418();
            return true;
        }
        if (!z && !m4416(c1633)) {
            return false;
        }
        this.f6507 = c1633;
        if (c1633.f6506 == null) {
            c1633.f6506 = new HashSet();
        }
        HashSet hashSet = this.f6507.f6506;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f6503 = i;
        this.f6504 = i2;
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4425(C1633 c1633, int i) {
        m4424(c1633, i, Integer.MIN_VALUE, false);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m4426(int i) {
        this.f6505 = i;
        this.f6500 = true;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1633 m4427() {
        int i = this.f6502;
        int m3018 = AbstractC0844.m3018(i);
        C1635 c1635 = this.f6501;
        switch (m3018) {
            case 0:
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return null;
            case 1:
                return c1635.f6559;
            case 2:
                return c1635.f6564;
            case 3:
                return c1635.f6561;
            case 4:
                return c1635.f6548;
            default:
                throw new AssertionError(AbstractC1220.m3792(i));
        }
    }
}
