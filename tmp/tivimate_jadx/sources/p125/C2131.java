package p125;

import com.hierynomus.asn1.ASN1ParseException;
import java.io.IOException;
import java.util.Iterator;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p207.EnumC2935;
import p450.C5362;
import ﹳˋ.ʼˎ;

/* renamed from: ˈˑ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2131 extends AbstractC2934 implements Iterable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public byte[] f8316;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ʼˎ f8317;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AbstractC2934 f8318;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f8319;

    public C2131(AbstractC2936 abstractC2936, AbstractC2934 abstractC2934, boolean z) {
        super(z ? abstractC2936.m6462(EnumC2935.f11102) : abstractC2936.m6462(abstractC2934.f11101.f11116));
        this.f8318 = abstractC2934;
        this.f8319 = z;
        this.f8316 = null;
    }

    public C2131(AbstractC2936 abstractC2936, byte[] bArr, ʼˎ r3) {
        super(abstractC2936);
        this.f8319 = true;
        this.f8316 = bArr;
        this.f8317 = r3;
        this.f8318 = null;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return ((C2133) m5095(AbstractC2936.f11108)).iterator();
    }

    @Override // p207.AbstractC2934
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C2131.class.getSimpleName());
        sb.append("[");
        sb.append(this.f11101);
        AbstractC2934 abstractC2934 = this.f8318;
        if (abstractC2934 != null) {
            sb.append(",");
            sb.append(abstractC2934);
        } else {
            sb.append(",<unknown>");
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC2934 m5094() {
        AbstractC2934 abstractC2934 = this.f8318;
        if (abstractC2934 != null) {
            return abstractC2934;
        }
        try {
            C5362 c5362 = new C5362(this.f8317, this.f8316);
            try {
                AbstractC2934 m10758 = c5362.m10758();
                c5362.close();
                return m10758;
            } finally {
            }
        } catch (ASN1ParseException e) {
            throw new ASN1ParseException(e, "Unable to parse the explicit Tagged Object with %s, it might be implicit", this.f11101);
        } catch (IOException e2) {
            throw new ASN1ParseException(e2, "Could not parse the inputstream", new Object[0]);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC2934 m5095(AbstractC2936 abstractC2936) {
        AbstractC2934 abstractC2934 = this.f8318;
        if (abstractC2934 != null && abstractC2934.f11101.equals(abstractC2936)) {
            return abstractC2934;
        }
        if (abstractC2934 != null || this.f8316 == null) {
            throw new ASN1ParseException("Unable to parse the implicit Tagged Object with %s, it is explicit", abstractC2936);
        }
        return abstractC2936.mo6458(this.f8317).ᐧˎ(abstractC2936, this.f8316);
    }

    @Override // p207.AbstractC2934
    /* renamed from: ﹳٴ */
    public final Object mo4944() {
        return m5094();
    }
}
