package p080;

import com.bumptech.glide.C0233;
import com.bumptech.glide.C0237;
import com.bumptech.glide.EnumC0235;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p031.C1144;
import p031.InterfaceC1141;
import p031.InterfaceC1147;
import p057.C1515;
import p087.C1750;
import p319.C3934;
import p383.C4586;
import p383.InterfaceC4578;
import p387.C4616;

/* renamed from: ʿʾ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1688 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C1144 f6855;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C1714 f6856;

    /* renamed from: ʽ, reason: contains not printable characters */
    public C0233 f6857;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public Map f6858;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f6859;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f6860;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public EnumC0235 f6861;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f6862;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public Class f6863;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Class f6864;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public InterfaceC1141 f6865;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C3934 f6866;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f6867;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f6870;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f6871;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f6872;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f6869 = new ArrayList();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f6868 = new ArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1694 m4606(Class cls) {
        C1694 c1694;
        Class cls2;
        C0237 m1144 = this.f6857.m1144();
        Class cls3 = this.f6864;
        Class cls4 = this.f6863;
        C1515 c1515 = m1144.f1691;
        C1750 c1750 = (C1750) c1515.f5986.getAndSet(null);
        C1750 c17502 = c1750;
        if (c1750 == null) {
            c17502 = new Object();
        }
        c17502.f7113 = cls;
        c17502.f7112 = cls3;
        c17502.f7111 = cls4;
        synchronized (c1515.f5987) {
            c1694 = (C1694) c1515.f5987.get(c17502);
        }
        c1515.f5986.set(c17502);
        m1144.f1691.getClass();
        if (C1515.f5985.equals(c1694)) {
            return null;
        }
        if (c1694 != null) {
            return c1694;
        }
        C1694 c16942 = null;
        ArrayList m1172 = m1144.m1172(cls, cls3, cls4);
        if (m1172.isEmpty()) {
            cls2 = cls;
        } else {
            cls2 = cls;
            c16942 = new C1694(cls2, cls3, cls4, m1172, m1144.f1693);
        }
        C1694 c16943 = c16942;
        m1144.f1691.m4324(cls2, cls3, cls4, c16943);
        return c16943;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        r1 = r5.f5988;
     */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p031.InterfaceC1145 m4607(java.lang.Object r8) {
        /*
            r7 = this;
            com.bumptech.glide.ˑﹳ r0 = r7.f6857
            com.bumptech.glide.ᵔᵢ r0 = r0.m1144()
            ʼﹳ.ᵎﹶ r0 = r0.f1698
            java.lang.Class r1 = r8.getClass()
            monitor-enter(r0)
            java.util.ArrayList r2 = r0.f4592     // Catch: java.lang.Throwable -> L2a
            int r3 = r2.size()     // Catch: java.lang.Throwable -> L2a
            r4 = 0
        L14:
            if (r4 >= r3) goto L2c
            java.lang.Object r5 = r2.get(r4)     // Catch: java.lang.Throwable -> L2a
            int r4 = r4 + 1
            ʾ.ﹳٴ r5 = (p057.C1516) r5     // Catch: java.lang.Throwable -> L2a
            java.lang.Class r6 = r5.f5989     // Catch: java.lang.Throwable -> L2a
            boolean r6 = r6.isAssignableFrom(r1)     // Catch: java.lang.Throwable -> L2a
            if (r6 == 0) goto L14
            ʼᵔ.ⁱˊ r1 = r5.f5988     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            goto L2e
        L2a:
            r8 = move-exception
            goto L41
        L2c:
            monitor-exit(r0)
            r1 = 0
        L2e:
            if (r1 == 0) goto L31
            return r1
        L31:
            com.bumptech.glide.Registry$NoSourceEncoderAvailableException r0 = new com.bumptech.glide.Registry$NoSourceEncoderAvailableException
            java.lang.Class r8 = r8.getClass()
            java.lang.String r1 = "Failed to find source encoder for data class: "
            java.lang.String r8 = android.support.v4.media.session.AbstractC0001.m22(r8, r1)
            r0.<init>(r8)
            throw r0
        L41:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p080.C1688.m4607(java.lang.Object):ʼᵔ.ⁱˊ");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC1147 m4608(Class cls) {
        InterfaceC1147 interfaceC1147 = (InterfaceC1147) this.f6858.get(cls);
        if (interfaceC1147 == null) {
            Iterator it = this.f6858.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    interfaceC1147 = (InterfaceC1147) entry.getValue();
                    break;
                }
            }
        }
        if (interfaceC1147 != null) {
            return interfaceC1147;
        }
        if (!this.f6858.isEmpty() || !this.f6867) {
            return C4616.f17217;
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList m4609() {
        boolean z = this.f6871;
        ArrayList arrayList = this.f6869;
        if (!z) {
            this.f6871 = true;
            arrayList.clear();
            List m1174 = this.f6857.m1144().m1174(this.f6859);
            int size = m1174.size();
            for (int i = 0; i < size; i++) {
                C4586 mo4900 = ((InterfaceC4578) m1174.get(i)).mo4900(this.f6859, this.f6862, this.f6872, this.f6855);
                if (mo4900 != null) {
                    arrayList.add(mo4900);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList m4610() {
        boolean z = this.f6860;
        ArrayList arrayList = this.f6868;
        if (!z) {
            this.f6860 = true;
            arrayList.clear();
            ArrayList m4609 = m4609();
            int size = m4609.size();
            for (int i = 0; i < size; i++) {
                C4586 c4586 = (C4586) m4609.get(i);
                InterfaceC1141 interfaceC1141 = c4586.f17082;
                List list = c4586.f17081;
                if (!arrayList.contains(interfaceC1141)) {
                    arrayList.add(c4586.f17082);
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (!arrayList.contains(list.get(i2))) {
                        arrayList.add((InterfaceC1141) list.get(i2));
                    }
                }
            }
        }
        return arrayList;
    }
}
