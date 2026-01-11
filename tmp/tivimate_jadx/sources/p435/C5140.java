package p435;

import android.support.v4.media.session.AbstractC0001;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p029.C1124;
import ʽˋ.ـˆ;

/* renamed from: ﹶˑ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5140 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Pattern f19412;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5140(int r2, java.lang.String r3) {
        /*
            r1 = this;
            r2 = 1
            switch(r2) {
                case 1: goto L16;
                case 2: goto L13;
                case 3: goto L10;
                case 4: goto Le;
                case 5: goto Lc;
                case 6: goto L9;
                case 7: goto L6;
                default: goto L4;
            }
        L4:
            r2 = 0
            throw r2
        L6:
            r2 = 128(0x80, float:1.8E-43)
            goto L17
        L9:
            r2 = 32
            goto L17
        Lc:
            r2 = 4
            goto L17
        Le:
            r2 = 1
            goto L17
        L10:
            r2 = 16
            goto L17
        L13:
            r2 = 8
            goto L17
        L16:
            r2 = 2
        L17:
            r0 = r2 & 2
            if (r0 == 0) goto L1d
            r2 = r2 | 64
        L1d:
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r3, r2)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p435.C5140.<init>(int, java.lang.String):void");
    }

    public C5140(String str) {
        this(Pattern.compile(str));
    }

    public C5140(Pattern pattern) {
        this.f19412 = pattern;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1124 m10096(C5140 c5140, String str) {
        c5140.getClass();
        if (str.length() >= 0) {
            ـˆ r0 = new ـˆ(c5140, 22, str);
            C5151 c5151 = C5151.f19425;
            return new C1124(r0);
        }
        StringBuilder m16 = AbstractC0001.m16(0, "Start index out of bounds: ", ", input length: ");
        m16.append(str.length());
        throw new IndexOutOfBoundsException(m16.toString());
    }

    public final String toString() {
        return this.f19412.toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5149 m10097(int i, String str) {
        Matcher region = this.f19412.matcher(str).useAnchoringBounds(false).useTransparentBounds(true).region(i, str.length());
        if (region.lookingAt()) {
            return new C5149(region, str);
        }
        return null;
    }
}
