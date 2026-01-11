package j$.time.format;

/* renamed from: j$.time.format.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5430c implements InterfaceC5432e {
    public final char a;

    public C5430c(char c) {
        this.a = c;
    }

    @Override // j$.time.format.InterfaceC5432e
    public final boolean k(y yVar, StringBuilder sb) {
        sb.append(this.a);
        return true;
    }

    @Override // j$.time.format.InterfaceC5432e
    public final int l(v vVar, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char charAt = charSequence.charAt(i);
        char c = this.a;
        return (charAt == c || (!vVar.b && (Character.toUpperCase(charAt) == Character.toUpperCase(c) || Character.toLowerCase(charAt) == Character.toLowerCase(c)))) ? i + 1 : ~i;
    }

    public final String toString() {
        char c = this.a;
        if (c == '\'') {
            return "''";
        }
        return "'" + c + "'";
    }
}
