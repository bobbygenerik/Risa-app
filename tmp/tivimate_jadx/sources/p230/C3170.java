package p230;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import p010.AbstractC0844;
import p307.AbstractC3740;
import ʽٴ.ˈ;
import ʿˋ.ʽʽ;
import ˏˆ.ﹳٴ;
import ᵎˉ.ⁱˊ;

/* renamed from: ˑʿ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3170 extends AbstractC3143 {

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public int f12111;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public ArrayList f12108 = new ArrayList();

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public boolean f12110 = true;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public boolean f12109 = false;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public int f12112 = 0;

    @Override // p230.AbstractC3143
    public final void cancel() {
        super.cancel();
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).cancel();
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ʼʼ */
    public final boolean mo6896() {
        for (int i = 0; i < this.f12108.size(); i++) {
            if (((AbstractC3143) this.f12108.get(i)).mo6896()) {
                return true;
            }
        }
        return false;
    }

    @Override // p230.AbstractC3143
    /* renamed from: ʼˎ */
    public final void mo6898(C3171 c3171) {
        View view = c3171.f12114;
        if (m6921(view)) {
            ArrayList arrayList = this.f12108;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                AbstractC3143 abstractC3143 = (AbstractC3143) obj;
                if (abstractC3143.m6921(view)) {
                    abstractC3143.mo6898(c3171);
                    c3171.f12113.add(abstractC3143);
                }
            }
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ʿ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final void mo6905(TimeInterpolator timeInterpolator) {
        this.f12112 |= 1;
        ArrayList arrayList = this.f12108;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC3143) this.f12108.get(i)).mo6905(timeInterpolator);
            }
        }
        this.f12036 = timeInterpolator;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m6982(int i) {
        if (i == 0) {
            this.f12110 = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException(AbstractC3740.m7932(i, "Invalid parameter for TransitionSet ordering: "));
            }
            this.f12110 = false;
        }
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m6983(AbstractC3143 abstractC3143) {
        this.f12108.add(abstractC3143);
        abstractC3143.f12045 = this;
        long j = this.f12030;
        if (j >= 0) {
            abstractC3143.mo6904(j);
        }
        if ((this.f12112 & 1) != 0) {
            abstractC3143.mo6905(this.f12036);
        }
        if ((this.f12112 & 2) != 0) {
            abstractC3143.mo6911();
        }
        if ((this.f12112 & 4) != 0) {
            abstractC3143.mo6913(this.f12038);
        }
        if ((this.f12112 & 8) != 0) {
            abstractC3143.mo6927(this.f12048);
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˉـ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final void mo6904(long j) {
        ArrayList arrayList;
        this.f12030 = j;
        if (j < 0 || (arrayList = this.f12108) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6904(j);
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˉٴ */
    public final AbstractC3143 mo6908(InterfaceC3165 interfaceC3165) {
        super.mo6908(interfaceC3165);
        return this;
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˊʻ */
    public final void mo6909(View view) {
        super.mo6909(view);
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6909(view);
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˊˋ */
    public final void mo6910(long j) {
        this.f12047 = j;
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˋᵔ */
    public final void mo6911() {
        this.f12112 |= 2;
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6911();
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˑٴ */
    public final void mo6913(ⁱˊ r3) {
        super.mo6913(r3);
        this.f12112 |= 4;
        if (this.f12108 != null) {
            for (int i = 0; i < this.f12108.size(); i++) {
                ((AbstractC3143) this.f12108.get(i)).mo6913(r3);
            }
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˑﹳ */
    public final void mo6914(C3171 c3171) {
        View view = c3171.f12114;
        if (m6921(view)) {
            ArrayList arrayList = this.f12108;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                AbstractC3143 abstractC3143 = (AbstractC3143) obj;
                if (abstractC3143.m6921(view)) {
                    abstractC3143.mo6914(c3171);
                    c3171.f12113.add(abstractC3143);
                }
            }
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: יـ */
    public final void mo6915(ViewGroup viewGroup) {
        super.mo6915(viewGroup);
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6915(viewGroup);
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ـˏ */
    public final String mo6917(String str) {
        String mo6917 = super.mo6917(str);
        for (int i = 0; i < this.f12108.size(); i++) {
            StringBuilder m3017 = AbstractC0844.m3017(mo6917, "\n");
            m3017.append(((AbstractC3143) this.f12108.get(i)).mo6917(str + "  "));
            mo6917 = m3017.toString();
        }
        return mo6917;
    }

    @Override // p230.AbstractC3143
    /* renamed from: ٴʼ */
    public final void mo6918(View view) {
        super.mo6918(view);
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6918(view);
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ٴᵢ */
    public final void mo6919() {
        this.f12032 = 0L;
        int i = 0;
        C3150 c3150 = new C3150(this, i);
        while (i < this.f12108.size()) {
            AbstractC3143 abstractC3143 = (AbstractC3143) this.f12108.get(i);
            abstractC3143.m6932(c3150);
            abstractC3143.mo6919();
            long j = abstractC3143.f12032;
            if (this.f12110) {
                this.f12032 = Math.max(this.f12032, j);
            } else {
                long j2 = this.f12032;
                abstractC3143.f12051 = j2;
                this.f12032 = j2 + j;
            }
            i++;
        }
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final AbstractC3143 m6985(int i) {
        if (i < 0 || i >= this.f12108.size()) {
            return null;
        }
        return (AbstractC3143) this.f12108.get(i);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵎˊ */
    public final void mo6923() {
        if (this.f12108.isEmpty()) {
            m6897();
            m6899();
            return;
        }
        C3150 c3150 = new C3150();
        c3150.f12066 = this;
        ArrayList arrayList = this.f12108;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((AbstractC3143) obj).m6932(c3150);
        }
        this.f12111 = this.f12108.size();
        if (this.f12110) {
            ArrayList arrayList2 = this.f12108;
            int size2 = arrayList2.size();
            while (i < size2) {
                Object obj2 = arrayList2.get(i);
                i++;
                ((AbstractC3143) obj2).mo6923();
            }
            return;
        }
        for (int i3 = 1; i3 < this.f12108.size(); i3++) {
            ((AbstractC3143) this.f12108.get(i3 - 1)).m6932(new C3150((AbstractC3143) this.f12108.get(i3), 2));
        }
        AbstractC3143 abstractC3143 = (AbstractC3143) this.f12108.get(0);
        if (abstractC3143 != null) {
            abstractC3143.mo6923();
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵎⁱ */
    public final void mo6924(View view) {
        for (int i = 0; i < this.f12108.size(); i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6924(view);
        }
        this.f12040.remove(view);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵔʾ */
    public final void mo6925(ViewGroup viewGroup, ﹳٴ r13, ﹳٴ r14, ArrayList arrayList, ArrayList arrayList2) {
        long j = this.f12047;
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            AbstractC3143 abstractC3143 = (AbstractC3143) this.f12108.get(i);
            if (j > 0 && (this.f12110 || i == 0)) {
                long j2 = abstractC3143.f12047;
                if (j2 > 0) {
                    abstractC3143.mo6910(j2 + j);
                } else {
                    abstractC3143.mo6910(j);
                }
            }
            abstractC3143.mo6925(viewGroup, r13, r14, arrayList, arrayList2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    @Override // p230.AbstractC3143
    /* renamed from: ᵔי */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo6926(long r20, long r22) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p230.C3170.mo6926(long, long):void");
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵔٴ */
    public final void mo6927(ˈ r4) {
        this.f12048 = r4;
        this.f12112 |= 8;
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6927(r4);
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵔᵢ */
    public final void mo6928(C3171 c3171) {
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6928(c3171);
        }
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵢˏ */
    public final boolean mo6930() {
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            if (!((AbstractC3143) this.f12108.get(i)).mo6930()) {
                return false;
            }
        }
        return true;
    }

    @Override // p230.AbstractC3143
    /* renamed from: ⁱˊ */
    public final void mo6931(View view) {
        for (int i = 0; i < this.f12108.size(); i++) {
            ((AbstractC3143) this.f12108.get(i)).mo6931(view);
        }
        this.f12040.add(view);
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m6986(ʽʽ r1) {
        super.m6932(r1);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ﾞʻ */
    public final AbstractC3143 clone() {
        C3170 c3170 = (C3170) super.clone();
        c3170.f12108 = new ArrayList();
        int size = this.f12108.size();
        for (int i = 0; i < size; i++) {
            AbstractC3143 clone = ((AbstractC3143) this.f12108.get(i)).clone();
            c3170.f12108.add(clone);
            clone.f12045 = c3170;
        }
        return c3170;
    }
}
