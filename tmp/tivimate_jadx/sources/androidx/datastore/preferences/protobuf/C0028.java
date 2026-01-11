package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0028 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object[] f416;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f417;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f418;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0063 f419;

    public C0028(AbstractC0003 abstractC0003, String str, Object[] objArr) {
        this.f419 = abstractC0003;
        this.f418 = str;
        this.f416 = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f417 = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.f417 = i | (charAt2 << i2);
                return;
            } else {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m237() {
        int i = this.f417;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
