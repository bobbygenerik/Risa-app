package p239;

import java.util.Collections;
import java.util.Iterator;
import p111.C1960;
import p125.C2133;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p207.C2932;
import p207.EnumC2935;
import ﹳˋ.ʼˎ;

/* renamed from: ˑᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3207 extends AbstractC2934 implements Iterable {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f12258;

    public AbstractC3207(AbstractC2936 abstractC2936, byte[] bArr) {
        super(abstractC2936);
        this.f12258 = bArr;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        if (this.f11101.f11116 != EnumC2935.f11102) {
            return Collections.singletonList(this).iterator();
        }
        C2932 c2932 = AbstractC2936.f11108;
        ʼˎ r1 = new ʼˎ(23);
        c2932.getClass();
        return ((C2133) new C1960(r1, 5).m4949(c2932, this.f12258)).iterator();
    }
}
