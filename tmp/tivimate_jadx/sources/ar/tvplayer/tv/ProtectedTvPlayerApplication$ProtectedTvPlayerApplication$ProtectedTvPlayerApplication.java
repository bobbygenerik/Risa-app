package ar.tvplayer.tv;

import java.util.UUID;

/* loaded from: classes.dex */
public final class ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication {
    public static final String bghxy;
    public static String el;
    public final int CwC;
    public final String G;
    public final boolean IlbA;
    public final boolean dtwc;
    public final boolean ey;
    public final String fdDs = bghxy;
    public final int fj = 2;
    public final boolean meqIF;
    public final boolean o;
    public final boolean oey;
    public final boolean qsyp;
    public final boolean wn;
    public final boolean xEkI;

    static {
        UUID randomUUID = UUID.randomUUID();
        long mostSignificantBits = randomUUID.getMostSignificantBits();
        bghxy = new UUID((mostSignificantBits & 65535) | (System.currentTimeMillis() << 16), randomUUID.getLeastSignificantBits()).toString();
    }

    /* JADX WARN: Type inference failed for: r2v12, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v15, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v18, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v21, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v24, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v27, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean, byte] */
    /* JADX WARN: Type inference failed for: r2v9, types: [boolean, byte] */
    private ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication(String str, String str2, int i) {
        this.G = str2;
        this.CwC = i;
        this.o = (byte) (i & 1);
        this.IlbA = (byte) ((i >>> 1) & 1);
        this.xEkI = (byte) ((i >>> 2) & 1);
        this.dtwc = (byte) ((i >>> 3) & 1);
        this.oey = (byte) ((i >>> 4) & 1);
        this.wn = (byte) ((i >>> 5) & 1);
        this.ey = (byte) ((i >>> 6) & 1);
        this.meqIF = (byte) ((i >>> 7) & 1);
        this.qsyp = (byte) ((i >>> 8) & 1);
    }

    public static native ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication wgHArt();

    public static void zHlu(String str) {
    }

    public native String cxd(String str);
}
