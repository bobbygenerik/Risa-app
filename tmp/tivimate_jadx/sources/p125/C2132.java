package p125;

import java.util.HashSet;
import java.util.Iterator;
import p207.AbstractC2934;
import p207.AbstractC2936;

/* renamed from: ˈˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2132 extends AbstractC2934 implements Iterable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public byte[] f8320;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashSet f8321;

    public C2132(HashSet hashSet, byte[] bArr) {
        super(AbstractC2936.f11113);
        this.f8321 = hashSet;
        this.f8320 = bArr;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new HashSet(this.f8321).iterator();
    }

    @Override // p207.AbstractC2934
    /* renamed from: ﹳٴ */
    public final Object mo4944() {
        return new HashSet(this.f8321);
    }
}
