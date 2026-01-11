package p254;

/* renamed from: יי.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3339 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f12985;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f12986;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public String f12987;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12988;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12989;

    public C3339(int i, int i2) {
        this(Integer.MIN_VALUE, i, i2);
    }

    public C3339(int i, int i2, int i3) {
        String str;
        if (i != Integer.MIN_VALUE) {
            str = i + "/";
        } else {
            str = "";
        }
        this.f12989 = str;
        this.f12988 = i2;
        this.f12985 = i3;
        this.f12986 = Integer.MIN_VALUE;
        this.f12987 = "";
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7158() {
        if (this.f12986 == Integer.MIN_VALUE) {
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7159() {
        int i = this.f12986;
        this.f12986 = i == Integer.MIN_VALUE ? this.f12988 : i + this.f12985;
        this.f12987 = this.f12989 + this.f12986;
    }
}
