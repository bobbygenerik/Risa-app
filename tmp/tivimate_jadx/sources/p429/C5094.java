package p429;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;

/* renamed from: ﹶˆ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5094 extends ThreadLocal {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C5085 f19197;

    public C5094(C5085 c5085) {
        this.f19197 = c5085;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        C5085 c5085 = this.f19197;
        try {
            C5081 c5081 = C5081.f19160;
            Mac mac = (Mac) c5081.f19162.mo9993(c5085.f19174);
            mac.init(c5085.f19172);
            return mac;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
