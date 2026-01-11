package j$.time.format;

/* loaded from: classes2.dex */
public final class h implements InterfaceC5432e {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ h(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public static void a(StringBuilder sb, int i) {
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    public static int b(CharSequence charSequence, int i) {
        char charAt = charSequence.charAt(i);
        if (charAt < '0' || charAt > '9') {
            return -1;
        }
        return charAt - '0';
    }

    @Override // j$.time.format.InterfaceC5432e
    public final boolean k(y yVar, StringBuilder sb) {
        switch (this.a) {
            case 0:
                Long a = yVar.a(j$.time.temporal.a.OFFSET_SECONDS);
                if (a == null) {
                    return false;
                }
                sb.append("GMT");
                int O = j$.com.android.tools.r8.a.O(a.longValue());
                if (O != 0) {
                    int abs = Math.abs((O / 3600) % 100);
                    int abs2 = Math.abs((O / 60) % 60);
                    int abs3 = Math.abs(O % 60);
                    sb.append(O < 0 ? "-" : "+");
                    if (((TextStyle) this.b) == TextStyle.FULL) {
                        a(sb, abs);
                        sb.append(':');
                        a(sb, abs2);
                        if (abs3 != 0) {
                            sb.append(':');
                            a(sb, abs3);
                        }
                    } else {
                        if (abs >= 10) {
                            sb.append((char) ((abs / 10) + 48));
                        }
                        sb.append((char) ((abs % 10) + 48));
                        if (abs2 != 0 || abs3 != 0) {
                            sb.append(':');
                            a(sb, abs2);
                            if (abs3 != 0) {
                                sb.append(':');
                                a(sb, abs3);
                            }
                        }
                    }
                }
                return true;
            default:
                sb.append((String) this.b);
                return true;
        }
    }

    @Override // j$.time.format.InterfaceC5432e
    public final int l(v vVar, CharSequence charSequence, int i) {
        int i2;
        int b;
        int i3;
        int i4;
        int i5;
        int i6;
        switch (this.a) {
            case 0:
                int length = charSequence.length();
                if (vVar.g(charSequence, i, "GMT", 0, 3)) {
                    int i7 = i + 3;
                    if (i7 == length) {
                        return vVar.f(j$.time.temporal.a.OFFSET_SECONDS, 0L, i, i7);
                    }
                    char charAt = charSequence.charAt(i7);
                    if (charAt == '+') {
                        i2 = 1;
                    } else {
                        if (charAt != '-') {
                            return vVar.f(j$.time.temporal.a.OFFSET_SECONDS, 0L, i, i7);
                        }
                        i2 = -1;
                    }
                    int i8 = i + 4;
                    int i9 = 0;
                    if (((TextStyle) this.b) == TextStyle.FULL) {
                        int i10 = i + 5;
                        int b2 = b(charSequence, i8);
                        int i11 = i + 6;
                        int b3 = b(charSequence, i10);
                        if (b2 >= 0 && b3 >= 0) {
                            int i12 = i + 7;
                            if (charSequence.charAt(i11) == ':') {
                                b = (b2 * 10) + b3;
                                int b4 = b(charSequence, i12);
                                i6 = i + 9;
                                int b5 = b(charSequence, i + 8);
                                if (b4 >= 0 && b5 >= 0) {
                                    i5 = (b4 * 10) + b5;
                                    int i13 = i + 11;
                                    if (i13 < length && charSequence.charAt(i6) == ':') {
                                        int b6 = b(charSequence, i + 10);
                                        int b7 = b(charSequence, i13);
                                        if (b6 >= 0 && b7 >= 0) {
                                            i9 = (b6 * 10) + b7;
                                            i6 = i + 12;
                                        }
                                    }
                                    i3 = i9;
                                    i4 = i6;
                                }
                            }
                        }
                    } else {
                        int i14 = i + 5;
                        b = b(charSequence, i8);
                        if (b >= 0) {
                            if (i14 < length) {
                                int b8 = b(charSequence, i14);
                                if (b8 >= 0) {
                                    b = (b * 10) + b8;
                                    i14 = i + 6;
                                }
                                int i15 = i14 + 2;
                                if (i15 < length && charSequence.charAt(i14) == ':' && i15 < length && charSequence.charAt(i14) == ':') {
                                    int b9 = b(charSequence, i14 + 1);
                                    int b10 = b(charSequence, i15);
                                    if (b9 >= 0 && b10 >= 0) {
                                        i5 = (b9 * 10) + b10;
                                        int i16 = i14 + 3;
                                        int i17 = i14 + 5;
                                        if (i17 < length && charSequence.charAt(i16) == ':') {
                                            int b11 = b(charSequence, i14 + 4);
                                            int b12 = b(charSequence, i17);
                                            if (b11 >= 0 && b12 >= 0) {
                                                i9 = (b11 * 10) + b12;
                                                i6 = i14 + 6;
                                                i3 = i9;
                                                i4 = i6;
                                            }
                                        }
                                        i4 = i16;
                                        i3 = 0;
                                    }
                                }
                            }
                            i3 = 0;
                            i4 = i14;
                            return vVar.f(j$.time.temporal.a.OFFSET_SECONDS, ((i9 * 60) + (b * 3600) + i3) * i2, i, i4);
                        }
                    }
                    i9 = i5;
                    return vVar.f(j$.time.temporal.a.OFFSET_SECONDS, ((i9 * 60) + (b * 3600) + i3) * i2, i, i4);
                }
                return ~i;
            default:
                String str = (String) this.b;
                if (i > charSequence.length() || i < 0) {
                    throw new IndexOutOfBoundsException();
                }
                return !vVar.g(charSequence, i, str, 0, str.length()) ? ~i : str.length() + i;
        }
    }

    public final String toString() {
        switch (this.a) {
            case 0:
                return "LocalizedOffset(" + ((TextStyle) this.b) + ")";
            default:
                return "'" + ((String) this.b).replace("'", "''") + "'";
        }
    }
}
