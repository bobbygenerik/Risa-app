package p249;

import j$.util.DesugarCollections;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p012.C0881;
import p055.C1476;
import p055.InterfaceC1465;
import p112.C1962;
import p305.C3724;
import p305.C3732;
import ˈˋ.ʾˊ;
import ـˎ.ˈ;
import ٴﾞ.ˆʾ;

/* renamed from: יʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3300 extends ʾˊ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f12699 = new C3732();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0881 f12700 = new C0881(4);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C3724 f12701;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C1476 m7109(C1962 c1962, ByteBuffer byteBuffer) {
        Object obj;
        long j;
        C3724 c3724 = this.f12701;
        if (c3724 == null || c1962.f7805 != c3724.m7828()) {
            C3724 c37242 = new C3724(c1962.f18671);
            this.f12701 = c37242;
            c37242.m7832(c1962.f18671 - c1962.f7805);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        C3732 c3732 = this.f12699;
        c3732.m7897(limit, array);
        C0881 c0881 = this.f12700;
        c0881.m3101(limit, array);
        c0881.m3095(39);
        long m3097 = (c0881.m3097(1) << 32) | c0881.m3097(32);
        c0881.m3095(20);
        int m30972 = c0881.m3097(12);
        int m30973 = c0881.m3097(8);
        c3732.m7900(14);
        if (m30973 == 0) {
            obj = new Object();
        } else if (m30973 == 255) {
            long m7880 = c3732.m7880();
            int i = m30972 - 4;
            c3732.m7875(new byte[i], 0, i);
            obj = new C3303(0, m7880, m3097);
        } else if (m30973 == 4) {
            int m7874 = c3732.m7874();
            ArrayList arrayList = new ArrayList(m7874);
            for (int i2 = 0; i2 < m7874; i2++) {
                c3732.m7880();
                boolean z = (c3732.m7874() & 128) != 0;
                ArrayList arrayList2 = new ArrayList();
                if (!z) {
                    int m78742 = c3732.m7874();
                    boolean z2 = (m78742 & 64) != 0;
                    boolean z3 = (m78742 & 32) != 0;
                    if (z2) {
                        c3732.m7880();
                    }
                    if (!z2) {
                        int m78743 = c3732.m7874();
                        ArrayList arrayList3 = new ArrayList(m78743);
                        for (int i3 = 0; i3 < m78743; i3++) {
                            c3732.m7874();
                            c3732.m7880();
                            arrayList3.add(new ˆʾ(22));
                        }
                        arrayList2 = arrayList3;
                    }
                    if (z3) {
                        c3732.m7874();
                        c3732.m7880();
                    }
                    c3732.m7895();
                    c3732.m7874();
                    c3732.m7874();
                }
                Object obj2 = new Object();
                DesugarCollections.unmodifiableList(arrayList2);
                arrayList.add(obj2);
            }
            obj = new Object();
            DesugarCollections.unmodifiableList(arrayList);
        } else if (m30973 == 5) {
            C3724 c37243 = this.f12701;
            c3732.m7880();
            boolean z4 = (c3732.m7874() & 128) != 0;
            List list = Collections.EMPTY_LIST;
            if (z4) {
                j = -9223372036854775807L;
            } else {
                int m78744 = c3732.m7874();
                boolean z5 = (m78744 & 64) != 0;
                boolean z6 = (m78744 & 32) != 0;
                boolean z7 = (m78744 & 16) != 0;
                long m7110 = (!z5 || z7) ? -9223372036854775807L : C3303.m7110(m3097, c3732);
                if (!z5) {
                    int m78745 = c3732.m7874();
                    ArrayList arrayList4 = new ArrayList(m78745);
                    for (int i4 = 0; i4 < m78745; i4++) {
                        c3732.m7874();
                        c37243.m7831(!z7 ? C3303.m7110(m3097, c3732) : -9223372036854775807L);
                        arrayList4.add(new ˈ(22));
                    }
                    list = arrayList4;
                }
                if (z6) {
                    c3732.m7874();
                    c3732.m7880();
                }
                c3732.m7895();
                c3732.m7874();
                c3732.m7874();
                j = m7110;
            }
            obj = new C3303(j, c37243.m7831(j), list);
        } else if (m30973 != 6) {
            obj = null;
        } else {
            C3724 c37244 = this.f12701;
            long m71102 = C3303.m7110(m3097, c3732);
            obj = new C3303(2, m71102, c37244.m7831(m71102));
        }
        return obj == null ? new C1476(new InterfaceC1465[0]) : new C1476(obj);
    }
}
