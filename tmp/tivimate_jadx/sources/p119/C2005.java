package p119;

/* renamed from: ˈʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2005 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final byte[] f7880 = new byte[1792];

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f7881;

    /* renamed from: ˈ, reason: contains not printable characters */
    public char f7882;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f7883;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final CharSequence f7884;

    static {
        for (int i = 0; i < 1792; i++) {
            f7880[i] = Character.getDirectionality(i);
        }
    }

    public C2005(CharSequence charSequence) {
        this.f7884 = charSequence;
        this.f7883 = charSequence.length();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte m4983() {
        int i = this.f7881 - 1;
        CharSequence charSequence = this.f7884;
        char charAt = charSequence.charAt(i);
        this.f7882 = charAt;
        if (Character.isLowSurrogate(charAt)) {
            int codePointBefore = Character.codePointBefore(charSequence, this.f7881);
            this.f7881 -= Character.charCount(codePointBefore);
            return Character.getDirectionality(codePointBefore);
        }
        this.f7881--;
        char c = this.f7882;
        return c < 1792 ? f7880[c] : Character.getDirectionality(c);
    }
}
