package p462;

/* renamed from: ﾞﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5419 implements InterfaceC5417 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final Object f20686 = new Object();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile InterfaceC5418 f20687;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile Object f20688;

    /* JADX WARN: Type inference failed for: r0v1, types: [ﾞﹶ.ﹳٴ, java.lang.Object, ﾞﹶ.ʽ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static InterfaceC5417 m10849(InterfaceC5418 interfaceC5418) {
        if (interfaceC5418 instanceof C5419) {
            return interfaceC5418;
        }
        ?? obj = new Object();
        obj.f20688 = f20686;
        obj.f20687 = interfaceC5418;
        return obj;
    }

    @Override // p343.InterfaceC4267
    public final Object get() {
        Object obj;
        Object obj2 = this.f20688;
        Object obj3 = f20686;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f20688;
                if (obj == obj3) {
                    obj = this.f20687.get();
                    Object obj4 = this.f20688;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f20688 = obj;
                    this.f20687 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
