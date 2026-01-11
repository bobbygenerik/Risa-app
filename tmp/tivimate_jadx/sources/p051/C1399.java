package p051;

/* renamed from: ʽᐧ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1399 implements Comparable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f5478;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f5479;

    public C1399(long j, byte[] bArr) {
        this.f5478 = j;
        this.f5479 = bArr;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f5478, ((C1399) obj).f5478);
    }
}
