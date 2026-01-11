package p424;

/* renamed from: ﹳﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5017 extends RuntimeException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f18766;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Throwable f18767;

    public C5017(int i, Throwable th) {
        super(th);
        this.f18766 = i;
        this.f18767 = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f18767;
    }
}
