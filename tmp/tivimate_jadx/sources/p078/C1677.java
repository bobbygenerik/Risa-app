package p078;

import java.util.Iterator;

/* renamed from: ʿʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1677 extends AbstractC1669 implements Iterable {
    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C1678(this, null);
    }

    public final String toString() {
        return "Directory{fileId=" + this.f6779 + ", fileName='" + this.f6781 + "'}";
    }
}
