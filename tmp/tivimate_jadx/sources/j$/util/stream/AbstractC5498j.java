package j$.util.stream;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

/* renamed from: j$.util.stream.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5498j {
    public static final /* synthetic */ int a = 0;

    static {
        EnumC5488h enumC5488h = EnumC5488h.CONCURRENT;
        EnumC5488h enumC5488h2 = EnumC5488h.UNORDERED;
        EnumC5488h enumC5488h3 = EnumC5488h.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(enumC5488h, enumC5488h2, enumC5488h3));
        Collections.unmodifiableSet(EnumSet.of(enumC5488h, enumC5488h2));
        Collections.unmodifiableSet(EnumSet.of(enumC5488h3));
        Collections.unmodifiableSet(EnumSet.of(enumC5488h2, enumC5488h3));
        Set set = Collections.EMPTY_SET;
        Collections.unmodifiableSet(EnumSet.of(enumC5488h2));
    }

    public static void a(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
    }
}
