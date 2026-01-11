package p052;

import java.io.IOException;
import java.util.Arrays;
import p164.InterfaceC2590;

/* renamed from: ʽᴵ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1425 extends AbstractC1429 {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final String[] f5573 = new String[128];

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public String f5574;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final InterfaceC2590 f5575;

    static {
        for (int i = 0; i <= 31; i++) {
            f5573[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f5573;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public C1425(InterfaceC2590 interfaceC2590) {
        int[] iArr = new int[32];
        this.f5590 = iArr;
        this.f5586 = new String[32];
        this.f5588 = new int[32];
        this.f5589 = -1;
        this.f5575 = interfaceC2590;
        this.f5587 = 1;
        iArr[0] = 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4176(p164.InterfaceC2590 r6, java.lang.String r7) {
        /*
            r0 = 34
            r6.writeByte(r0)
            int r1 = r7.length()
            r2 = 0
            r3 = r2
        Lb:
            if (r2 >= r1) goto L36
            char r4 = r7.charAt(r2)
            r5 = 128(0x80, float:1.8E-43)
            if (r4 >= r5) goto L1c
            java.lang.String[] r5 = p052.C1425.f5573
            r4 = r5[r4]
            if (r4 != 0) goto L29
            goto L33
        L1c:
            r5 = 8232(0x2028, float:1.1535E-41)
            if (r4 != r5) goto L23
            java.lang.String r4 = "\\u2028"
            goto L29
        L23:
            r5 = 8233(0x2029, float:1.1537E-41)
            if (r4 != r5) goto L33
            java.lang.String r4 = "\\u2029"
        L29:
            if (r3 >= r2) goto L2e
            r6.mo5734(r3, r2, r7)
        L2e:
            r6.mo5739(r4)
            int r3 = r2 + 1
        L33:
            int r2 = r2 + 1
            goto Lb
        L36:
            if (r3 >= r1) goto L3b
            r6.mo5734(r3, r1, r7)
        L3b:
            r6.writeByte(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1425.m4176(ˊᐧ.ᵎﹶ, java.lang.String):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5575.close();
        int i = this.f5587;
        if (i > 1 || (i == 1 && this.f5590[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f5587 = 0;
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.f5587 == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f5575.flush();
    }

    @Override // p052.AbstractC1429
    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1425 mo4177() {
        if (this.f5591) {
            throw new IllegalStateException("Array cannot be used as a map key in JSON at path " + m4193());
        }
        m4184();
        m4182(1, 2, '[');
        return this;
    }

    @Override // p052.AbstractC1429
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1425 mo4178() {
        if (this.f5591) {
            throw new IllegalStateException("null cannot be used as a map key in JSON at path " + m4193());
        }
        if (this.f5574 != null) {
            this.f5574 = null;
            return this;
        }
        m4179();
        this.f5575.mo5739("null");
        int[] iArr = this.f5588;
        int i = this.f5587 - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m4179() {
        int m4192 = m4192();
        int i = 2;
        if (m4192 != 1) {
            InterfaceC2590 interfaceC2590 = this.f5575;
            if (m4192 == 2) {
                interfaceC2590.writeByte(44);
            } else if (m4192 == 4) {
                interfaceC2590.mo5739(":");
                i = 5;
            } else {
                if (m4192 == 9) {
                    throw new IllegalStateException("Sink from valueSink() was not closed");
                }
                if (m4192 != 6) {
                    if (m4192 != 7) {
                        throw new IllegalStateException("Nesting problem.");
                    }
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                i = 7;
            }
        }
        this.f5590[this.f5587 - 1] = i;
    }

    @Override // p052.AbstractC1429
    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C1425 mo4180(Number number) {
        if (number == null) {
            mo4178();
            return this;
        }
        String obj = number.toString();
        if (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN")) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        if (this.f5591) {
            this.f5591 = false;
            mo4183(obj);
            return this;
        }
        m4184();
        m4179();
        this.f5575.mo5739(obj);
        int[] iArr = this.f5588;
        int i = this.f5587 - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override // p052.AbstractC1429
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C1425 mo4181() {
        this.f5591 = false;
        m4185(3, 5, '}');
        return this;
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final void m4182(int i, int i2, char c) {
        int i3;
        int i4 = this.f5587;
        int i5 = this.f5589;
        if (i4 == i5 && ((i3 = this.f5590[i4 - 1]) == i || i3 == i2)) {
            this.f5589 = ~i5;
            return;
        }
        m4179();
        int i6 = this.f5587;
        int[] iArr = this.f5590;
        if (i6 == iArr.length) {
            if (i6 == 256) {
                throw new RuntimeException("Nesting too deep at " + m4193() + ": circular reference?");
            }
            this.f5590 = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f5586;
            this.f5586 = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f5588;
            this.f5588 = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f5590;
        int i7 = this.f5587;
        this.f5587 = i7 + 1;
        iArr3[i7] = i;
        this.f5588[i7] = 0;
        this.f5575.writeByte(c);
    }

    @Override // p052.AbstractC1429
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final C1425 mo4183(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.f5587 == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        int m4192 = m4192();
        if ((m4192 != 3 && m4192 != 5) || this.f5574 != null || this.f5591) {
            throw new IllegalStateException("Nesting problem.");
        }
        this.f5574 = str;
        this.f5586[this.f5587 - 1] = str;
        return this;
    }

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final void m4184() {
        if (this.f5574 != null) {
            int m4192 = m4192();
            InterfaceC2590 interfaceC2590 = this.f5575;
            if (m4192 == 5) {
                interfaceC2590.writeByte(44);
            } else if (m4192 != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            this.f5590[this.f5587 - 1] = 4;
            m4176(interfaceC2590, this.f5574);
            this.f5574 = null;
        }
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final void m4185(int i, int i2, char c) {
        int m4192 = m4192();
        if (m4192 != i2 && m4192 != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f5574 != null) {
            throw new IllegalStateException("Dangling name: " + this.f5574);
        }
        int i3 = this.f5587;
        int i4 = ~this.f5589;
        if (i3 == i4) {
            this.f5589 = i4;
            return;
        }
        int i5 = i3 - 1;
        this.f5587 = i5;
        this.f5586[i5] = null;
        int[] iArr = this.f5588;
        int i6 = i3 - 2;
        iArr[i6] = iArr[i6] + 1;
        this.f5575.writeByte(c);
    }

    @Override // p052.AbstractC1429
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final C1425 mo4186(String str) {
        if (str == null) {
            mo4178();
            return this;
        }
        if (this.f5591) {
            this.f5591 = false;
            mo4183(str);
            return this;
        }
        m4184();
        m4179();
        m4176(this.f5575, str);
        int[] iArr = this.f5588;
        int i = this.f5587 - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override // p052.AbstractC1429
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C1425 mo4187(long j) {
        if (this.f5591) {
            this.f5591 = false;
            mo4183(Long.toString(j));
            return this;
        }
        m4184();
        m4179();
        this.f5575.mo5739(Long.toString(j));
        int[] iArr = this.f5588;
        int i = this.f5587 - 1;
        iArr[i] = iArr[i] + 1;
        return this;
    }

    @Override // p052.AbstractC1429
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C1425 mo4188() {
        if (this.f5591) {
            throw new IllegalStateException("Object cannot be used as a map key in JSON at path " + m4193());
        }
        m4184();
        m4182(3, 5, '{');
        return this;
    }
}
