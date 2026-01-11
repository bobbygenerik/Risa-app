package p119;

import android.text.SpannableStringBuilder;
import ar.tvplayer.core.domain.ʽﹳ;

/* renamed from: ˈʿ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2004 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String f7875;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2004 f7876;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2004 f7877;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String f7878;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f7879;

    static {
        ʽﹳ r0 = AbstractC2006.f7885;
        f7878 = Character.toString((char) 8206);
        f7875 = Character.toString((char) 8207);
        f7876 = new C2004(false);
        f7877 = new C2004(true);
    }

    public C2004(boolean z) {
        ʽﹳ r0 = AbstractC2006.f7888;
        this.f7879 = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0034, code lost:
    
        return 1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x0020. Please report as an issue. */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m4980(java.lang.CharSequence r6) {
        /*
            ˈʿ.ﹳٴ r0 = new ˈʿ.ﹳٴ
            r0.<init>(r6)
            int r6 = r0.f7883
            r0.f7881 = r6
            r6 = 0
            r1 = r6
        Lb:
            r2 = r1
        Lc:
            int r3 = r0.f7881
            if (r3 <= 0) goto L3f
            byte r3 = r0.m4983()
            if (r3 == 0) goto L38
            r4 = 1
            if (r3 == r4) goto L32
            r5 = 2
            if (r3 == r5) goto L32
            r5 = 9
            if (r3 == r5) goto Lc
            switch(r3) {
                case 14: goto L2f;
                case 15: goto L2f;
                case 16: goto L29;
                case 17: goto L29;
                case 18: goto L26;
                default: goto L23;
            }
        L23:
            if (r2 != 0) goto Lc
            goto L3e
        L26:
            int r1 = r1 + 1
            goto Lc
        L29:
            if (r2 != r1) goto L2c
            goto L34
        L2c:
            int r1 = r1 + (-1)
            goto Lc
        L2f:
            if (r2 != r1) goto L2c
            goto L3a
        L32:
            if (r1 != 0) goto L35
        L34:
            return r4
        L35:
            if (r2 != 0) goto Lc
            goto L3e
        L38:
            if (r1 != 0) goto L3c
        L3a:
            r6 = -1
            return r6
        L3c:
            if (r2 != 0) goto Lc
        L3e:
            goto Lb
        L3f:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p119.C2004.m4980(java.lang.CharSequence):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006e, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0071, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0073, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0076, code lost:
    
        if (r0.f7881 <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x007c, code lost:
    
        switch(r0.m4983()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0080, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0083, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0086, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0089, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x008c, code lost:
    
        return 0;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m4981(java.lang.CharSequence r9) {
        /*
            ˈʿ.ﹳٴ r0 = new ˈʿ.ﹳٴ
            r0.<init>(r9)
            r9 = 0
            r0.f7881 = r9
            r1 = r9
            r2 = r1
            r3 = r2
        Lb:
            int r4 = r0.f7881
            int r5 = r0.f7883
            r6 = -1
            r7 = 1
            if (r4 >= r5) goto L6e
            if (r1 != 0) goto L6e
            java.lang.CharSequence r5 = r0.f7884
            char r4 = r5.charAt(r4)
            r0.f7882 = r4
            boolean r4 = java.lang.Character.isHighSurrogate(r4)
            if (r4 == 0) goto L37
            int r4 = r0.f7881
            int r4 = java.lang.Character.codePointAt(r5, r4)
            int r5 = r0.f7881
            int r8 = java.lang.Character.charCount(r4)
            int r8 = r8 + r5
            r0.f7881 = r8
            byte r4 = java.lang.Character.getDirectionality(r4)
            goto L4b
        L37:
            int r4 = r0.f7881
            int r4 = r4 + r7
            r0.f7881 = r4
            char r4 = r0.f7882
            r5 = 1792(0x700, float:2.511E-42)
            if (r4 >= r5) goto L47
            byte[] r5 = p119.C2005.f7880
            r4 = r5[r4]
            goto L4b
        L47:
            byte r4 = java.lang.Character.getDirectionality(r4)
        L4b:
            if (r4 == 0) goto L69
            if (r4 == r7) goto L66
            r5 = 2
            if (r4 == r5) goto L66
            r5 = 9
            if (r4 == r5) goto Lb
            switch(r4) {
                case 14: goto L62;
                case 15: goto L62;
                case 16: goto L5e;
                case 17: goto L5e;
                case 18: goto L5a;
                default: goto L59;
            }
        L59:
            goto L6c
        L5a:
            int r3 = r3 + (-1)
            r2 = r9
            goto Lb
        L5e:
            int r3 = r3 + 1
            r2 = r7
            goto Lb
        L62:
            int r3 = r3 + 1
            r2 = r6
            goto Lb
        L66:
            if (r3 != 0) goto L6c
            goto L85
        L69:
            if (r3 != 0) goto L6c
            goto L8b
        L6c:
            r1 = r3
            goto Lb
        L6e:
            if (r1 != 0) goto L71
            goto L8c
        L71:
            if (r2 == 0) goto L74
            return r2
        L74:
            int r2 = r0.f7881
            if (r2 <= 0) goto L8c
            byte r2 = r0.m4983()
            switch(r2) {
                case 14: goto L89;
                case 15: goto L89;
                case 16: goto L83;
                case 17: goto L83;
                case 18: goto L80;
                default: goto L7f;
            }
        L7f:
            goto L74
        L80:
            int r3 = r3 + 1
            goto L74
        L83:
            if (r1 != r3) goto L86
        L85:
            return r7
        L86:
            int r3 = r3 + (-1)
            goto L74
        L89:
            if (r1 != r3) goto L86
        L8b:
            return r6
        L8c:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p119.C2004.m4981(java.lang.CharSequence):int");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final SpannableStringBuilder m4982(CharSequence charSequence) {
        ʽﹳ r0 = AbstractC2006.f7885;
        if (charSequence == null) {
            return null;
        }
        boolean z = r0.ᵎﹶ(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean z2 = (z ? AbstractC2006.f7887 : AbstractC2006.f7888).ᵎﹶ(charSequence, charSequence.length());
        String str = "";
        String str2 = f7875;
        String str3 = f7878;
        boolean z3 = this.f7879;
        spannableStringBuilder.append((CharSequence) ((z3 || !(z2 || m4981(charSequence) == 1)) ? (!z3 || (z2 && m4981(charSequence) != -1)) ? "" : str2 : str3));
        if (z != z3) {
            spannableStringBuilder.append(z ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean z4 = (z ? AbstractC2006.f7887 : AbstractC2006.f7888).ᵎﹶ(charSequence, charSequence.length());
        if (!z3 && (z4 || m4980(charSequence) == 1)) {
            str = str3;
        } else if (z3 && (!z4 || m4980(charSequence) == -1)) {
            str = str2;
        }
        spannableStringBuilder.append((CharSequence) str);
        return spannableStringBuilder;
    }
}
