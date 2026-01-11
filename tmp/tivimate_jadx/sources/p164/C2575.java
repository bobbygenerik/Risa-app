package p164;

import java.io.File;
import java.util.ArrayList;
import p152.AbstractC2444;
import p393.AbstractC4701;
import ᵎˉ.ⁱˊ;

/* renamed from: ˊᐧ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2575 implements Comparable {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final String f9776 = File.separator;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2571 f9777;

    public C2575(C2571 c2571) {
        this.f9777 = c2571;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f9777.compareTo(((C2575) obj).f9777);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2575) && AbstractC2444.m5562(((C2575) obj).f9777, this.f9777);
    }

    public final int hashCode() {
        return this.f9777.hashCode();
    }

    public final File toFile() {
        return new File(this.f9777.m5748());
    }

    public final String toString() {
        return this.f9777.m5748();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2575 m5767() {
        C2571 c2571 = AbstractC4701.f17761;
        C2571 c25712 = this.f9777;
        if (AbstractC2444.m5562(c25712, c2571)) {
            return null;
        }
        C2571 c25713 = AbstractC4701.f17764;
        if (AbstractC2444.m5562(c25712, c25713)) {
            return null;
        }
        C2571 c25714 = AbstractC4701.f17763;
        if (AbstractC2444.m5562(c25712, c25714)) {
            return null;
        }
        C2571 c25715 = AbstractC4701.f17762;
        int mo5749 = c25712.mo5749();
        byte[] bArr = c25715.f9767;
        if (c25712.mo5755(mo5749 - bArr.length, c25715, bArr.length) && (c25712.mo5749() == 2 || c25712.mo5755(c25712.mo5749() - 3, c25713, 1) || c25712.mo5755(c25712.mo5749() - 3, c25714, 1))) {
            return null;
        }
        c25712.getClass();
        int mo5747 = c25712.mo5747(c25713.mo5756());
        if (mo5747 == -1) {
            c25712.getClass();
            mo5747 = c25712.mo5747(c25714.mo5756());
        }
        if (mo5747 == 2 && m5772() != null) {
            if (c25712.mo5749() == 3) {
                return null;
            }
            return new C2575(C2571.m5745(c25712, 0, 3, 1));
        }
        if (mo5747 == 1 && c25712.mo5755(0, c25714, c25714.mo5749())) {
            return null;
        }
        if (mo5747 != -1 || m5772() == null) {
            return mo5747 == -1 ? new C2575(c2571) : mo5747 == 0 ? new C2575(C2571.m5745(c25712, 0, 1, 1)) : new C2575(C2571.m5745(c25712, 0, mo5747, 1));
        }
        if (c25712.mo5749() == 2) {
            return null;
        }
        return new C2575(C2571.m5745(c25712, 0, 2, 1));
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2575 m5768(C2575 c2575) {
        C2571 c2571 = c2575.f9777;
        int m9411 = AbstractC4701.m9411(this);
        C2571 c25712 = this.f9777;
        C2575 c25752 = m9411 == -1 ? null : new C2575(c25712.mo5752(0, m9411));
        int m94112 = AbstractC4701.m9411(c2575);
        if (!AbstractC2444.m5562(c25752, m94112 != -1 ? new C2575(c2575.f9777.mo5752(0, m94112)) : null)) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + c2575).toString());
        }
        ArrayList m5771 = m5771();
        ArrayList m57712 = c2575.m5771();
        int min = Math.min(m5771.size(), m57712.size());
        int i = 0;
        while (i < min && AbstractC2444.m5562(m5771.get(i), m57712.get(i))) {
            i++;
        }
        if (i == min && c25712.mo5749() == c2571.mo5749()) {
            return ⁱˊ.ᵔᵢ(".", false);
        }
        if (m57712.subList(i, m57712.size()).indexOf(AbstractC4701.f17762) != -1) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + c2575).toString());
        }
        if (AbstractC2444.m5562(c2571, AbstractC4701.f17761)) {
            return this;
        }
        ?? obj = new Object();
        C2571 m9407 = AbstractC4701.m9407(c2575);
        if (m9407 == null && (m9407 = AbstractC4701.m9407(this)) == null) {
            m9407 = AbstractC4701.m9412(f9776);
        }
        int size = m57712.size();
        for (int i2 = i; i2 < size; i2++) {
            obj.m5838(AbstractC4701.f17762);
            obj.m5838(m9407);
        }
        int size2 = m5771.size();
        while (i < size2) {
            obj.m5838((C2571) m5771.get(i));
            obj.m5838(m9407);
            i++;
        }
        return AbstractC4701.m9408(obj, false);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2575 m5769(String str) {
        ?? obj = new Object();
        obj.m5827(str);
        return AbstractC4701.m9410(this, AbstractC4701.m9408(obj, false), false);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m5770() {
        C2571 c2571 = AbstractC4701.f17764;
        C2571 c25712 = this.f9777;
        c25712.getClass();
        int mo5747 = c25712.mo5747(c2571.mo5756());
        if (mo5747 == -1) {
            C2571 c25713 = AbstractC4701.f17763;
            c25712.getClass();
            mo5747 = c25712.mo5747(c25713.mo5756());
        }
        if (mo5747 != -1) {
            c25712 = C2571.m5745(c25712, mo5747 + 1, 0, 2);
        } else if (m5772() != null && c25712.mo5749() == 2) {
            c25712 = C2571.f9765;
        }
        return c25712.m5748();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList m5771() {
        ArrayList arrayList = new ArrayList();
        int m9411 = AbstractC4701.m9411(this);
        C2571 c2571 = this.f9777;
        if (m9411 == -1) {
            m9411 = 0;
        } else if (m9411 < c2571.mo5749() && c2571.mo5757(m9411) == 92) {
            m9411++;
        }
        int mo5749 = c2571.mo5749();
        int i = m9411;
        while (m9411 < mo5749) {
            if (c2571.mo5757(m9411) == 47 || c2571.mo5757(m9411) == 92) {
                arrayList.add(c2571.mo5752(i, m9411));
                i = m9411 + 1;
            }
            m9411++;
        }
        if (i < c2571.mo5749()) {
            arrayList.add(c2571.mo5752(i, c2571.mo5749()));
        }
        return arrayList;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Character m5772() {
        C2571 c2571 = AbstractC4701.f17764;
        C2571 c25712 = this.f9777;
        if (C2571.m5746(c25712, c2571) != -1 || c25712.mo5749() < 2 || c25712.mo5757(1) != 58) {
            return null;
        }
        char mo5757 = (char) c25712.mo5757(0);
        if (('a' > mo5757 || mo5757 >= '{') && ('A' > mo5757 || mo5757 >= '[')) {
            return null;
        }
        return Character.valueOf(mo5757);
    }
}
