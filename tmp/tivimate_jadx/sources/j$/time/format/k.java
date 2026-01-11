package j$.time.format;

/* loaded from: classes2.dex */
public final class k implements InterfaceC5432e {
    public final InterfaceC5432e a;
    public final int b;
    public final char c;

    public k(InterfaceC5432e interfaceC5432e, int i, char c) {
        this.a = interfaceC5432e;
        this.b = i;
        this.c = c;
    }

    @Override // j$.time.format.InterfaceC5432e
    public final boolean k(y yVar, StringBuilder sb) {
        int length = sb.length();
        if (!this.a.k(yVar, sb)) {
            return false;
        }
        int length2 = sb.length() - length;
        int i = this.b;
        if (length2 <= i) {
            for (int i2 = 0; i2 < i - length2; i2++) {
                sb.insert(length, this.c);
            }
            return true;
        }
        throw new RuntimeException("Cannot print as output of " + length2 + " characters exceeds pad width of " + i);
    }

    @Override // j$.time.format.InterfaceC5432e
    public final int l(v vVar, CharSequence charSequence, int i) {
        boolean z = vVar.c;
        if (i > charSequence.length()) {
            throw new IndexOutOfBoundsException();
        }
        if (i == charSequence.length()) {
            return ~i;
        }
        int i2 = this.b + i;
        if (i2 > charSequence.length()) {
            if (z) {
                return ~i;
            }
            i2 = charSequence.length();
        }
        int i3 = i;
        while (i3 < i2 && vVar.a(charSequence.charAt(i3), this.c)) {
            i3++;
        }
        int l = this.a.l(vVar, charSequence.subSequence(0, i2), i3);
        return (l == i2 || !z) ? l : ~(i + i3);
    }

    public final String toString() {
        String str;
        char c = this.c;
        if (c == ' ') {
            str = ")";
        } else {
            str = ",'" + c + "')";
        }
        return "Pad(" + this.a + "," + this.b + str;
    }
}
