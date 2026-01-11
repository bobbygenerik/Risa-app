package androidx.lifecycle;

/* renamed from: androidx.lifecycle.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0165 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f1052;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0184 f1053;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final EnumC0174 f1054;

    public RunnableC0165(C0184 c0184, EnumC0174 enumC0174) {
        this.f1053 = c0184;
        this.f1054 = enumC0174;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f1052) {
            return;
        }
        this.f1053.m710(this.f1054);
        this.f1052 = true;
    }
}
