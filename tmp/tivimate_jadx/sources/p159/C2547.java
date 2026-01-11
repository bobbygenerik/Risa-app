package p159;

import java.util.Locale;
import p034.InterfaceC1195;
import p152.AbstractC2444;
import p417.InterfaceC4932;
import p435.AbstractC5143;

/* renamed from: ˊˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2547 implements InterfaceC4932 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC1195 f9654;

    public C2547(InterfaceC1195 interfaceC1195) {
        this.f9654 = interfaceC1195;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f9654.close();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [ˊˎ.ˑﹳ, ˊˎ.ᵎﹶ] */
    @Override // p417.InterfaceC4932
    /* renamed from: ʽ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC2545 mo3415(String str) {
        int i;
        String upperCase = AbstractC5143.m10114(str).toString().toUpperCase(Locale.ROOT);
        int length = upperCase.length() - 2;
        int i2 = -1;
        if (length >= 0) {
            int i3 = 0;
            loop0: while (i3 < length) {
                char charAt = upperCase.charAt(i3);
                if (AbstractC2444.m5563(charAt, 32) > 0) {
                    if (charAt != '-') {
                        if (charAt == '/') {
                            int i4 = i3 + 1;
                            if (upperCase.charAt(i4) != '*') {
                            }
                            do {
                                i4 = AbstractC5143.m10118(upperCase, '*', i4 + 1, 4);
                                if (i4 >= 0) {
                                    i = i4 + 1;
                                    if (i >= length) {
                                        break;
                                    }
                                } else {
                                    break loop0;
                                }
                            } while (upperCase.charAt(i) != '/');
                            i3 = i4 + 2;
                        }
                        i2 = i3;
                        break;
                    }
                    if (upperCase.charAt(i3 + 1) == '-') {
                        i3 = AbstractC5143.m10118(upperCase, '\n', i3 + 2, 4);
                        if (i3 < 0) {
                            break;
                        }
                    } else {
                        i2 = i3;
                        break;
                    }
                }
                i3++;
            }
        }
        String substring = (i2 < 0 || i2 > upperCase.length()) ? null : upperCase.substring(i2, Math.min(i2 + 3, upperCase.length()));
        InterfaceC1195 interfaceC1195 = this.f9654;
        if (substring == null) {
            return new C2548(interfaceC1195, str);
        }
        int hashCode = substring.hashCode();
        if (hashCode == 79487 ? !substring.equals("PRA") : hashCode == 81978 ? !substring.equals("SEL") : !(hashCode == 85954 && substring.equals("WIT"))) {
            return new C2548(interfaceC1195, str);
        }
        ?? abstractC2545 = new AbstractC2545(interfaceC1195, str);
        abstractC2545.f9644 = new int[0];
        abstractC2545.f9648 = new long[0];
        abstractC2545.f9646 = new double[0];
        abstractC2545.f9647 = new String[0];
        abstractC2545.f9645 = new byte[0];
        return abstractC2545;
    }
}
