package p298;

/* renamed from: ᐧʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3693 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String[] f14440;

    static {
        f14440 = r0;
        String[] strArr = {"ꭻ婡蛠䙱㓦硠蚼䙹㓱ꭶ婡蛠䙱㓦硠ꭻ婡蛠䙱㓦硽蛲䙹㓱ꭻ婤蛲䙧㓧硤蛼䙦㓰ꭶ婸蛼䙳㓽硽ꭻ婵蛦䙠㓼硗蛲䙠㓵ꭑ婷蛼䙡㓸硷蚳䙺㓻硧蚳䙧㓱硡蛺䙵㓸硺蛩䙱㒴硼蛱䙾㓱硰蛧䘴㓠硼蚳䙞㓇硜蛝ꭶ婡蛠䙱㓦硠ꭳꭶ婱蛾䙵㓽硿ꭧ婦蛶䙥㓡硶蛠䙠㓄硲蛠䙧㓣硼蛡䙰㓆硶蛠䙱㓠꭪婌蚾䙄㓵硡蛠䙱㒹硁蛶䙢㓻硰蛲䙶㓸硶蚾䙇㓱硠蛠䙽㓻硽ꭲ娥ꭣ婌蚾䙄㓵硡蛠䙱㒹硇蛾䘹㓀硼蛸䙱㓺ꭷ婏蛴䙉㒮ꭤ婌蚾䙄㓵硡蛠䙱㒹硔蚾䙗㓵硣蛧䙷㓼硲蚾䙀㓻硸蛶䙺ꭷ婏蛻䙉㒮ꭤ婌蚾䙄㓵硡蛠䙱㒹硛蚾䙗㓵硣蛧䙷㓼硲蚾䙀㓻硸蛶䙺ꭻ婡蛠䙱㓦硽蛲䙹㓱ꭻ婤蛲䙧㓧硤蛼䙦㓰ꭲ娤ꭲ娤ꭱ娦蚪ꭱ娠蚪ꭱ娢蚠ꭱ娧蚤ꭱ娥蚦ꭱ娣蚫ꭱ娠蚡ꭱ娭蚤ꭱ娠蚢ꭱ娧蚤ꭱ娦蚣ꭱ娣蚠ꭱ娣蚫ꭱ娡蚢ꭱ娭蚣ꭱ娣蚧ꭱ娦蚡ꭱ娣蚠ꭱ娡蚡ꭱ娥蚧ꭱ娭蚦ꭱ娧蚦ꭱ娡蚡ꭱ娣蚥ꭱ娥蚥ꭱ娥蚧ꭱ娭蚫ꭱ娠蚧ꭱ娧蚣ꭱ娥蚣ꭱ娣蚠ꭱ娠蚣ꭱ娭蚪ꭱ娣蚡ꭱ娠蚠ꭱ娦蚣ꭱ娠蚡ꭱ娢蚧ꭱ娧蚤ꭱ娭蚢ꭱ娧蚠ꭳ꭪婌蚾䙄㓵硡蛠䙱㒹硁蛶䙢㓻硰蛲䙶㓸硶蚾䙇㓱硠蛠䙽㓻硽ꭣ婌蚾䙄㓵硡蛠䙱㒹硇蛾䘹㓀硼蛸䙱㓺ꭤ婌蚾䙄㓵硡蛠䙱㒹硔蚾䙗㓵硣蛧䙷㓼硲蚾䙀㓻硸蛶䙺ꭤ婌蚾䙄㓵硡蛠䙱㒹硛蚾䙗㓵硣蛧䙷㓼硲蚾䙀㓻硸蛶䙺ꭲ娥"};
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static long m7730(long j) {
        short s = (short) (j & 65535);
        short s2 = (short) ((j >>> 16) & 65535);
        short s3 = (short) (s + s2);
        short s4 = (short) (s2 ^ s);
        return ((((short) ((s4 >>> 22) | (s4 << 10))) | (((short) (((short) ((s3 >>> 23) | (s3 << 9))) + s)) << 16)) << 16) | ((short) (((short) (((short) ((s << 13) | (s >>> 19))) ^ s4)) ^ (s4 << 5)));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m7731(long j) {
        long j2 = 4294967295L & j;
        long j3 = (j2 ^ (j2 >>> 33)) * 7109453100751455733L;
        long m7730 = m7730(((j3 ^ (j3 >>> 28)) * (-3808689974395783757L)) >>> 32);
        long j4 = (m7730 >>> 32) & 65535;
        long m77302 = m7730(m7730);
        int i = (int) (((j >>> 32) ^ j4) ^ ((m77302 >>> 16) & (-65536)));
        long m77303 = m7730(m77302);
        String[] strArr = f14440;
        long charAt = m77303 ^ (strArr[i / 8191].charAt(i % 8191) << 32);
        int i2 = (int) ((charAt >>> 32) & 65535);
        char[] cArr = new char[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i + i3 + 1;
            charAt = m7730(charAt) ^ (strArr[i4 / 8191].charAt(i4 % 8191) << 32);
            cArr[i3] = (char) ((charAt >>> 32) & 65535);
        }
        return new String(cArr);
    }
}
