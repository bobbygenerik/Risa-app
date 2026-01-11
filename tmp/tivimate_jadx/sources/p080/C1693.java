package p080;

import com.bumptech.glide.C0237;
import com.bumptech.glide.load.data.InterfaceC0218;
import j$.util.DesugarCollections;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p031.InterfaceC1141;
import p031.InterfaceC1147;
import p087.C1750;
import p255.C3359;
import p383.C4586;
import p383.InterfaceC4578;
import p404.C4790;

/* renamed from: ʿʾ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1693 implements InterfaceC1708, InterfaceC0218 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f6885;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final RunnableC1695 f6886;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f6887 = -1;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public volatile C4586 f6888;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public List f6889;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C1705 f6890;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f6891;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1688 f6892;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC1141 f6893;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public File f6894;

    public C1693(C1688 c1688, RunnableC1695 runnableC1695) {
        this.f6892 = c1688;
        this.f6886 = runnableC1695;
    }

    @Override // p080.InterfaceC1708
    public final void cancel() {
        C4586 c4586 = this.f6888;
        if (c4586 != null) {
            c4586.f17080.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0218
    /* renamed from: ʽ */
    public final void mo1107(Exception exc) {
        this.f6886.mo4617(this.f6890, exc, this.f6888.f17080, 4);
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0218
    /* renamed from: ˈ */
    public final void mo1108(Object obj) {
        this.f6886.mo4628(this.f6893, obj, this.f6888.f17080, 4, this.f6890);
    }

    @Override // p080.InterfaceC1708
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo4613() {
        List list;
        boolean z;
        List list2;
        boolean z2;
        ArrayList m4610 = this.f6892.m4610();
        if (m4610.isEmpty()) {
            return false;
        }
        C1688 c1688 = this.f6892;
        C0237 m1144 = c1688.f6857.m1144();
        Class<?> cls = c1688.f6859.getClass();
        Class cls2 = c1688.f6864;
        Class cls3 = c1688.f6863;
        C4790 c4790 = m1144.f1697;
        C1750 c1750 = (C1750) ((AtomicReference) c4790.f18036).getAndSet(null);
        if (c1750 == null) {
            c1750 = new C1750(cls, cls2, cls3);
        } else {
            c1750.f7113 = cls;
            c1750.f7112 = cls2;
            c1750.f7111 = cls3;
        }
        synchronized (((C3359) c4790.f18034)) {
            list = (List) ((C3359) c4790.f18034).get(c1750);
        }
        ((AtomicReference) c4790.f18036).set(c1750);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            ArrayList m9134 = m1144.f1699.m9134(cls);
            int size = m9134.size();
            int i = 0;
            while (i < size) {
                Object obj = m9134.get(i);
                i++;
                ArrayList arrayList2 = m1144.f1692.יـ((Class) obj, cls2);
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    Class cls4 = (Class) obj2;
                    if (!m1144.f1700.m3428(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            z = false;
            m1144.f1697.m9561(cls, cls2, cls3, DesugarCollections.unmodifiableList(arrayList));
            list2 = arrayList;
        } else {
            z = false;
            list2 = list;
        }
        if (list2.isEmpty()) {
            if (File.class.equals(this.f6892.f6863)) {
                return z;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f6892.f6859.getClass() + " to " + this.f6892.f6863);
        }
        while (true) {
            List list3 = this.f6889;
            if (list3 != null && this.f6891 < list3.size()) {
                this.f6888 = null;
                boolean z3 = z;
                while (!z3 && this.f6891 < this.f6889.size()) {
                    List list4 = this.f6889;
                    int i3 = this.f6891;
                    this.f6891 = i3 + 1;
                    InterfaceC4578 interfaceC4578 = (InterfaceC4578) list4.get(i3);
                    File file = this.f6894;
                    C1688 c16882 = this.f6892;
                    this.f6888 = interfaceC4578.mo4900(file, c16882.f6862, c16882.f6872, c16882.f6855);
                    if (this.f6888 != null && this.f6892.m4606(this.f6888.f17080.mo1113()) != null) {
                        this.f6888.f17080.mo1114(this.f6892.f6861, this);
                        z3 = true;
                    }
                }
                return z3;
            }
            int i4 = this.f6887 + 1;
            this.f6887 = i4;
            if (i4 >= list2.size()) {
                int i5 = this.f6885 + 1;
                this.f6885 = i5;
                if (i5 >= m4610.size()) {
                    return z;
                }
                this.f6887 = z ? 1 : 0;
            }
            InterfaceC1141 interfaceC1141 = (InterfaceC1141) m4610.get(this.f6885);
            Class cls5 = (Class) list2.get(this.f6887);
            InterfaceC1147 m4608 = this.f6892.m4608(cls5);
            C1688 c16883 = this.f6892;
            this.f6890 = new C1705(c16883.f6857.f1661, interfaceC1141, c16883.f6865, c16883.f6862, c16883.f6872, m4608, cls5, c16883.f6855);
            File mo4497 = c16883.f6866.m8106().mo4497(this.f6890);
            this.f6894 = mo4497;
            if (mo4497 != null) {
                this.f6893 = interfaceC1141;
                this.f6889 = this.f6892.f6857.m1144().m1174(mo4497);
                z2 = false;
                this.f6891 = 0;
            } else {
                z2 = false;
            }
            z = z2;
        }
    }
}
