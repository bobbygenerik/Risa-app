package p149;

import com.google.android.gms.internal.measurement.ˏʻ;

/* renamed from: ˉﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2415 extends ˏʻ {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final char[] f9340 = {'+'};

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final char[] f9341 = "0123456789ABCDEF".toCharArray();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f9342;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean[] f9343;

    public C2415(String str, boolean z) {
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        String concat = str.concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
        if (z && concat.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        this.f9342 = z;
        char[] charArray = concat.toCharArray();
        int i = -1;
        for (char c : charArray) {
            i = Math.max((int) c, i);
        }
        boolean[] zArr = new boolean[i + 1];
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        this.f9343 = zArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01cb  */
    /* renamed from: ʿᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m5518(java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p149.C2415.m5518(java.lang.String):java.lang.String");
    }
}
