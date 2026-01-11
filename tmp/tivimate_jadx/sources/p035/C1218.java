package p035;

/* renamed from: ʼﾞ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1218 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f4714;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f4715;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4716;

    public /* synthetic */ C1218(int i, String str, boolean z) {
        this.f4716 = i;
        this.f4715 = str;
        this.f4714 = z;
    }

    public C1218(String str, boolean z) {
        this.f4716 = 0;
        this.f4714 = z;
        this.f4715 = str;
    }

    public String toString() {
        switch (this.f4716) {
            case 2:
                String str = this.f4715;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
                sb.append("{");
                sb.append(str);
                sb.append("}");
                sb.append(this.f4714);
                return sb.toString();
            default:
                return super.toString();
        }
    }
}
