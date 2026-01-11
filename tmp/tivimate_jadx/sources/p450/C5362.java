package p450;

import com.hierynomus.asn1.ASN1ParseException;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.util.Iterator;
import p164.C2584;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p378.C4540;
import p447.C5346;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ﹳˋ.ʼˎ;

/* renamed from: ﾞʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5362 extends FilterInputStream implements Iterable {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final InterfaceC5360 f20401 = AbstractC5359.m10750(C5362.class);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ʼˎ f20402;

    public C5362(C4540 c4540, C2584 c2584) {
        super(c2584);
        this.f20402 = c4540;
    }

    public C5362(ʼˎ r2, byte[] bArr) {
        super(new ByteArrayInputStream(bArr));
        this.f20402 = r2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C5346(this);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AbstractC2934 m10758() {
        ʼˎ r0 = this.f20402;
        try {
            r0.getClass();
            AbstractC2936 abstractC2936 = ʼˎ.ـˏ(this);
            InterfaceC5360 interfaceC5360 = f20401;
            interfaceC5360.mo4094(abstractC2936, "Read ASN.1 tag {}");
            int i = ʼˎ.ʼˈ(this);
            interfaceC5360.mo4094(Integer.valueOf(i), "Read ASN.1 object length: {}");
            AbstractC2934 abstractC2934 = abstractC2936.mo6458(r0).ᐧˎ(abstractC2936, ʼˎ.ﹳـ(i, this));
            interfaceC5360.mo4098(abstractC2934, "Read ASN.1 object: {}");
            return abstractC2934;
        } catch (ASN1ParseException e) {
            throw e;
        } catch (Exception e2) {
            throw new ASN1ParseException(e2, "Cannot parse ASN.1 object from stream", new Object[0]);
        }
    }
}
