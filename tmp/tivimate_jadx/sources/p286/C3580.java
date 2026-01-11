package p286;

/* renamed from: ٴˑ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3580 implements Comparable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f13980;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f13981;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f13982;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f13983;

    public C3580(int i, int i2, String str, String str2) {
        this.f13981 = i;
        this.f13983 = i2;
        this.f13980 = str;
        this.f13982 = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C3580 c3580 = (C3580) obj;
        int i = this.f13981 - c3580.f13981;
        return i == 0 ? this.f13983 - c3580.f13983 : i;
    }
}
