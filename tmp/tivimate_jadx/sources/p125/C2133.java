package p125;

import java.util.ArrayList;
import java.util.Iterator;
import p207.AbstractC2934;
import p207.AbstractC2936;

/* renamed from: ˈˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2133 extends AbstractC2934 implements Iterable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public byte[] f8322;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f8323;

    public C2133(ArrayList arrayList) {
        super(AbstractC2936.f11108);
        this.f8323 = arrayList;
    }

    public C2133(ArrayList arrayList, byte[] bArr) {
        super(AbstractC2936.f11108);
        this.f8323 = arrayList;
        this.f8322 = bArr;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ArrayList(this.f8323).iterator();
    }

    @Override // p207.AbstractC2934
    /* renamed from: ﹳٴ */
    public final Object mo4944() {
        return new ArrayList(this.f8323);
    }
}
