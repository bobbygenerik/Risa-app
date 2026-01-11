package p095;

/* renamed from: ˆʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1877 extends AbstractC1886 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final char f7516;

    public C1877(char c) {
        this.f7516 = c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CharMatcher.is('");
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        char c = this.f7516;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        sb.append(String.copyValueOf(cArr));
        sb.append("')");
        return sb.toString();
    }

    @Override // p095.AbstractC1886
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo4814(char c) {
        return c == this.f7516;
    }
}
