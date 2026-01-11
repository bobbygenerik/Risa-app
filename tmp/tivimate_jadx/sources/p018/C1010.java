package p018;

import java.util.ArrayList;
import p072.C1633;
import p072.C1635;
import p072.C1636;
import p307.AbstractC3740;

/* renamed from: ʼʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1010 extends AbstractC1014 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ArrayList f4004;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f4005;

    public C1010(C1635 c1635, int i) {
        super(c1635);
        C1635 c16352;
        ArrayList arrayList = new ArrayList();
        this.f4004 = arrayList;
        this.f4017 = i;
        C1635 c16353 = this.f4015;
        C1635 m4448 = c16353.m4448(i);
        while (true) {
            c16352 = c16353;
            c16353 = m4448;
            if (c16353 == null) {
                break;
            } else {
                m4448 = c16353.m4448(this.f4017);
            }
        }
        this.f4015 = c16352;
        int i2 = this.f4017;
        arrayList.add(i2 == 0 ? c16352.f6525 : i2 == 1 ? c16352.f6542 : null);
        C1635 m4472 = c16352.m4472(this.f4017);
        while (m4472 != null) {
            int i3 = this.f4017;
            arrayList.add(i3 == 0 ? m4472.f6525 : i3 == 1 ? m4472.f6542 : null);
            m4472 = m4472.m4472(this.f4017);
        }
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            AbstractC1014 abstractC1014 = (AbstractC1014) obj;
            int i5 = this.f4017;
            if (i5 == 0) {
                abstractC1014.f4015.f6569 = this;
            } else if (i5 == 1) {
                abstractC1014.f4015.f6516 = this;
            }
        }
        if (this.f4017 == 0 && ((C1636) this.f4015.f6545).f6579 && arrayList.size() > 1) {
            this.f4015 = ((AbstractC1014) AbstractC3740.m7939(1, arrayList)).f4015;
        }
        this.f4005 = this.f4017 == 0 ? this.f4015.f6527 : this.f4015.f6574;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f4017 == 0 ? "horizontal : " : "vertical : ");
        ArrayList arrayList = this.f4004;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            sb.append("<");
            sb.append((AbstractC1014) obj);
            sb.append("> ");
        }
        return sb.toString();
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long mo3309() {
        ArrayList arrayList = this.f4004;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r5.f4008.f4058 + ((AbstractC1014) arrayList.get(i)).mo3309() + j + r5.f4014.f4058;
        }
        return j;
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˈ */
    public final void mo3303() {
        ArrayList arrayList = this.f4004;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((AbstractC1014) obj).mo3303();
        }
        int size2 = arrayList.size();
        if (size2 < 1) {
            return;
        }
        C1635 c1635 = ((AbstractC1014) arrayList.get(0)).f4015;
        C1635 c16352 = ((AbstractC1014) arrayList.get(size2 - 1)).f4015;
        int i2 = this.f4017;
        C1023 c1023 = this.f4008;
        C1023 c10232 = this.f4014;
        if (i2 == 0) {
            C1633 c1633 = c1635.f6561;
            C1633 c16332 = c16352.f6559;
            C1023 m3314 = AbstractC1014.m3314(c1633, 0);
            int m4420 = c1633.m4420();
            C1635 m3310 = m3310();
            if (m3310 != null) {
                m4420 = m3310.f6561.m4420();
            }
            if (m3314 != null) {
                AbstractC1014.m3316(c10232, m3314, m4420);
            }
            C1023 m33142 = AbstractC1014.m3314(c16332, 0);
            int m44202 = c16332.m4420();
            C1635 m3311 = m3311();
            if (m3311 != null) {
                m44202 = m3311.f6559.m4420();
            }
            if (m33142 != null) {
                AbstractC1014.m3316(c1023, m33142, -m44202);
            }
        } else {
            C1633 c16333 = c1635.f6548;
            C1633 c16334 = c16352.f6564;
            C1023 m33143 = AbstractC1014.m3314(c16333, 1);
            int m44203 = c16333.m4420();
            C1635 m33102 = m3310();
            if (m33102 != null) {
                m44203 = m33102.f6548.m4420();
            }
            if (m33143 != null) {
                AbstractC1014.m3316(c10232, m33143, m44203);
            }
            C1023 m33144 = AbstractC1014.m3314(c16334, 1);
            int m44204 = c16334.m4420();
            C1635 m33112 = m3311();
            if (m33112 != null) {
                m44204 = m33112.f6564.m4420();
            }
            if (m33144 != null) {
                AbstractC1014.m3316(c1023, m33144, -m44204);
            }
        }
        c10232.f4056 = this;
        c1023.f4056 = this;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C1635 m3310() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4004;
            if (i >= arrayList.size()) {
                return null;
            }
            C1635 c1635 = ((AbstractC1014) arrayList.get(i)).f4015;
            if (c1635.f6536 != 8) {
                return c1635;
            }
            i++;
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˑﹳ */
    public final void mo3305() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4004;
            if (i >= arrayList.size()) {
                return;
            }
            ((AbstractC1014) arrayList.get(i)).mo3305();
            i++;
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ٴﹶ */
    public final boolean mo3306() {
        ArrayList arrayList = this.f4004;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((AbstractC1014) arrayList.get(i)).mo3306()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C1635 m3311() {
        ArrayList arrayList = this.f4004;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C1635 c1635 = ((AbstractC1014) arrayList.get(size)).f4015;
            if (c1635.f6536 != 8) {
                return c1635;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:288:0x0392, code lost:
    
        r2 = r2 - r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00dd  */
    @Override // p018.InterfaceC1012
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo3307(p018.InterfaceC1012 r28) {
        /*
            Method dump skipped, instructions count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018.C1010.mo3307(ʼʼ.ˈ):void");
    }

    @Override // p018.AbstractC1014
    /* renamed from: ﾞᴵ */
    public final void mo3308() {
        this.f4009 = null;
        ArrayList arrayList = this.f4004;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((AbstractC1014) obj).mo3308();
        }
    }
}
