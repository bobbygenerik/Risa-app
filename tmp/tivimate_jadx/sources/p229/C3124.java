package p229;

import java.io.Writer;

/* renamed from: ˑʼ.ᵎʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3124 extends Writer {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final StringBuilder f11940 = new StringBuilder(128);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f11939 = "FragmentManager";

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m6813();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        m6813();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m6813();
            } else {
                this.f11940.append(c);
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6813() {
        StringBuilder sb = this.f11940;
        if (sb.length() > 0) {
            String str = this.f11939;
            sb.toString();
            sb.delete(0, sb.length());
        }
    }
}
