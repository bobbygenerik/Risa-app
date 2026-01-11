package p348;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import p125.C2131;
import p125.C2133;
import p197.AbstractC2901;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p207.EnumC2933;
import p207.EnumC2935;
import p366.C4476;
import p406.AbstractC4831;
import p450.C5361;

/* renamed from: ᵎᵎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4280 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f15864;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f15865;

    public AbstractC4280(int i, String str) {
        this.f15865 = i;
        this.f15864 = str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract void mo8658(C2131 c2131);

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract void mo8659(byte[] bArr, int i, int i2);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo8660(AbstractC2901 abstractC2901, AbstractC2934 abstractC2934) {
        C2131 c2131 = new C2131(AbstractC2936.m6461(EnumC2933.f11097, this.f15865).m6462(EnumC2935.f11102), abstractC2934, true);
        ArrayList arrayList = new ArrayList();
        arrayList.add(AbstractC4831.f18129);
        arrayList.add(c2131);
        C2131 c21312 = new C2131(AbstractC2936.m6461(EnumC2933.f11096, 0), (AbstractC2934) new C2133(arrayList), false);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C5361 c5361 = new C5361(new C4476(1), byteArrayOutputStream);
        try {
            c5361.m10757(c21312);
            c5361.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            abstractC2901.mo6415(byteArray.length, byteArray);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    c5361.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m8661(AbstractC2934 abstractC2934) {
        int i = this.f15865;
        String str = this.f15864;
        if (abstractC2934 instanceof C2131) {
            C2131 c2131 = (C2131) abstractC2934;
            if (c2131.f11101.f11117 == i) {
                AbstractC2934 m5094 = c2131.m5094();
                if (!(m5094 instanceof C2133)) {
                    throw new Exception("Expected a " + str + " (SEQUENCE), not: " + m5094);
                }
                Iterator it = ((C2133) m5094).iterator();
                while (it.hasNext()) {
                    AbstractC2934 abstractC29342 = (AbstractC2934) it.next();
                    if (!(abstractC29342 instanceof C2131)) {
                        throw new Exception("Expected an ASN.1 TaggedObject as " + str + " contents, not: " + abstractC29342);
                    }
                    mo8658((C2131) abstractC29342);
                }
                return;
            }
        }
        throw new Exception("Expected to find the " + str + " (CHOICE [" + i + "]) header, not: " + abstractC2934);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract byte[] mo8662();
}
